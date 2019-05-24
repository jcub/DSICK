/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 * File: _coder_phi_p5_d1_c0_api.h
 *
 * MATLAB Coder version            : 4.2
 * C/C++ source code generated on  : 10-Apr-2019 10:02:14
 */

#ifndef _CODER_PHI_P5_D1_C0_API_H
#define _CODER_PHI_P5_D1_C0_API_H

/* Include Files */
#include "tmwtypes.h"
#include "mex.h"
#include "emlrt.h"
#include <stddef.h>
#include <stdlib.h>
#include "_coder_phi_p5_d1_c0_api.h"

/* Variable Declarations */
extern emlrtCTX emlrtRootTLSGlobal;
extern emlrtContext emlrtContextGlobal;

/* Function Declarations */
extern real_T phi_p5_d1_c0(real_T gi);
extern void phi_p5_d1_c0_api(const mxArray * const prhs[1], int32_T nlhs, const
  mxArray *plhs[1]);
extern void phi_p5_d1_c0_atexit(void);
extern void phi_p5_d1_c0_initialize(void);
extern void phi_p5_d1_c0_terminate(void);
extern void phi_p5_d1_c0_xil_shutdown(void);
extern void phi_p5_d1_c0_xil_terminate(void);

#endif

/*
 * File trailer for _coder_phi_p5_d1_c0_api.h
 *
 * [EOF]
 */
