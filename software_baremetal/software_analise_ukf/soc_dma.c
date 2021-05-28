



#define SWITCH_ON_CACHE // cache +acp
//#define DMA_TRANSFER_SIZE  256
//#define WRITE_OPERATION


#ifndef soc_cv_av
	#define soc_cv_av
#endif

#include "hwlib.h"
#include <stdbool.h>
#include "socal/hps.h"
#include "socal/socal.h"
#include "socal/alt_acpidmap.h"
#include "alt_address_space.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <inttypes.h>
#include <math.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

#include "arm_cache_modified.h" //cache config functions
#include "fpga_dmac_api.h"
#include "pmu.h" //performance monitor ARM

// includes para o UKF para 3 estados
/*
#include "ukf/rt_nonfinite.h"
#include "ukf/Cholesky.h"
#include "ukf/example.h"
#include "ukf/measurement_eq.h"
#include "ukf/nonlinear_state_eq.h"
#include "ukf/ukf.h"
#include "ukf/sigmas.h"
#include "ukf/ut.h"
#include "ukf/Cholesky_terminate.h"
#include "ukf/Cholesky_emxAPI.h"
#include "ukf/Cholesky_initialize.h"
*/
// includes para o UKF para 32 estados


#include "ukf32/rtwtypes.h"
#include "ukf32/Cholesky_types.h"
#include "ukf32/rt_nonfinite.h"
#include "ukf32/Cholesky.h"
#include "ukf32/example.h"
#include "ukf32/measurement_eq.h"
#include "ukf32/nonlinear_state_eq.h"
#include "ukf32/sigmas.h"
#include "ukf32/ukf.h"
#include "ukf32/ut.h"

#include "ukf32/Cholesky_terminate.h"
#include "ukf32/Cholesky_emxAPI.h"
#include "ukf32/Cholesky_initialize.h"




//The address of FPGA-DMAC is the HPS-FPGA bridge + Qsys address assigned to it
#define FPGA_DMAC_QSYS_ADDRESS 0x10000
#define FPGA_DMAC_ADDRESS ((uint8_t*)0xC0000000+FPGA_DMAC_QSYS_ADDRESS)
//Address of the On-Chip RAM in the FPGA, as seen by processor
#define FPGA_OCR_QSYS_ADDRESS_UP 0x0
#define FPGA_OCR_ADDRESS_UP ((uint8_t*)0xC0000000+FPGA_OCR_QSYS_ADDRESS_UP)
//Address of the On-Chip RAM in the FPGA, as seen by DMAC
#define FPGA_OCR_ADDRESS_DMAC 0x0

//DMAC transfer addresses (from processor they are virtual addresses)
#ifdef WRITE_OPERATION
  #define DMA_TRANSFER_SRC_DMAC   ((uint8_t*) FPGA_OCR_ADDRESS_DMAC)
  #define DMA_TRANSFER_SRC_UP     ((uint8_t*) FPGA_OCR_ADDRESS_UP)
  #ifdef  SWITCH_ON_CACHE
    //add 0x80000000 to access through ACP
    #define DMA_TRANSFER_DST_DMAC   ((uint8_t*) &Buffer[0] + 0x80000000)
  #else
    #define DMA_TRANSFER_DST_DMAC   ((uint8_t*) Buffer)
  #endif
  #define DMA_TRANSFER_DST_UP     ((uint8_t*) Buffer)
#else
  #ifdef  SWITCH_ON_CACHE
    //add 0x80000000 to access through ACP
    #define DMA_TRANSFER_SRC_DMAC   ((uint8_t*) &Buffer[0] + 0x80000000)
  #else
    #define DMA_TRANSFER_SRC_DMAC   ((uint8_t*) Buffer)
  #endif
  #define DMA_TRANSFER_SRC_UP     ((uint8_t*) Buffer)
  #define DMA_TRANSFER_DST_DMAC   ((uint8_t*) FPGA_OCR_ADDRESS_DMAC)
  #define DMA_TRANSFER_DST_UP     ((uint8_t*) FPGA_OCR_ADDRESS_UP)
#endif

//GPIO to change AXI AXI_SIGNALS
#define GPIO_QSYS_ADDRESS 0x20000
#define GPIO_ADDRESS ((uint8_t*)0xC0000000 + GPIO_QSYS_ADDRESS)

