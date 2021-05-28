/*
 * _coder_Cholesky_mex_info.c
 *
 * Code generation for function '_coder_Cholesky_mex_info'
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
#include "_coder_Cholesky_mex_info.h"
#include "Cholesky_mex_data.h"
#include "blas.h"

/* Function Definitions */
mxArray *emlrtMexFcnProperties(void)
{
  mxArray *xResult;
  mxArray *xEntryPoints;
  const char * fldNames[4] = { "Name", "NumberOfInputs", "NumberOfOutputs",
    "ConstantInputs" };

  mxArray *xInputs;
  const char * b_fldNames[4] = { "Version", "ResolvedFunctions", "EntryPoints",
    "CoverageInfo" };

  xEntryPoints = emlrtCreateStructMatrix(1, 6, 4, fldNames);
  xInputs = emlrtCreateLogicalMatrix(1, 1);
  emlrtSetField(xEntryPoints, 0, "Name", mxCreateString("Cholesky"));
  emlrtSetField(xEntryPoints, 0, "NumberOfInputs", mxCreateDoubleScalar(1.0));
  emlrtSetField(xEntryPoints, 0, "NumberOfOutputs", mxCreateDoubleScalar(1.0));
  emlrtSetField(xEntryPoints, 0, "ConstantInputs", xInputs);
  xInputs = emlrtCreateLogicalMatrix(1, 1);
  emlrtSetField(xEntryPoints, 1, "Name", mxCreateString("measurement_eq"));
  emlrtSetField(xEntryPoints, 1, "NumberOfInputs", mxCreateDoubleScalar(1.0));
  emlrtSetField(xEntryPoints, 1, "NumberOfOutputs", mxCreateDoubleScalar(1.0));
  emlrtSetField(xEntryPoints, 1, "ConstantInputs", xInputs);
  xInputs = emlrtCreateLogicalMatrix(1, 1);
  emlrtSetField(xEntryPoints, 2, "Name", mxCreateString("nonlinear_state_eq"));
  emlrtSetField(xEntryPoints, 2, "NumberOfInputs", mxCreateDoubleScalar(1.0));
  emlrtSetField(xEntryPoints, 2, "NumberOfOutputs", mxCreateDoubleScalar(1.0));
  emlrtSetField(xEntryPoints, 2, "ConstantInputs", xInputs);
  xInputs = emlrtCreateLogicalMatrix(1, 3);
  emlrtSetField(xEntryPoints, 3, "Name", mxCreateString("sigmas"));
  emlrtSetField(xEntryPoints, 3, "NumberOfInputs", mxCreateDoubleScalar(3.0));
  emlrtSetField(xEntryPoints, 3, "NumberOfOutputs", mxCreateDoubleScalar(1.0));
  emlrtSetField(xEntryPoints, 3, "ConstantInputs", xInputs);
  xInputs = emlrtCreateLogicalMatrix(1, 5);
  emlrtSetField(xEntryPoints, 4, "Name", mxCreateString("ukf"));
  emlrtSetField(xEntryPoints, 4, "NumberOfInputs", mxCreateDoubleScalar(5.0));
  emlrtSetField(xEntryPoints, 4, "NumberOfOutputs", mxCreateDoubleScalar(2.0));
  emlrtSetField(xEntryPoints, 4, "ConstantInputs", xInputs);
  xInputs = emlrtCreateLogicalMatrix(1, 6);
  emlrtSetField(xEntryPoints, 5, "Name", mxCreateString("ut"));
  emlrtSetField(xEntryPoints, 5, "NumberOfInputs", mxCreateDoubleScalar(6.0));
  emlrtSetField(xEntryPoints, 5, "NumberOfOutputs", mxCreateDoubleScalar(4.0));
  emlrtSetField(xEntryPoints, 5, "ConstantInputs", xInputs);
  xResult = emlrtCreateStructMatrix(1, 1, 4, b_fldNames);
  emlrtSetField(xResult, 0, "Version", mxCreateString("9.0.0.341360 (R2016a)"));
  emlrtSetField(xResult, 0, "ResolvedFunctions", (mxArray *)
                emlrtMexFcnResolvedFunctionsInfo());
  emlrtSetField(xResult, 0, "EntryPoints", xEntryPoints);
  emlrtSetField(xResult, 0, "CoverageInfo", covrtSerializeInstanceData
                (&emlrtCoverageInstance));
  return xResult;
}

