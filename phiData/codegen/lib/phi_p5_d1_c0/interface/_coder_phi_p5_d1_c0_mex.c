/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 * File: _coder_phi_p5_d1_c0_mex.c
 *
 * MATLAB Coder version            : 4.2
 * C/C++ source code generated on  : 10-Apr-2019 10:02:14
 */

/* Include Files */
#include "_coder_phi_p5_d1_c0_api.h"
#include "_coder_phi_p5_d1_c0_mex.h"

/* Function Declarations */
static void phi_p5_d1_c0_mexFunction(int32_T nlhs, mxArray *plhs[1], int32_T
  nrhs, const mxArray *prhs[1]);

/* Function Definitions */

/*
 * Arguments    : int32_T nlhs
 *                mxArray *plhs[1]
 *                int32_T nrhs
 *                const mxArray *prhs[1]
 * Return Type  : void
 */
static void phi_p5_d1_c0_mexFunction(int32_T nlhs, mxArray *plhs[1], int32_T
  nrhs, const mxArray *prhs[1])
{
  const mxArray *outputs[1];
  emlrtStack st = { NULL,              /* site */
    NULL,                              /* tls */
    NULL                               /* prev */
  };

  st.tls = emlrtRootTLSGlobal;

  /* Check for proper number of arguments. */
  if (nrhs != 1) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:WrongNumberOfInputs", 5, 12, 1, 4,
                        12, "phi_p5_d1_c0");
  }

  if (nlhs > 1) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:TooManyOutputArguments", 3, 4, 12,
                        "phi_p5_d1_c0");
  }

  /* Call the function. */
  phi_p5_d1_c0_api(prhs, nlhs, outputs);

  /* Copy over outputs to the caller. */
  emlrtReturnArrays(1, plhs, outputs);
}

/*
 * Arguments    : int32_T nlhs
 *                mxArray * const plhs[]
 *                int32_T nrhs
 *                const mxArray * const prhs[]
 * Return Type  : void
 */
void mexFunction(int32_T nlhs, mxArray *plhs[], int32_T nrhs, const mxArray
                 *prhs[])
{
  mexAtExit(phi_p5_d1_c0_atexit);

  /* Module initialization. */
  phi_p5_d1_c0_initialize();

  /* Dispatch the entry-point. */
  phi_p5_d1_c0_mexFunction(nlhs, plhs, nrhs, prhs);

  /* Module termination. */
  phi_p5_d1_c0_terminate();
}

/*
 * Arguments    : void
 * Return Type  : emlrtCTX
 */
emlrtCTX mexFunctionCreateRootTLS(void)
{
  emlrtCreateRootTLS(&emlrtRootTLSGlobal, &emlrtContextGlobal, NULL, 1);
  return emlrtRootTLSGlobal;
}

/*
 * File trailer for _coder_phi_p5_d1_c0_mex.c
 *
 * [EOF]
 */
