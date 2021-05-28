#define SWITCH_ON_CACHE // cache +acp
//#define DMA_TRANSFER_SIZE  256
//#define WRITE_OPERATION


#ifndef soc_cv_av
	#define soc_cv_av
#endif

#include "hwlib.h"
#include "soc_dma.h"
#include <stdbool.h>
#include "socal/hps.h"
#include "socal/socal.h"
#include "socal/alt_acpidmap.h"
#include "alt_address_space.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <inttypes.h>

#include "arm_cache_modified.h" //Função para configuração da cache
#include "fpga_dmac_api.h"//Função para configuração e utilização da DMA
#include "pmu.h" //performance monitor ARM


#define cfg0 (uint8)0
#define cfg1 (uint8)1


//The address of FPGA-DMAC is the HPS-FPGA bridge + Qsys address assigned to it
#define FPGA_DMAC_QSYS_ADDRESS 0x10000
#define FPGA_DMAC_ADDRESS ((float*)0xC0000000+FPGA_DMAC_QSYS_ADDRESS)
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
  #define DMA_TRANSFER_SRC_UP     ((float*) Buffer)
  #define DMA_TRANSFER_DST_DMAC   ((uint8_t*) FPGA_OCR_ADDRESS_DMAC)
  #define DMA_TRANSFER_DST_UP     ((float*) FPGA_OCR_ADDRESS_UP)
#endif

//GPIO to change AXI AXI_SIGNALS
#define GPIO_QSYS_ADDRESS 0x20000
#define GPIO_ADDRESS ((uint8_t*)0xC0000000 + GPIO_QSYS_ADDRESS)

//UKF FLAG define
#define UKF_QSYS_ADDRESS 0x0
#define UKF_DONE_ADDRESS ((uint8_t*)0xC0000000+UKF_QSYS_ADDRESS+0x01FF)
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
#define CACHE_CONFIGURATION 9


/********************extra fuction declarations*******************************/
void cache_configuration(int cache_config);
void print_src_dst(float* src, float* dst, int size);

uint32_t ukf_transfer_done(void* addr);
uint32_t ukf_read_reg(void* addr, uint32_t reg);

int DMA_TRANSFER_SIZE;

