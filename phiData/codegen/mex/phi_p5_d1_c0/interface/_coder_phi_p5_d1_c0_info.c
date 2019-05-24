/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * _coder_phi_p5_d1_c0_info.c
 *
 * Code generation for function '_coder_phi_p5_d1_c0_info'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "phi_p5_d1_c0.h"
#include "_coder_phi_p5_d1_c0_info.h"

/* Function Definitions */
mxArray *emlrtMexFcnProperties(void)
{
  mxArray *xResult;
  mxArray *xEntryPoints;
  const char * fldNames[6] = { "Name", "NumberOfInputs", "NumberOfOutputs",
    "ConstantInputs", "FullPath", "TimeStamp" };

  mxArray *xInputs;
  const char * b_fldNames[4] = { "Version", "ResolvedFunctions", "EntryPoints",
    "CoverageInfo" };

  xEntryPoints = emlrtCreateStructMatrix(1, 1, 6, fldNames);
  xInputs = emlrtCreateLogicalMatrix(1, 1);
  emlrtSetField(xEntryPoints, 0, "Name", emlrtMxCreateString("phi_p5_d1_c0"));
  emlrtSetField(xEntryPoints, 0, "NumberOfInputs", emlrtMxCreateDoubleScalar(1.0));
  emlrtSetField(xEntryPoints, 0, "NumberOfOutputs", emlrtMxCreateDoubleScalar
                (1.0));
  emlrtSetField(xEntryPoints, 0, "ConstantInputs", xInputs);
  emlrtSetField(xEntryPoints, 0, "FullPath", emlrtMxCreateString(
    "/home/jacanj/Dropbox/School/Research/DSICK/phiData/phi_p5_d1_c0.m"));
  emlrtSetField(xEntryPoints, 0, "TimeStamp", emlrtMxCreateDoubleScalar
                (737525.41003472218));
  xResult = emlrtCreateStructMatrix(1, 1, 4, b_fldNames);
  emlrtSetField(xResult, 0, "Version", emlrtMxCreateString(
    "9.6.0.1072779 (R2019a)"));
  emlrtSetField(xResult, 0, "ResolvedFunctions", (mxArray *)
                emlrtMexFcnResolvedFunctionsInfo());
  emlrtSetField(xResult, 0, "EntryPoints", xEntryPoints);
  return xResult;
}

