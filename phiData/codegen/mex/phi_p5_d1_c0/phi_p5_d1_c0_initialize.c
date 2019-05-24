/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * phi_p5_d1_c0_initialize.c
 *
 * Code generation for function 'phi_p5_d1_c0_initialize'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "phi_p5_d1_c0.h"
#include "phi_p5_d1_c0_initialize.h"
#include "_coder_phi_p5_d1_c0_mex.h"
#include "phi_p5_d1_c0_data.h"

/* Variable Definitions */
static const volatile char_T *emlrtBreakCheckR2012bFlagVar = NULL;

/* Function Definitions */
void phi_p5_d1_c0_initialize(void)
{
  emlrtStack st = { NULL,              /* site */
    NULL,                              /* tls */
    NULL                               /* prev */
  };

  mexFunctionCreateRootTLS();
  emlrtBreakCheckR2012bFlagVar = emlrtGetBreakCheckFlagAddressR2012b();
  st.tls = emlrtRootTLSGlobal;
  emlrtClearAllocCountR2012b(&st, false, 0U, 0);
  emlrtEnterRtStackR2012b(&st);
  emlrtFirstTimeR2012b(emlrtRootTLSGlobal);
}

/* End of code generation (phi_p5_d1_c0_initialize.c) */
