/*
 * Cholesky_mex_initialize.c
 *
 * Code generation for function 'Cholesky_mex_initialize'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "Cholesky.h"
#include "measurement_eq.h"
#include "nonlinear_state_eq.h"
#include "sigmas.h"
#include "ukf.h"
#include "ut.h"
#include "Cholesky_mex_initialize.h"
#include "_coder_Cholesky_mex_mex.h"
#include "Cholesky_mex_data.h"
#include "blas.h"

/* Function Declarations */
static void Cholesky_mex_once(void);

/* Function Definitions */
static void Cholesky_mex_once(void)
{
  /* Allocate instance data */
  covrtAllocateInstanceData(&emlrtCoverageInstance);

  /* Initialize Coverage Information */
  covrtScriptInit(&emlrtCoverageInstance, "D:\\TCC\\UKF_matlab\\Cholesky.m", 0,
                  1, 3, 0, 0, 0, 0, 2, 0, 0, 0);

  /* Initialize Function Information */
  covrtFcnInit(&emlrtCoverageInstance, 0, 0, "Cholesky", 0, -1, 567);

  /* Initialize Basic Block Information */
  covrtBasicBlockInit(&emlrtCoverageInstance, 0, 2, 521, -1, 554);
  covrtBasicBlockInit(&emlrtCoverageInstance, 0, 1, 442, -1, 495);
  covrtBasicBlockInit(&emlrtCoverageInstance, 0, 0, 412, -1, 426);

  /* Initialize If Information */
  /* Initialize MCDC Information */
  /* Initialize For Information */
  covrtForInit(&emlrtCoverageInstance, 0, 0, 428, 438, 567);
  covrtForInit(&emlrtCoverageInstance, 0, 1, 501, 513, 563);

  /* Initialize While Information */
  /* Initialize Switch Information */
  /* Start callback for coverage engine */
  covrtScriptStart(&emlrtCoverageInstance, 0U);

  /* Allocate instance data */
  covrtAllocateInstanceData(&emlrtCoverageInstance);

  /* Initialize Coverage Information */
  covrtScriptInit(&emlrtCoverageInstance,
                  "D:\\TCC\\UKF_matlab\\measurement_eq.m", 1, 1, 1, 0, 0, 0, 0,
                  0, 0, 0, 0);

  /* Initialize Function Information */
  covrtFcnInit(&emlrtCoverageInstance, 1, 0, "measurement_eq", 0, -1, 36);

  /* Initialize Basic Block Information */
  covrtBasicBlockInit(&emlrtCoverageInstance, 1, 0, 29, -1, 35);

  /* Initialize If Information */
  /* Initialize MCDC Information */
  /* Initialize For Information */
  /* Initialize While Information */
  /* Initialize Switch Information */
  /* Start callback for coverage engine */
  covrtScriptStart(&emlrtCoverageInstance, 1U);

  /* Allocate instance data */
  covrtAllocateInstanceData(&emlrtCoverageInstance);

  /* Initialize Coverage Information */
  covrtScriptInit(&emlrtCoverageInstance,
                  "D:\\TCC\\UKF_matlab\\nonlinear_state_eq.m", 2, 1, 1, 0, 0, 0,
                  0, 0, 0, 0, 0);

  /* Initialize Function Information */
  covrtFcnInit(&emlrtCoverageInstance, 2, 0, "nonlinear_state_eq", 0, -1, 72);

  /* Initialize Basic Block Information */
  covrtBasicBlockInit(&emlrtCoverageInstance, 2, 0, 33, -1, 69);

  /* Initialize If Information */
  /* Initialize MCDC Information */
  /* Initialize For Information */
  /* Initialize While Information */
  /* Initialize Switch Information */
  /* Start callback for coverage engine */
  covrtScriptStart(&emlrtCoverageInstance, 2U);

  /* Allocate instance data */
  covrtAllocateInstanceData(&emlrtCoverageInstance);

  /* Initialize Coverage Information */
  covrtScriptInit(&emlrtCoverageInstance, "D:\\TCC\\UKF_matlab\\sigmas.m", 3, 1,
                  1, 0, 0, 0, 0, 0, 0, 0, 0);

  /* Initialize Function Information */
  covrtFcnInit(&emlrtCoverageInstance, 3, 0, "sigmas", 0, -1, 240);

  /* Initialize Basic Block Information */
  covrtBasicBlockInit(&emlrtCoverageInstance, 3, 0, 177, -1, 239);

  /* Initialize If Information */
  /* Initialize MCDC Information */
  /* Initialize For Information */
  /* Initialize While Information */
  /* Initialize Switch Information */
  /* Start callback for coverage engine */
  covrtScriptStart(&emlrtCoverageInstance, 3U);

  /* Allocate instance data */
  covrtAllocateInstanceData(&emlrtCoverageInstance);

  /* Initialize Coverage Information */
  covrtScriptInit(&emlrtCoverageInstance, "D:\\TCC\\UKF_matlab\\ukf.m", 4, 1, 1,
                  0, 0, 0, 0, 0, 0, 0, 0);

  /* Initialize Function Information */
  covrtFcnInit(&emlrtCoverageInstance, 4, 0, "ukf", 0, -1, 3376);

  /* Initialize Basic Block Information */
  covrtBasicBlockInit(&emlrtCoverageInstance, 4, 0, 2216, -1, 3317);

  /* Initialize If Information */
  /* Initialize MCDC Information */
  /* Initialize For Information */
  /* Initialize While Information */
  /* Initialize Switch Information */
  /* Start callback for coverage engine */
  covrtScriptStart(&emlrtCoverageInstance, 4U);

  /* Allocate instance data */
  covrtAllocateInstanceData(&emlrtCoverageInstance);

  /* Initialize Coverage Information */
  covrtScriptInit(&emlrtCoverageInstance, "D:\\TCC\\UKF_matlab\\ut.m", 5, 1, 5,
                  1, 0, 0, 0, 1, 0, 0, 0);

  /* Initialize Function Information */
  covrtFcnInit(&emlrtCoverageInstance, 5, 0, "ut", 0, -1, 646);

  /* Initialize Basic Block Information */
  covrtBasicBlockInit(&emlrtCoverageInstance, 5, 4, 605, -1, 645);
  covrtBasicBlockInit(&emlrtCoverageInstance, 5, 3, 576, -1, 592);
  covrtBasicBlockInit(&emlrtCoverageInstance, 5, 2, 528, -1, 557);
  covrtBasicBlockInit(&emlrtCoverageInstance, 5, 1, 476, -1, 509);
  covrtBasicBlockInit(&emlrtCoverageInstance, 5, 0, 403, -1, 442);

  /* Initialize If Information */
  covrtIfInit(&emlrtCoverageInstance, 5, 0, 458, 466, 515, 566);

  /* Initialize MCDC Information */
  /* Initialize For Information */
  covrtForInit(&emlrtCoverageInstance, 5, 0, 444, 454, 604);

  /* Initialize While Information */
  /* Initialize Switch Information */
  /* Start callback for coverage engine */
  covrtScriptStart(&emlrtCoverageInstance, 5U);
}

void Cholesky_mex_initialize(void)
{
  emlrtStack st = { NULL, NULL, NULL };

  mexFunctionCreateRootTLS();
  emlrtBreakCheckR2012bFlagVar = emlrtGetBreakCheckFlagAddressR2012b();
  st.tls = emlrtRootTLSGlobal;
  emlrtClearAllocCountR2012b(&st, false, 0U, 0);
  emlrtEnterRtStackR2012b(&st);
  if (emlrtFirstTimeR2012b(emlrtRootTLSGlobal)) {
    Cholesky_mex_once();
  }
}

/* End of code generation (Cholesky_mex_initialize.c) */