const mxArray *emlrtMexFcnResolvedFunctionsInfo(void)
{
  const mxArray *nameCaptureInfo;
  const char * data[16] = {
    "789ced5ccf6fe344147657dbd55668c142821542022d70402caa93366db79cf2b34ddaa649939626dd5dd24962d7deda33aeeda4492f144e5cf80f3870444848"
    "cb6d2538f40c5758adb823218e48704438b1dd8d87cec6bb71dc269d919297c967cf377e7a7e6fe68d3dcc44263bc130cccbe6e7eb4f19e689cc74cb0d4b30ac",
    "2daf30ee82e313b67c15ab3b6592b9ea3a6fc2e6fbcaaed71034f89661556409f2eb0da5ca6b660502853f6da68e140902686cb6559ed1781dc94dbede450449"
    "e63725855f433d95b4645694a51ee8b4d2813abf13225fdb2f36144613f5a7dd957b2b8cad9f4ef98670fd573dea2749d00f8be17753f73911293cf700d4007c",
    "c02535a456518b2bd6448464aec0eb3cd06a22972c6612ab9c2a4a4960808eaca873957ab8520b4d2bbdfd7e44e8d7358ffd7e89d0ef295b965cffc6a2960cdb"
    "f2035bdeb1e587b68cd872c69673b67cc796515b7e1475ae6397d04faffa9fc4eacce97116a2a2c3aed5f9c5770dab3fe5b3903a6a5465de3ffb4a10f9dcf8dd",
    "cc5a0933b16c6c732d16e70a33a1f022e00cd3cc3a06c72b32274b554e01860caa1c5275aeab23cbbcfaeac9ab7de1d22953cc75fbd7f12f5f3e7e1c0b8ecf2a"
    "9785af4568cfabddbd46e06331bc1d5a84622671984bf35087f35bf3d59de5744f3ff27d78faf58321d4836a7f54ef5f95d02faff67605ab3bc5890faceb5f27",
    "2e4c9ffaf56342fb5ef5f636819fc5f01aaa9bd72e99830d0d02795ad2e30d493632d01c6ef09a543b37bf7f32205f85c8e7c63ddb8d2e028daf735d7dd9dfb7"
    "6de1688fc3b567da5480feeb27e65f1a0f2e6a3c789dc0c762f8e14e7cebe8a8252ee4d4462a3593a8cd15c09df8f8c4838784f3bdea718dd03e8be13ec4835b",
    "826c38c3df60ed2e9a8ffa657737097c2c86637140af011968a9bd73f3ff17d24e3a9fff397d4755eef9e52ea17ffed9c9c95fe59fa9bfbfa8fedeebf83f1681"
    "025a0949c550793e9f0fafedc5e6223243fdfde5b98fcd729c8df69b7778d5d70dacce60c739b8a4436b8c6a743287e797df19d43e56897c6efcb9c70382d4e2",
    "eb2a32cd8373e92af03c0ff3ddf61bbf523f3f24bea0c6f5cbb3fbede2c19e24273613fb8583f8dee6fe562a49fdfc65f5f3243eaffaba8ed599d3e32c44d205"
    "c99cd288a39ab75f22f2b9f1c1fcbaa5a38e25507f3e1e7c418ddb9b077c4a6dd6f4c5d2e12c4279bd189e2def30e3e3cf49eba35ef5b849689fc5703ffdf92d",
    "41d27443907aaf6397d04f7ff335c0b7bcfd5b043e16c34d55544c155404a4c908a915d4e435414687955a67fd7ef0f13c5e48fd718a5f79fb7b7df81cfc45f3"
    "7bb6193d437781e7717efc7d92e6712e6a3cf03abed75753ad54f2e828bfd29a89646742898d5838941a9f78f007e17caf7afc9cd03e8be1c3bcaf6f3dfb808a",
    "c8cbaa95ed0fda5e977d9b175cc5eacce97116d219f376e439af2f48b0ceb732d0f06dbe10efd30f071f74be60a77f82b48f477fff46e70ba31e1f8a6d5552e6"
    "0e0adb61a95a8f647636f2d970738cf23ff4fe7517b7bd85c626bfdf2fbed444e05a2fa7f9fdb3fb4ff341c1f0d1fcbe3fedd3f1bfbbbffeda6bc6b7f17fbf3c",
    "bd79f90a689d5f3cb8b0eb028e1dc9e60fced252b0eb02c7939f3da179a0518f03650da48bcd6ab3ba50e093a9b632b7b85de6691ca0718070ddeef5e160e380"
    "04691ce81f0724186c1c38f9e1e6148d03a31e07f640792137bbbd7eb0508d198939908bf0918de5f18903747df86ce91497fded02dffcfaf3e6f707e50bfab9",
    "9f31ce03d23cfe10f9681edf9ff647d2af1ff11ad21b4aef7590f2ec43797ff7e47eb42ba39f04e6e78586dcdd996454fdfcb0c7efba0a34a101b98e9e02cee3"
    "7c4ff3f9a3efe78df919a590dc5e167766d151d3c82a4bd9b031467efe21e17cfa1e6eafdd3d7d0ff70b427b5ef5f53e818fc570ec3919a0aa723b2e41a0b58b",
    "dd78b7d480354342d0aff5e457faf4cbc1059bb72202583703815fcf7bdeefc3efe0838f1788aaec4e0502b4ab8ded3f697e67d4e3c352498f97369657d78b5b"
    "c9f45a46d316d3793846f99d13c2f9f4be7617b71d2ef8162fde25f0b1188ec78b2692ea314d03ed251918060f25b8d73deebcde0718743e59c2ea389f83fb60",
    "4767a86e5a09d07e8effa9d2b830ea71e168253d9bd8524bca4635578f958474b6a5e4d2e3131706bd9f3f26b4cf62b81ff3062b43541164048c8a3d8308f6bd"
    "b07b51bfec8feee383f3b9f1d17d2f9ceee3334c3eba8f8f3fed0feaf78b84f6590cf7c3ef4364ac83f59c96316fed3dfb419e60edafecdb3a40bffd99251d02",
    "c88cee3a408ac8e7c6077c8ea7a3a580e783c774bd77887c41f9f5835823a744daa548a8a0cd3412617eb1a9ac33e3e3d7e9fdeb2e6e7b7bcfb77d1de87ecc24"
    "3e374ef7637e61be6eb92c7c743f667fdaa7e3fab3a55348e3fa63427b5ef5f626818fc5f033f339d3828c90b7eb1f563c18d46e36887c6e7cf0bcce6d4b675c",
    "5767ce639f41ce03bea5cf038d7e1ca88af3f912948d7a1129a9064ccf5653f1953158effd0ff6988067",
    "" };

  nameCaptureInfo = NULL;
  emlrtNameCaptureMxArrayR2016a(data, 27888U, &nameCaptureInfo);
  return nameCaptureInfo;
}

/* End of code generation (_coder_phi_p5_d1_c0_info.c) */