const mxArray *emlrtMexFcnResolvedFunctionsInfo(void)
{
  const mxArray *nameCaptureInfo;
  const char * data[31] = {
    "789ced5dcd8f1c4715ef4dd68e118a09880f1b4ccc1a4c880c3bc1f990ede064d7fb91597bd79f1bc922e071ef4ccd6e6b7bbac7dd3deb31172691901c0904b9"
    "23c5421c3807fe000e5cb940e080c4098488140924242e1c4c57f7f46c4f6dcdd49baeaae99edd37d268f7edd6c7abf77ef5fad5abea57c6d4ca9a117e8e86df",
    "7f96a78cc3e1cf23e1f70923fe1cead253e1f75ef767fcf769e3e92efd4ef8adba4e40da41fc4fc76c1023f9d4dc86e5984eb0fea0490c8ff8aebd436ad17fea"
    "964dd6ad0659755344d90a89c672ea5f3d82fecbdbf27b2d1b769a883f741cd7c36f328e69ce384ea6c6f14c977e6be9fb8b174aeb0b0ba537af2c571a66609b",
    "1ba5852dd726fef683d946d4ee0b8276a7fbda9d36fc7b5e40eb9d13d43bccf07338925a6bc326f1789a82fa1798fa947e6b65f57634a4ee506e9e7de1dbaf98"
    "a5c075ed0db75d220dbb645b1bc97f895d6f3925ca6f38d49e1cd37c1fe6f43b95eaf713ddbf879f97af7cfd4ff312f565fb5756ff1ba9fa539cfa46ea6796f2",
    "79e955343f4e30fd52baead688376b8593dc734c7bd6f217dd8669394b9ee77a49bb7382763fc5b44be990bf6a60b94e65cb746a21e0693b6d413b6f30edbc01"
    "930bfd9e89c6513a930ca4d43790ee3ccf889bab7710f785c67d59d0ef67997e29cde09ea4f13eeaf3a0ba657a90f1bfcef0f13a6cfc5c7c13695c77ee6d10c4",
    "7591712db2e75f64faa534836bbf6adaa6374b5bde6d7718be934fbadda49ec87e2f33f5966172e0e2fb4ccc794f2612387f76ed38e2bcc838bf2be8f779a65f"
    "4a3338379b4dfbc1ad0832cb5dcf63c5b96e9bd564bda2d28f792868679d69671d2627ee3c183cb0588212b8fac7472fe2bc80942f9abe753d1764d7b3f87cd8",
    "dff34057fc4584bb234cbb946e78356bc7aa9171c461bec3d4a7f468cf3db7e997128e679b893c33eafba5eaa35cf17a5ad57cc9db9f19875e79fd3ec5f44be9"
    "6e234aecb068dcaf32f55fcd34ee64d88d9ebc33dadfe78edd40fbab02cfbaf49ac5eeef892b5e6a5976b0e25c6d3588675595e0bc23a87f99a97f19268f01f1",
    "c4fe012888a7ffeec4ef3f44dc03ca1715f75f61faa534c7cf26ede682db689a811522771cb8bfc2d4bf02930717f77b06206def8d93e86f171bf76541bf9f61"
    "faa53483fbb04dbe9c75f8331799fa176172e0e23d643c9284843f7312fd1958795deb49117e3fcdb44be9100c95466035885fd922769378293e75c5cb97987a",
    "941e7dfeeee15c16bf5f43fb0c2bffd018aedf5b46bf7e29ad44bf3355b7d1709d4a758b54b7fd1e3fe8a7a39f5e647bfe65a35fcf94e6da73dfda6c983ed78e"
    "41e383c92341057ec711f784eb73eee8af3ffe33e211505e171ed1bf40ffa208f8e5edf371f1dbdaae0f7a0e42ed61a3e9dea7a01dc77a4efe9c4114978f3896",
    "7ffe235ea1e5f3d22bfabde8f71e44dc67f18b2d3f6cd2b3dae3b0e3af31f55f1b79dcc40e7f29253ccb9df330be8a767cb2f17c88e997d25db7642c7ec979a6"
    "fef94ce3ee1bb68c5ff2e8e3eb88671578d6a557f44bd02fc913f7a2f8c025a35fcf94ce8cfb99ba1d24c6d880c549bec0f44f69ee39d5a54d25b8d7248f81fb",
    "e694710578ffe547d7d0cee78877b07ee704fd3fcdf44f69cb7762c318d0d7a8d5f8312239cc33f5e76172a0f3be6eb549ade9866228f571aec09f3166d03f9f"
    "0c9c675b77d6adb0ebad71f8e912e77afbf01d732cfd9e0de21a58be630cd7ab4abf7417d73375cbf383bab5cb87c86f7f96e183d27497246cbc52773ddb759b",
    "1577877875dbbd1fefd1cbedf33c14f07393a977132697749c2516d390112888a363fc0558fe57c6707db78d7e7d535abdbe678617e86e068a703d65ec7d5f9e"
    "5a5645eb03cba991f68a134472db12b4778e69ef1c5c6ecc7361b681cf03fdf360dcfa9c13f407f5df479d0f49fe08f4dbf7379e27cdae67f1d3c3861b665b6e",
    "1ee87f6fafbbaf14f12aeddfa35f032c7f50f06f3993837fcb41fc27f575e3bf630cd7ebb8d6b759fd75d9b80dfae7fb0bcf79ef2fdd16f47f8ae99fd2e2bc41"
    "bbedcf09da87e60bea08da5963da5983c9099a3f46f6bcee63cc13a4c6be8f4bcfa2f8e597183e28cd7f6f79deb6dd2a57fe45cf0f941e80e4b9317c5f19583e",
    "6ffd2a781ea49bbdea2ec4b17b9efc759cbb51691f3803917d0efcb8358df340c57360d5e8d733a5b3fb45b1a75f0957b06650e9794878fe06cfdf140df7d78c"
    "7efd525a7e3d50a94589be2b710a67084e0f317c50daf21dd3e1c8b998f9b79273f121cff2f958307e032c9f975ef11c319e2346bb9ecdae876e913baef74354",
    "cc7f9a1f3be259deaee37d2dc0f279e915ed3ada75c4fdde7e81f149d39b4dacbbdcf94ad1ba54e5bd4449def2442612f118cc5b0e2c9f17ceef0afa7d9ee997"
    "d278af05de6b91d4d73d2f8aa66f5dcf05dd714b7c3e4cf63cc8fb1c4359d03fde5fc7c537de5f072c2fb2abbaf2881d61daa534dedb921bde26e6de165d781d",
    "d52ee23dcf68578b685779788b5394aaf17745e35291c77784e7bcf75fcc775b68bbf9445fbb4f18ad603c383cced43f3e703c8182f7dce67ef26fc4a1121c66"
    "d55b59d02eef5e12c7756ccb21a657f103332015728f2fc72cf8bc2ba8cf8bef71c7b9974915f9e11eff0bf15a68bc629ef0a1f8c5bccbc0f2baf03bea7aa966",
    "999b93b25ea2e7ac28bf0ad64b787e0e58be087a85e7abc23cc979e311f1ccc7b3c8afc073fd209ce0b97e60f9bc702ef26b300f5b26bf1aed3bb07cdeeb26b4"
    "f368e7d3f5f73bdeb3ac6319bc6fd8a63fdbde240d99752c341f5b4679f0cffd50ce4b11e7b2719353ff7907f19e23dec1facdb25fc3c3bb15458f77c7a52b4e",
    "b8ccd45b969647ccb9e47af583e9b7f1bcff7ec03be07d9708ef2d9f543c52a7bf4be1bd23e0e70a53ef8ab43c529ccbbfdf85b8079617addbde34faf54c6925"
    "b89fd92074e1166c79c4df72ed9a91fd7c056f1eb0ed66f5733a827a2b0c3f2bd2f2e971ae22ff2cce0360f9bced7f59d03fae67713dbb9ff02eb2f32798fe29",
    "cde03d71167a4b5a9debd932c34f59461e5dce139148ac67df7f6f1bf10e29afeb1cc09ca0dda34cbb946e10d36f79a4419c203a73a5c25edf16d43fcdd43f3d"
    "687cfdcc49c65b7efb493c1798ab3d56165fc4f527fadd0711f7e0b87acd0d5a03e4aec3ffd6e09fd111c8c6d7d11f0196cf5bbf185fc7f87abafe7ec77b59d0",
    "ff31a67f4a0fb2f3e3b0ef8b4cfd4525f290ce1f82f61d583e6ffda27d47fb9eae7fd0f18eeb57c4bd0edc3f3486eb59659ea834ee39dba7b87f8afba703eb1f"
    "74fb0fc88fd6db4f0a1be6ca5d879faf343f5a6f5f29168d046e303f1ab07cdefa55b98f1ab6da4ec63559fba89473dc472d02de75ebb72ce81fcfc9e03999fd",
    "847705fb53965323ed35cb69f903e45ef4f8e5ee00a4e3977f381aa03f7f9070bf4e377d53e352f0fc88da5d71827ce64134209c0749fdfd3e0f447805ec5b45"
    "b0b96eb7fc3cf0bfc0b4b720219fde40e4e39b887f60f9bcf18f790e30cf419ef8cfb28faa23df32e60f439ce6815391bf80791a87da59ccd3082c9f979d7db2",
    "afdd270dcbd951121fd16f67c31f34b17dc8b0023bfbf3f3ab885348f9bcf42ab2c3bcfcceccbaad66edf0e5ac03df1799fa176172e0ae0b42c665edf0c96337"
    "10df2ad67b19e35903f03d13ad67aaaed33bbf32aa5fecb8de9e7d3f1d7896bf07b13b6ecab074fca2f3deb535c4b30a7bad4baf0ace23e2fdc5ddbfa77083f7",
    "1703cbe785fb51fd6d73c31f8b3f729ea97f7ee4f1c6f74885fcaab87fe225bc474a0d8e75e915ed37da6fc4fdde7e01fbeedd7b86a965df6db76071bfa1f70b"
    "273291b0efef7e7801ed7b91717e5bd0ef29a65f4a8bef9fdf6d7f4ed03ef4def98ea09d35a69d35987cb8f8e70c48761e3cc6fbe661e53b4631f4accbfeeb3e",
    "6f88cf81c9c67fde71c7b2a0ffcf33fd539ac1fd7dd3732c67335b1c13fabedc2ac3c7aa580e7ed834a995629477b1ce42becbbbf4b9c2e770bf7332f02eb2c7"
    "8798fe296df98ee900ebe71f6f4feefd0a79963f2f88e75080e5f3c6f5a8f147d214bfe73fcc5e8f63fd42711cf2a9e27de6dffc7011710c299f975e15bcc76c",
    "f9cbb66b060bb6e9fbbd7675bdcfb9ccf0b30c93c38078e32ee372795b3af8fe32b07c11ec17afdfa7987e294d4fe7c9daebac78be3eea809b9eb56306a4d465"
    "1aef1d2d86ffa15bbf0ae227756a04d7c2bfd9a971e9c2bbcaf7d37619975d47a2fd9e147fbb2ce81f1037a9dbc1593ff0c613279c67eacfc3e43100ef11e32a",
    "ce0320de81e58ba45fa8df62f9e45ecbb4b5ae33339eb7e5c44b225e65e3de3ffafb37ff88780694cf4baf73827e9f61faa5dfe8adc4b89d4ad5f588ce38f735"
    "a6ff6b86023f2dcdbc5c7eac5ffc0df3a780ca778c62e859e4a700dea3774c6fd372aa5bdb32e75944f2b8cad4bb6a28d9dfe9f12e1957f9e92b37f1fc960adc",
    "e7a167e83e4fb88e733d8e9c8bbacf43972711cff2fb3c2fe3b95c58f99f19c3f57ac7e8d72ba515dbf599848c8f6ba8d9d7d4e59fe37ee664e23c2fbdea3a7f"
    "aecb5fc773e7fb03ef79c757b2e2b3f87e4a3852eaa85086e5dfff3cfa5d82f65b059ecb46bf5e29adf25e5705fb4198bfd3e8e106f3b601cbe78dfbb2a07fcc",
    "d30cc20be6690696cf1befaaec3ce6ab45bb3fc9f3408457409c1df3d576ff8ef89f3cfc8b9e0398af36d37a17e395c0f279e35fb5fdd7edf7a3bddfdf785f32"
    "faf54b69c97be762b01bcafcf3ee3dbb81949d1f27ce93fb7503f938e65feb0fd0ae43ca778ce1fae5bf177c7b21cb7182a576ace845d224a14973aa0f76d76f",
    "b7057c00f266c4ec2c847fdc244e394e75c1d503f47c65cbd976dcfb0ec8dfb9c1d4bf61c4f36088a0861eb8e00c66b699d25bc67971a7fa08e7850afb3fe8fe"
    "c521fa16d8bd4babf3b7e69b96f4b9b2bdb34c05fe3b82fae3b2131971ffbfbfbc8b7e0fa4bce8fccdf78c7e3d535ac6ce5d5e59bfd56a365d2f20358ede9b09",
    "5ff87cc0e74391e649decf87bb82febfc5f44f69663e0c9f7a1c3d64991745b527383ff29d1fbad78d0af21d44ebe7eeacebb5ab6b1daddb5e647ddf6a07d7d1"
    "a0f2599fffd2f1a2992ad931ed4a44a5f811e11f707f7b847fdffa01a934032f695717fecb4cbdb2b47c12ce65ee6f373e987e1bd70d9388ffb2809fcf31fc50",
    "9ac17fb55235fd80237ff0f97f2778f1aca1ed5cdc503f28661efd9da43ee27fe4fd033c2787e7e440e5ff0f84c5b9ba",
    "" };

  nameCaptureInfo = NULL;
  emlrtNameCaptureMxArrayR2016a(data, 84216U, &nameCaptureInfo);
  return nameCaptureInfo;
}

/* End of code generation (_coder_Cholesky_mex_info.c) */