/***************************Program entrypoint********************************/
int main(void){

	printf("//////////////////////////////////////////////////////\n\r");
	printf("///////////////////     PROJETO TCC    ///////////////\n\r");
	printf("/////////////// Anderson Coimbra Mendes //////////////\n\r");
	printf("//////////////////////////////////////////////////////\n\n\n\n\n\n\r");


	printf("Configurando  \n\r ...  \n\r ... \n\r ... \n\r ... \n\r");


    ALT_STATUS_CODE status = ALT_E_SUCCESS;
    uint32_t AXI_SIGNALS;
    uint8_t* gpio_add = GPIO_ADDRESS;

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

	unsigned long long pmu_counter_ns;
	int matrix_size,lower_size;


		printf("Configurado  \n\n\n\r");


		printf("//////////////////////////////////////////////////////\n\r");
		printf("1- TESTE 1 - Cholesky -\n\r");
		printf("//////////////////////////////////////////////////////\n\r");
		printf("Envia matriz de dados pra fgpa \n\r");
		printf("Calcula Cholesky \n\r");
		printf("Lê Resultado \n\r");

		printf("\n\n\n\n\r Quantidade de bytes a ser transferido = ");
		//scanf("%d", &DMA_TRANSFER_SIZE);
		lower_size=0;
		matrix_size = 12;
		for (int i=1; i<matrix_size;i++) {
			lower_size+= lower_size + i;
		}

		DMA_TRANSFER_SIZE = ceil(lower_size/4) + matrix_size; //bytes
		printf("%d \n\r", DMA_TRANSFER_SIZE);

		//Allocação de buffers proporcional ao tamanho do dado. Necessário para leitura do lado da HPS
		void* unalligned_Buffer;
		uint8_t* Buffer = (uint8_t*) align_malloc(DMA_TRANSFER_SIZE, &unalligned_Buffer);

		//------AXI SIGNALS-------//
		//AXI_SIGNALS[3-0]  = AWCACHE = 0111 (Cacheable write-back, allocate reads only)
		//AXI_SIGNALS[6-4]  = AWPROT = 000 (normal access, non-secure, data)
		//AXI_SIGNALS[11-7] = AWUSER = 00001 (Coherent access)
		//AXI_SIGNALS[19-16]  = ARCACHE = 0111
		//AXI_SIGNALS[22-20]  = ARPROT = 000
		//AXI_SIGNALS[27-23] = ARUSER = 00001
		//AXI_SIGNALS = 0x00870087; //Permite WR e RD ** (duvida)
		AXI_SIGNALS = 0x00870087;
		printf("AXi_sginals = %d \n", (int)AXI_SIGNALS);

		//Write data to the GPIO connected to AXI signals

		*gpio_add = AXI_SIGNALS;
	  //--Dsdos randomicos--//
		printf("Criando matriz : \n\r");
		for(int i = 1; i < DMA_TRANSFER_SIZE; i++){

				if(i<matrix_size) {
						DMA_TRANSFER_SRC_UP[i] = (float)2;
			   		DMA_TRANSFER_DST_UP[i] = (float)2;
				}
				else {
					DMA_TRANSFER_SRC_UP[i] = (float)1;
					DMA_TRANSFER_DST_UP[i] = (float)1;
				}
		}

		DMA_TRANSFER_SRC_UP[0] = (uint32_t)3;
		DMA_TRANSFER_DST_UP[0] = (uint32_t)3;

	  print_src_dst(DMA_TRANSFER_SRC_UP, DMA_TRANSFER_DST_UP, DMA_TRANSFER_SIZE);

	    //--Copiando dados do source buffer para destination buffer--//
	/*	printf("CPU: Copiando de 0x%08x para 0x%08x, tamanho = %d bytes.\n\r",
	    (int)DMA_TRANSFER_SRC_UP, (int)DMA_TRANSFER_DST_UP, (int)DMA_TRANSFER_SIZE);*/
	  printf("DMA: Copiando de 0x%08x para 0x%08x, tamanho = %d bytes.\n\r",
	    (int)DMA_TRANSFER_SRC_DMAC, (int)DMA_TRANSFER_DST_DMAC, (int)DMA_TRANSFER_SIZE);

	  fpga_dma_config_transfer(FPGA_DMAC_ADDRESS,
	                           DMA_TRANSFER_SRC_DMAC,
	                           DMA_TRANSFER_DST_DMAC,
	                           DMA_TRANSFER_SIZE);
		  printf("DMA configurada \n\r");
	  pmu_counter_reset();
	  fpga_dma_start_transfer(FPGA_DMAC_ADDRESS);




	while(fpga_dma_transfer_done(FPGA_DMAC_ADDRESS)==0) {
	}

	pmu_counter_read_ns(&pmu_counter_ns);

  printf("Tempo de execuçao da transferencia de dados: %llu (nanosegundo)  \n\r",pmu_counter_ns);
	//pmu_counter_reset();
	while(ukf_transfer_done(UKF_DONE_ADDRESS)==0) {
	}


		pmu_counter_read_ns(&pmu_counter_ns);

	  printf("Tempo total do calculo de dados: %llu (nanosegundo)  \n\r",pmu_counter_ns);


	  printf("...\n\r ... \n\r ... \n\r Resultado:\n\r");
	  //print_src_dst(DMA_TRANSFER_SRC_UP, DMA_TRANSFER_DST_UP, DMA_TRANSFER_SIZE);
	  if(memcmp(DMA_TRANSFER_SRC_UP, DMA_TRANSFER_DST_UP,(size_t)DMA_TRANSFER_SIZE)==0)
	    printf("\n\rTransferencia feita com sucesso\n\r");
	  else
	    printf("Transferencia falhou\n\r");


	  free(unalligned_Buffer);
	 //system("pause");
	//}

	  // resultados 1024 bytes em 13858 nanosec = throughput 72160.48 	-> (1024 / 2^10) / (13858 * 10^(-9))
	//
	// printf("//////////////////////////////////////////////////////\n\r");
	// printf("2- TESTE UKF - Code Anderson - HPS \n\r");
	// printf("//////////////////////////////////////////////////////\n\r");
	//
	// printf("Teste do calculo do UKF utilizando o processador do HPS \n\r");
	// printf("Objetivo:\n\r");
	// printf("a) Verificar se o código de UKF está correto\n\r");
	// printf("b) Cacular os tempos\n\r");
	//
	//
	//   /* Initialize the application.
	//      You do not need to do this more than one time. */
	//   /*printf("Cholesky_initialize(); \n\r"); //Debug
	//   Cholesky_initialize();*/
	//
	//   /* Invoke the entry-point functions.
	//      You can call entry-point functions multiple times. */
	//  /* printf("main_Cholesky(); \n\r"); //Debug
	//   main_Cholesky();
	//   printf("main_measurement_eq(); \n\r"); //Debug
	//   main_measurement_eq();
	//   printf(" main_nonlinear_state_eq(); \n\r"); //Debug
	//   main_nonlinear_state_eq();
	//   printf("main_sigmas(); \n\r"); //Debug
	//   main_sigmas();
	//   printf("main_ukf(); \n\r"); //Debug
	//   main_ukf();
	//   printf("main_ut(); \n\r"); //Debug
	//   main_ut();*/
	//
	//   /* Terminate the application.
	//      You do not need to do this more than one time. */
	//  // Cholesky_terminate();
	//
	//
  // 	ukf_test1();
	//
	// printf("\n\n\n\n\n\r");
	// printf("//////////////////////////////////////////////////////\n\r");
	// printf("3- TESTE UKF - Alternative code - HPS \n\r");
	// printf("//////////////////////////////////////////////////////\n\r");
	//
	// printf("Teste do calculo do UKF utilizando o processador do HPS \n\r");
	// printf("Objetivo:\n\r");
	// printf("a) Verificar se o código de UKF está correto\n\r");
	// printf("b) Cacular os tempos\n\r");
	//
	//
	// //printf("mtxlib_test(); \n\r"); //Debug
	// //pmu_counter_reset();
	// //mtxlib_test();
	// //printf("Tempo de execuçao %llu (nanosegundo)  \n\r",pmu_counter_ns);
	//
	// //generic matrix operation test
	//
	//
  //   //printf("ukf_test(); \n\r"); //Debug
  //   //UKF test start here
  //   //pmu_counter_reset();
	// //ukf_test();
	// //printf("Tempo de execuçao %llu (nanosegundo)  \n\r",pmu_counter_ns);
	//
	//
	// printf("\n\n\n\n\n\r");
	// printf("//////////////////////////////////////////////////////\n\r");
	// printf("4- TESTE Cholesky - HPS \n\r");
	// printf("//////////////////////////////////////////////////////\n\r");
	//
	// printf("Teste do calculo do UKF utilizando o processador do HPS \n\r");
	// printf("Objetivo:\n\r");
	// printf("a) Verificar se o código de UKF está correto\n\r");
	// printf("b) Cacular os tempos\n\r");
	//






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

void print_src_dst(float* src, float* dst, int size)
{
  int i;
  float* char_ptr_scr = (float*) src;
  float* char_ptr_dst= (float*) dst;

  printf( "Source=[");
  for (i=0; i<size; i++)
  {
    printf( "%f", *char_ptr_scr);
    char_ptr_scr++;
    if (i<(size-1)) printf(",");
  }
  printf("]\n\r");

  printf( "Destiny=[");
  for (i=0; i<size; i++)
  {
    printf("%f", *char_ptr_dst);
    char_ptr_dst++;
    if (i<(size-1)) printf(",");
  }
  printf( "]\n\r");
}


		uint32_t ukf_transfer_done(void* addr)
		{
		    return ( 0x0001 & ukf_read_reg(addr, 0));
		}
		uint32_t ukf_read_reg(void* addr, uint32_t reg)
		{
		  return *((uint32_t*) (addr + 4*reg));
		}