/************MACRO TO SELECT THE CACHE CONFIGURATION WHEN CACHE IS ON*********/
//With this define select the level of cache optimization
/*Options for cache config (each config is added to the all previous ones):
0 no cache
(basic config and optimizations)
1 enable MMU
2 do 1 and initialize L2C
3 do 2 and enable SCU
4 do 3 and enable L1_I
5 do 4 and enable branch prediction
6 do 5 and enable L1_D
7 do 6 and enable L1 D side prefetch
8 do 7 and enable L2C
(special L2C-310 controller + Cortex A9 optimizations)
9 do 8 and enable L2 prefetch hint
10 do 9 and enable write full line zeros
11 do 10 and enable speculative linefills of L2 cache
12 do 11 and enable early BRESP
13 do 12 and store_buffer_limitation
*/
#define UKF_QSYS_ADDRESS 0x0
#define UKF_DONE_ADDRESS ((uint8_t*)FPGA_OCR_ADDRESS_UP+0x01FF)
#define CACHE_CONFIGURATION 9

/********************extra fuction declarations*******************************/
void cache_configuration(int cache_config);
void print_src_dst(uint8_t* src, uint8_t* dst, int size);

uint32_t ukf_transfer_done(void* addr);
uint32_t ukf_read_reg(void* addr);

/* UKF */
// static void argInit_1x7_real_T(double result[7]);
// static void argInit_3x1_real_T(double result[3]);
// static void argInit_3x3_real_T(double result[9]);
// static void argInit_3x7_real_T(double result[21]);
// static void argInit_d3xd3_real_T(double result_data[], int result_size[2]);
// static double argInit_real_T(void);
// static void main_Cholesky(void);
//
// static void main_measurement_eq(void);
// static void main_nonlinear_state_eq(void);
// static void main_sigmas(void);
// static void main_ukf(void);
// static void main_ut(void);

static void main_example(void);

int DMA_TRANSFER_SIZE;

/***************************Program entrypoint********************************/
int main(void){

	printf("//////////////////////////////////////////////////////\n\r");
	printf("///////////////////     PROJETO TCC    ///////////////\n\r");
	printf("/////////////// Anderson Coimbra Mendes //////////////\n\r");
	printf("//////////////////////////////////////////////////////\n\n\n\r");
	printf("Teste do custo computacional do UKF \n\r");
	printf("Inicialização do Chip \n\r");
    ALT_STATUS_CODE status = ALT_E_SUCCESS;



    //--Cache configuration--//
    #ifdef SWITCH_ON_CACHE
        cache_configuration(CACHE_CONFIGURATION);
    #endif

	//--ACP configuration--//
	const uint32_t ARUSER = 0b11111; //coherent cacheable reads
	const uint32_t AWUSER = 0b11111; //coherent cacheable writes
	if(status == ALT_E_SUCCESS){
		//Set output ID3 for dynamic reads and ID4 for dynamic writes
		status = alt_acp_id_map_dynamic_read_set(ALT_ACP_ID_OUT_DYNAM_ID_3);
		status = alt_acp_id_map_dynamic_write_set(ALT_ACP_ID_OUT_DYNAM_ID_4);
		//Configure the page and user write sideband signal options that are applied
		//to all write transactions that have their input IDs dynamically mapped.
		status = alt_acp_id_map_dynamic_read_options_set(ALT_ACP_ID_MAP_PAGE_0, ARUSER);
		status = alt_acp_id_map_dynamic_write_options_set(ALT_ACP_ID_MAP_PAGE_0, AWUSER);
	}

	if(status == ALT_E_SUCCESS) printf("ACP ID Mapper - OK - Teste \n\r");
	else{
		printf("ACP ID Mapper fail\n\r");
		return 1;
	}

	printf(" DMAC init........");
  //--DMAC initialization--//
  fpga_dma_init(FPGA_DMAC_ADDRESS,
                FPGA_DMA_QUADWORD_TRANSFERS | //128-bit bus
                FPGA_DMA_END_WHEN_LENGHT_ZERO);

	printf(" DMAC Init endded \n\r");

	printf(" Performance Monitor Init \n\r");

	pmu_init_ns(800, 1); //Initialize PMU cycle counter, 800MHz source, frequency divider 1
	pmu_counter_enable();//Enable cycle counter inside PMU (it starts counting)
	float pmu_res = pmu_getres_ns();
	printf("Performance Monitor Unit characteristics\n\r");
	printf("Performance Monitor Unit cycle counter resolution is %f ns\n\r", pmu_res );

	//Timing 60 seconds with PMU
//	unsigned long long pmu_counter_ns;
/*
printf("//////////////////////////////////////////////////////\n\r");
printf("TESTE 1 UKF com 3 estados\n\r");
printf("//////////////////////////////////////////////////////\n\r");

	printf("Inicialização algoritmo\n\r");
	Cholesky_initialize();
	printf("Executando main_example\n\r");
  main_example();*/

printf("//////////////////////////////////////////////////////\n\r");
printf("TESTE 2 UKF com 32 estados\n\r");
printf("//////////////////////////////////////////////////////\n\r");

		printf("Inicialização algoritmo\n\r");
		Cholesky_initialize();
		printf("Executando main_example\n\r");
	  main_example();

  return 0;
}


