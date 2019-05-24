/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * phi_p5_d1_c0_terminate.c
 *
 * Code generation for function 'phi_p5_d1_c0_terminate'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "phi_p5_d1_c0.h"
#include "phi_p5_d1_c0_terminate.h"
#include "_coder_phi_p5_d1_c0_mex.h"
#include "phi_p5_d1_c0_data.h"

/* Function Definitions */
void phi_p5_d1_c0_atexit(void)
{
  emlrtStack st = { NULL,              /* site */
    NULL,                              /* tls */
    NULL                               /* prev */
  };

  mexFunctionCreateRootTLS();
  st.tls = emlrtRootTLSGlobal;
  emlrtEnterRtStackR2012b(&st);
  emlrtLeaveRtStackR2012b(&st);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
  emlrtExitTimeCleanup(&emlrtContextGlobal);
}

void phi_p5_d1_c0_terminate(void)
{
  emlrtStack st = { NULL,              /* site */
    NULL,                              /* tls */
    NULL                               /* prev */
  };

  st.tls = emlrtRootTLSGlobal;
  emlrtLeaveRtStackR2012b(&st);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

/* End of code generation (phi_p5_d1_c0_terminate.c) */