// Cache configuration using Legup functions
void cache_configuration(int cache_config)
{
	if (cache_config<=0){ //0 no cache
		printf("\n\rCACHE CONFIG:0 No cache\n\r");
	}else if (cache_config<=1){ //1 enable MMU
		printf("\n\rCACHE CONFIG:1 Enable MMU\n\r");
		enable_MMU();
	}else if (cache_config<=2){//2 do 1 and initialize L2C
		printf("\n\rCACHE CONFIG:2 Enable MMU and init L2C\n\r");
		enable_MMU();
		initialize_L2C();
	}else if (cache_config<=3){ //3 do 2 and enable SCU
		printf("\n\rCACHE CONFIG:3 Enable MMU and SCU and init L2C\n\r");
		enable_MMU();
		initialize_L2C();
		enable_SCU();
	}else if (cache_config<=4){ //4 do 3 and enable L1_I
		printf("\n\rCACHE CONFIG:4 L1_I\n\r");
		enable_MMU();
		initialize_L2C();
		enable_SCU();
		enable_L1_I();
	}else if (cache_config<=5){ //5 do 4 and enable branch prediction
		printf("\n\rCACHE CONFIG:5 L1_I and branch prediction\n\r");
		enable_MMU();
		initialize_L2C();
		enable_SCU();
		enable_L1_I();
		enable_branch_prediction();
	}else if (cache_config<=6){ // 6 do 5 and enable L1_D
		printf("\n\rCACHE CONFIG:6 L1_D, L1_I and branch prediction\n\r");
		enable_MMU();
		initialize_L2C();
		enable_SCU();
		enable_L1_D();
		enable_L1_I();
		enable_branch_prediction();
	}else if (cache_config<=7){ // 7 do 6 and enable L1 D side prefetch
		printf("\n\rCACHE CONFIG:7 L1_D with side prefetch), L1_I with branch prediction\n\r");
		enable_MMU();
		initialize_L2C();
		enable_L1_D_side_prefetch();
		enable_SCU();
		enable_L1_D();
		enable_L1_I();
		enable_branch_prediction();
	}else if (cache_config<=8){ // 8 do 7 and enable L2C
		printf("\n\rCACHE CONFIG:8 L1_D side prefetch, L1_I with branch pre. and enable L2\n\r");
		enable_MMU();
		initialize_L2C();
		enable_L1_D_side_prefetch();
		enable_SCU();
		enable_caches(); //equivalent to enable L1_D,L1_I,branch prediction and L2
	}else if (cache_config<=9){ // 9 do 8 and enable L2 prefetch hint
		printf("\n\rCACHE CONFIG:9 basic config. + L2 prefetch hint\n\r");
		enable_MMU();
		initialize_L2C();
		enable_L1_D_side_prefetch();
		enable_L2_prefetch_hint();
		enable_SCU();
		enable_caches(); //equivalent to enable L1_D,L1_I,branch prediction and L2
	}else if (cache_config<=10){ // 10 do 9 and enable write full line zeros
		printf("\n\rCACHE CONFIG:10 basic config. + L2ph + wr full line 0s\n\r");
		enable_MMU();
		initialize_L2C();
		enable_L1_D_side_prefetch();
		enable_L2_prefetch_hint();
		enable_SCU();
		enable_write_full_line_zeros();
		enable_caches(); //equivalent to enable L1_D,L1_I,branch prediction and L2
	}else if (cache_config<=11){ // 11 do 10 and enable speculative linefills of L2 cache
		printf("\n\rCACHE CONFIG:11 basic config. + L2ph + wrfl0s + speculative linefills\n\r");
		enable_MMU();
		initialize_L2C();
		enable_L1_D_side_prefetch();
		enable_L2_prefetch_hint();
		enable_SCU();
		enable_L2_speculative_linefill(); //call SCU first
		enable_write_full_line_zeros();
		enable_caches(); //equivalent to enable L1_D,L1_I,branch prediction and L2
	}else if (cache_config<=12){ // 12 do 11 and enable early BRESP
		printf("\n\rCACHE CONFIG:12 basic config. + L2ph + wrfl0s + sl + eBRESP\n\r");
		enable_MMU();
		initialize_L2C();
		enable_L1_D_side_prefetch();
		enable_L2_prefetch_hint();
		enable_SCU();
		enable_L2_speculative_linefill(); //call SCU first
		enable_write_full_line_zeros();
		enable_early_BRESP();
		enable_caches(); //equivalent to enable L1_D,L1_I,branch prediction and L2
	}else if (cache_config<=13){ // 13 do 12 and store_buffer_limitation
		printf("\n\rCACHE CONFIG:13 basic config. + L2ph + wrfl0s + sl + eBRESP + buffer store limitation\n\r");
		enable_MMU();
		initialize_L2C();
		enable_L1_D_side_prefetch();
		enable_L2_prefetch_hint();
		enable_SCU();
		enable_L2_speculative_linefill(); //call SCU first
		enable_write_full_line_zeros();
		enable_early_BRESP();
		enable_store_buffer_device_limitation();
		enable_caches(); //equivalent to enable L1_D,L1_I,branch prediction and L2
	}
}

void print_src_dst(uint8_t* src, uint8_t* dst, int size)
{
  int i;
  uint8_t* char_ptr_scr = (uint8_t*) src;
  uint8_t* char_ptr_dst= (uint8_t*) dst;

  printf( "Source=[");
  for (i=0; i<size; i++)
  {
    printf( "%d", *char_ptr_scr);
    char_ptr_scr++;
    if (i<(size-1)) printf(",");
  }
  printf("]\n\r");

  printf( "Destiny=[");
  for (i=0; i<size; i++)
  {
    printf("%d", *char_ptr_dst);
    char_ptr_dst++;
    if (i<(size-1)) printf(",");
  }
  printf( "]\n\r");
}
uint32_t ukf_transfer_done(void* addr)
{
		return ( /*0x0001 &*/ ukf_read_reg(addr));
}
uint32_t ukf_read_reg(void* addr)
{
	return *((uint32_t*) (addr+100));
}

/////////////////////////////////////////////////////////////////////////////////
/* Function Definitions */

// /*
//  * Arguments    : double result[7]
//  * Return Type  : void
//  */
// static void argInit_1x7_real_T(double result[7])
// {
//   int idx1;
//
//   /* Loop over the array to initialize each element. */
//   for (idx1 = 0; idx1 < 7; idx1++) {
//     /* Set the value of the array element.
//        Change this value to the value that the application requires. */
//     result[idx1] = argInit_real_T();
//   }
// }
//
// /*
//  * Arguments    : double result[3]
//  * Return Type  : void
//  */
// static void argInit_3x1_real_T(double result[3])
// {
//   int idx0;
//
//   /* Loop over the array to initialize each element. */
//   for (idx0 = 0; idx0 < 3; idx0++) {
//     /* Set the value of the array element.
//        Change this value to the value that the application requires. */
//     result[idx0] = argInit_real_T();
//   }
// }
//
// /*
//  * Arguments    : double result[9]
//  * Return Type  : void
//  */
// static void argInit_3x3_real_T(double result[9])
// {
//   int idx0;
//   int idx1;
//
//   /* Loop over the array to initialize each element. */
//   for (idx0 = 0; idx0 < 3; idx0++) {
//     for (idx1 = 0; idx1 < 3; idx1++) {
//       /* Set the value of the array element.
//          Change this value to the value that the application requires. */
//       result[idx0 + 3 * idx1] = argInit_real_T();
//     }
//   }
// }
//
// /*
//  * Arguments    : double result[21]
//  * Return Type  : void
//  */
// static void argInit_3x7_real_T(double result[21])
// {
//   int idx0;
//   int idx1;
//
//   /* Loop over the array to initialize each element. */
//   for (idx0 = 0; idx0 < 3; idx0++) {
//     for (idx1 = 0; idx1 < 7; idx1++) {
//       /* Set the value of the array element.
//          Change this value to the value that the application requires. */
//       result[idx0 + 3 * idx1] = argInit_real_T();
//     }
//   }
// }
//
// /*
//  * Arguments    : double result_data[]
//  *                int result_size[2]
//  * Return Type  : void
//  */
// static void argInit_d3xd3_real_T(double result_data[], int result_size[2])
// {
//   int idx0;
//   int idx1;
//
//   /* Set the size of the array.
//      Change this size to the value that the application requires. */
//   result_size[0] = 2;
//   result_size[1] = 2;
//
//   /* Loop over the array to initialize each element. */
//   for (idx0 = 0; idx0 < 2; idx0++) {
//     for (idx1 = 0; idx1 < 2; idx1++) {
//       /* Set the value of the array element.
//          Change this value to the value that the application requires. */
//       result_data[idx0 + 2 * idx1] = argInit_real_T();
//     }
//   }
// }
//
// /*
//  * Arguments    : void
//  * Return Type  : double
//  */
// static double argInit_real_T(void)
// {
//   return 0.0;
// }
//
// /*
//  * Arguments    : void
//  * Return Type  : void
//  */
// static void main_Cholesky(void)
// {
//   double A[9];
//
//   /* Initialize function 'Cholesky' input arguments. */
//   /* Initialize function input argument 'A'. */
//   argInit_3x3_real_T(A);
//
//   /* Call the entry-point 'Cholesky'. */
//   Cholesky(A);
// }

/*
 * Arguments    : void
 * Return Type  : void
 */
static void main_example(void)
{
  /* Call the entry-point 'example'. */
  example();
}

/*
 * Arguments    : void
 * Return Type  : void
 */
//
// static void main_measurement_eq(void)
// {
//   double dv4[3];
//   double h;
//
//   /* Initialize function 'measurement_eq' input arguments. */
//   /* Initialize function input argument 'x'. */
//   /* Call the entry-point 'measurement_eq'. */
//   argInit_3x1_real_T(dv4);
//   h = measurement_eq(dv4);
// }
//
// /*
//  * Arguments    : void
//  * Return Type  : void
//  */
// static void main_nonlinear_state_eq(void)
// {
//   double dv5[3];
//   double f[3];
//
//   /* Initialize function 'nonlinear_state_eq' input arguments. */
//   /* Initialize function input argument 'x'. */
//   /* Call the entry-point 'nonlinear_state_eq'. */
//   argInit_3x1_real_T(dv5);
//   nonlinear_state_eq(dv5, f);
// }
//
// /*
//  * Arguments    : void
//  * Return Type  : void
//  */
// static void main_sigmas(void)
// {
//   double dv6[3];
//   double dv7[9];
//   double X[21];
//
//   /* Initialize function 'sigmas' input arguments. */
//   /* Initialize function input argument 'x'. */
//   /* Initialize function input argument 'P'. */
//   /* Call the entry-point 'sigmas'. */
//   argInit_3x1_real_T(dv6);
//   argInit_3x3_real_T(dv7);
//   sigmas(dv6, dv7, argInit_real_T(), X);
// }
//
// /*
//  * Arguments    : void
//  * Return Type  : void
//  */
// static void main_ukf(void)
// {
//   double x[3];
//   double P[9];
//   double dv8[9];
//
//   /* Initialize function 'ukf' input arguments. */
//   /* Initialize function input argument 'x'. */
//   argInit_3x1_real_T(x);
//
//   /* Initialize function input argument 'P'. */
//   argInit_3x3_real_T(P);
//
//   /* Initialize function input argument 'Q'. */
//   /* Call the entry-point 'ukf'. */
//   argInit_3x3_real_T(dv8);
//   ukf(x, P, argInit_real_T(), dv8, argInit_real_T());
// }
//
// /*
//  * Arguments    : void
//  * Return Type  : void
//  */
// static void main_ut(void)
// {
//   emxArray_real_T *y;
//   emxArray_real_T *Y;
//   emxArray_real_T *Y1;
//   double eq;
//   double X[21];
//   double Wm[7];
//   double Wc[7];
//   double n;
//   double R_data[9];
//   int R_size[2];
//   double P_data[9];
//   int P_size[2];
//   emxInitArray_real_T(&y, 1);
//   emxInitArray_real_T(&Y, 2);
//   emxInitArray_real_T(&Y1, 2);
//
//   /* Initialize function 'ut' input arguments. */
//   eq = argInit_real_T();
//
//   /* Initialize function input argument 'X'. */
//   argInit_3x7_real_T(X);
//
//   /* Initialize function input argument 'Wm'. */
//   argInit_1x7_real_T(Wm);
//
//   /* Initialize function input argument 'Wc'. */
//   argInit_1x7_real_T(Wc);
//   n = argInit_real_T();
//
//   /* Initialize function input argument 'R'. */
//   argInit_d3xd3_real_T(R_data, R_size);
//
//   /* Call the entry-point 'ut'. */
//   ut(eq, X, Wm, Wc, n, R_data, R_size, y, Y, P_data, P_size, Y1);
//   emxDestroyArray_real_T(Y1);
//   emxDestroyArray_real_T(Y);
//   emxDestroyArray_real_T(y);
// }
