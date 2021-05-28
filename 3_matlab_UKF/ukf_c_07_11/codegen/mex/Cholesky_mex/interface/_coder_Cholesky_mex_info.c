/*
 * _coder_Cholesky_mex_info.c
 *
 * Code generation for function '_coder_Cholesky_mex_info'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "Cholesky.h"
#include "example.h"
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

  xEntryPoints = emlrtCreateStructMatrix(1, 7, 4, fldNames);
  xInputs = emlrtCreateLogicalMatrix(1, 1);
  emlrtSetField(xEntryPoints, 0, "Name", mxCreateString("Cholesky"));
  emlrtSetField(xEntryPoints, 0, "NumberOfInputs", mxCreateDoubleScalar(1.0));
  emlrtSetField(xEntryPoints, 0, "NumberOfOutputs", mxCreateDoubleScalar(1.0));
  emlrtSetField(xEntryPoints, 0, "ConstantInputs", xInputs);
  xInputs = emlrtCreateLogicalMatrix(1, 0);
  emlrtSetField(xEntryPoints, 1, "Name", mxCreateString("example"));
  emlrtSetField(xEntryPoints, 1, "NumberOfInputs", mxCreateDoubleScalar(0.0));
  emlrtSetField(xEntryPoints, 1, "NumberOfOutputs", mxCreateDoubleScalar(0.0));
  emlrtSetField(xEntryPoints, 1, "ConstantInputs", xInputs);
  xInputs = emlrtCreateLogicalMatrix(1, 1);
  emlrtSetField(xEntryPoints, 2, "Name", mxCreateString("measurement_eq"));
  emlrtSetField(xEntryPoints, 2, "NumberOfInputs", mxCreateDoubleScalar(1.0));
  emlrtSetField(xEntryPoints, 2, "NumberOfOutputs", mxCreateDoubleScalar(1.0));
  emlrtSetField(xEntryPoints, 2, "ConstantInputs", xInputs);
  xInputs = emlrtCreateLogicalMatrix(1, 1);
  emlrtSetField(xEntryPoints, 3, "Name", mxCreateString("nonlinear_state_eq"));
  emlrtSetField(xEntryPoints, 3, "NumberOfInputs", mxCreateDoubleScalar(1.0));
  emlrtSetField(xEntryPoints, 3, "NumberOfOutputs", mxCreateDoubleScalar(1.0));
  emlrtSetField(xEntryPoints, 3, "ConstantInputs", xInputs);
  xInputs = emlrtCreateLogicalMatrix(1, 3);
  emlrtSetField(xEntryPoints, 4, "Name", mxCreateString("sigmas"));
  emlrtSetField(xEntryPoints, 4, "NumberOfInputs", mxCreateDoubleScalar(3.0));
  emlrtSetField(xEntryPoints, 4, "NumberOfOutputs", mxCreateDoubleScalar(1.0));
  emlrtSetField(xEntryPoints, 4, "ConstantInputs", xInputs);
  xInputs = emlrtCreateLogicalMatrix(1, 5);
  emlrtSetField(xEntryPoints, 5, "Name", mxCreateString("ukf"));
  emlrtSetField(xEntryPoints, 5, "NumberOfInputs", mxCreateDoubleScalar(5.0));
  emlrtSetField(xEntryPoints, 5, "NumberOfOutputs", mxCreateDoubleScalar(2.0));
  emlrtSetField(xEntryPoints, 5, "ConstantInputs", xInputs);
  xInputs = emlrtCreateLogicalMatrix(1, 6);
  emlrtSetField(xEntryPoints, 6, "Name", mxCreateString("ut"));
  emlrtSetField(xEntryPoints, 6, "NumberOfInputs", mxCreateDoubleScalar(6.0));
  emlrtSetField(xEntryPoints, 6, "NumberOfOutputs", mxCreateDoubleScalar(4.0));
  emlrtSetField(xEntryPoints, 6, "ConstantInputs", xInputs);
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
  const char * data[38] = {
    "789ced5d4d8c1cc5152ee31f8822cc8ff263c0c159884dc0c90e064cb01d9b5def7a99f57ad77f0b412161b677a666a7b23ddde3ee9ef52c974c90908c4404dc"
    "13c54239704e728703572e092452a42807a248481c22e5829403e9ea9e9e99aee999aae9aafe99dd37d268f7edd6abf7aade57af5fbdfa69b4677119b99f83ee",
    "f7deb7f6a003eecfbbdcef1dc8ffecefd07bdcefadce4fffeffbd0dd1dfa75f75b360d07b71cff9f8656c728f854cc3a3134c359dd6e606461dbd4b770c5fb4f"
    "95e87895d4f125b38f281297a82ff4fdab4bd07f5935bb5b33d2fb09ff43dbb1e67e8376ec8b68c7f1be76dcdba15fb9f0f3f9d385d5b9b9c28b4b0ba5bae6e8",
    "da7aa1b9592d954b4ffea874e24461ae66ead8dedc9eae77e53cc991b32f24671fb26f580ee57b8ec37780d1ef80d78bcd751dfb721b1cfed30c3fa55f59bcf4"
    "b2d7c44ed3ae3df5e48967b582639afabad92ae0ba5ed0c97af05fac579b4681eadb692e62f53e1021774f9fdcaf75feee7e4e2e1dfb7456825f56be32feeff7",
    "f1ef89e0477d3fe394cfcaae5738720f3372295d362bd89a26eea0b70c4d9f26f6bc59d78871c1b24c2ba8778653ef3d4cbd9476f52b3bc4344a35cda8b880a7"
    "f5b438f5bcc0d4f38258bfd0ef71af1d85e341430aa186b89d24819b955701f7b9c67d9123f71b8c5c4a33b8c7fd781ff77950ae699648fb9f67f4785eacfd91",
    "f8c6d2b86edf58c780eb3ce39ae7cf1f64e4529ac1b55dd674cd9aa635f7ea1d85efe0d35f6fc0c7f3df0b0cdf82583f44e2fbb8af79b74f2470fef0f20380f3"
    "3ce37c8d23f771462ea5199c6b8d86be7ddd83cc4227f25834aee85a3998bfa88c636e71ea5965ea5915eba7c87130bc617e0f4ae0eadf9f3f0de342a47cdeec",
    "9dd47341763e0bcf879d3d0ed6d068fbaacac7f07078172387d275ab42b64805a79197f931c34fe9f19e8366c32e041a4f37a2da3d86fd9f29dfce14bf47558d"
    "9face39b34ec1a25f74e462ea53b9528f1cbbc769f61f8cfc46a77d0ece8713c863f7eecd055f0c72af09c945d79f1c711462ea507f28ce79b4477168d95661d",
    "5ba4ac04e76d0eff4586ffa2587f0cc92f861ba020bffed1e18f3f01dc0b94cf2beebfcbc8a57444dc8d5b8d39b3ded01ce222370ddc2f31fc4b62fd1189fb81"
    "0648fb7b7404e2ef7ce3bec8917b3f2397d20ceedd3aa3fb398978e62cc37f56ac1f22f1ee2aeef584443c7304e219b1f26b68b45d55cd2f7978be8f91436917",
    "1ca5ba43ead82ed5b0dec0569fde49e5d32f307c941e7f3c0f682e8be7ef81bf162b7f0b8db6ef7514b62fa595d877aa6cd6eba6512ad77079d3eeea03713bc4"
    "ed79f6ef4fa0b09d29cdf5efb8a5d51bdd3034361eeb0df32675ea69c427f2eb685e9ec9d3581ebfe0cf55c5df49d915fc36f8eddd88fb38eb40c476abb4482b",
    "0d3f7e8ee13f3776bbb1eefe520874965bc7448f821f9f6c3cef67e452ba1396a412979c62f84fc56a77a8d93271c9ed2fae009e55e03929bb425c02714996b8"
    "e7e5cfcea3b09d291d1bf75355dd099c3112cb237e9b914fe9c87d58173652d97f15b33f86ae0351c515e0fdf79f5f063f9f21de85ed3bc3917f37239fd2c436",
    "7cc7e8d06383e9ec339c65f867c5fa818efb2a69e14ac374bba110d25c413c83a6203e9f0c9cc79b7756892bba96469c2eb14f2d846f5f63e97de4806bc1f26d"
    "34daae2ae3d21eaea7aac4b29d2ae9e9c18bdb1f66f4a0345d65722b2f554d4b37cd46c9dcc25655376ffa6b4c72eba0b738fa5c63f8ae89f54b7f9ec5efa611",
    "2d50904787fc8b60f9f7d1687bb750d8de94566fefa9d1053a8ba93c5cef4183e741a96755343f204605b7160dc7ebb71aa7bee798fa9e13ef37e6b9305d87e7"
    "41f2e3206d7bce70e489c6ef71cf4743dcbeb3f13c697e3d4e9cee565cd75a72e320f973289d75254f57e9f81ee21ac1f2bb05ffc4981cfc1303f01ff0278dff",
    "361a6dd7b4e6b771e375d9bc0dc4e73b0bcf59af2fbdcc91ff08239fd2fc7b317af5cf70ea17bd0fa3cda96799a96759ac9f44ef4790ddcffe15dc83a1c6bfa7"
    "65675efef221460f4a479fc39bd575b31cd9ff79bfffa2bf0192fbc6e0fc9d60f9acedabe079d05fed8a39e7e7eea3fa3f897d372afd434443649f036f35f7c1",
    "3850f11cb884c276a674fcb8c88ff44bee0c56734add0809f6dfc0fe9bbce1fe320adb97d2f2f38152c5bbc8b6e45f512a82d3fd8c1e9426b6a11911fd9ccffb"
    "64827df1aecef2f70b40fe46b07c5676857dc4b08f18fc7a3cbfee8645665ae743548c7f7affaba7b3bc5f87f7110896cfcaaee0d7c1af03ee07e50ae627356b",
    "3af0ee72fb2b79f35295efdd08eee50dfa44221f03f7f20a96cf0ae76b1cb98f3372290df7b6c3bded017fd2e3226ff64eeab99074de129e0f933d0eb2dec750"
    "e4c887f73345e21bdecf24587e0d8db6abaa7bc578b8db1b92b317e1ed74ee6f97bfdfc1cfcbbafaaab8b7e3b7c63ce05645dc9e945d79fef8102397d28c3f36",
    "346b8318e5daa6ccbcb4cdd16385e15be1b7df765d3dae147c6fdcf1c9ac6beeea2ef9de98b79fbd06791891f26d943f3b437e9d8b0fc8af0b96cfca8ff3f683"
    "4d317229cde65f6c1b5bce4b9a4e2ad7c96b78d6da18d2ef49e4d963ee138a9e7f0f344436cfd2fea70e718c12ff9e969d61bd09d69bb21c07b7d0683bff0485",
    "ed4c6995e3608ad8f4ff1b96a64bec13234635a2bff31aeff8fb895c9d619f58973feb782729bb827f07ffbeebfdfbbad9342ab6d078f80ea30fa507c6c3227d"
    "62606b4e772522b9fc3a6f9da1c8e85394e89fb0e232e761611d6952f11ff7fe02b8bf03f0bd93f10df77300be2701dfbcf8e530a30fa587dc8f770deb662368",
    "67dcf5285effc4b88752649d22d40605f750e2f3068c0791f2efa3d1f66ea2b0bd29addede53fec9d6328d634b65d3703462d8a5a0507f5cce1b2f0f30fa529a"
    "192f9eac65f76f7a5f3f2415efcf33faccf3fb6fa83fe9292e9dd787785fb0fc6d34dabebf4061fb523a81f141ec924d360c5c19181411fd087112c44908c9e1",
    "be8d46db358b754bc035e01aa1dd8d6bc8db00aea3ca67b5ff86178fc37b1462c5e7807bc1f26b68b4bd55ed7b2f72e4dcc7c8a1f4c05be9fbf44eea1ceb0586"
    "8fd2e39f6319d05cf65e3178bfb660f935940e9ee3ec8bb134a36208f247c52fe3ec8b39cbf0537a3c1c536de94e604f6b49fca2f73e83fbc194c42149d995e7",
    "9fbfc9c8a5b4f714b74bb4a2126e3916316c5246c9c61f2f317c2f75da7f65fc0e6858644b737021b21992e73a8e82bfce97bf9ee1c839c8c8a1741d6b76d3c2"
    "75ec46aaf8861abf5de3f09f60f84f88b437aca882f3771f7efd3f5ffc15f02b507e0da5835fd97823ae3f863803709be67967b73a257e9677aee918c37f4ca4",
    "7deeef7271c1878f825f152b9fa6fd44f155efdc4991c6fced34c34fe9f1f310f5ce851abd7e85fcc3cec6ed5d4cfd94ae5b15b2452a380ddccaaf7f78b8ed68"
    "3cdddd8f15d3eecf946f678a5b65f3c049c7edb8eb6df60dcb990c3feb9f97a7fa2a384703e7e505cb67ed67a37067938dba66ab890fd638fc51f72272dbe72b",
    "a8e27db65ffeed4b886345caafa1f4ed281a17ccd54c1ddb9bdb69e0f538c37f5ca49d8182d2e772670efe11e65db9c26b912307d68347e101e6637989137871"
    "ed1da1faef404d474d7cc06bd75186ffa850bb1c495ccefc1af25b6a70296b3f9e7fbd9fa99fd28669e8c4c09a55b21dcdc1de9a57547f26b1ee7592e13f29d2",
    "de418565f1fbc1a710d74e047e213e80f86012703c6edeab42b48d49c97bd1fdcc545f05792fd8af2b583e0f7615cd2f10dbadc922ad34f07c8ee13f17b3dd81"
    "ce92efc3063c0b96cf0acfbcf802defb2b841378efaf60f9ac700ee78be07c5196b8cf7afe047e1efc7c3fff4ec7bb82fb5dd675cd9e6e6de07aff7a4d52f7bb",
    "c4ec8fe8f78251cd0b9ee6b2f99347fefb3ae03d43bc0bdb9787f70719f9948ec23bf132c9bd7625952f5c60f816a4fbc3d75c72befa877dbf82fb7b7702de05"
    "eeaff6f0deb471c9c255fabb14dedb1c7d9618be25e9fee8d35cfebe76c0bd6079debced4514b633a595e07e6a1dd3899b53b3b05d33f50a121b0702f7567b08",
    "62eb8d1be7b4397c8b8c3e8bd2fdd3d55cc57e3e180782e5b3f6ff458e7c98cfc27c7627e19de7e705eef70d8285ee9436c9f96c91d1a728d31f1dcd832e9198"
    "cffeeedd4dc0fb24e05d817fefcc679d44e7b1730cdf9c743fb8a4743cdffe47751b702e52be8d46db37fa1ec797e7e25ccb7ba1e51b7a1e37b051c14679bb77",
    "af216fffcd238c1e9466f0eeab33e7fe71031b45cda8e87d791c5e7c7327533fa59bc6a661de3484e63d5719feabc81f07233a6ae4c5c5118df10f4146b4678c"
    "71f16ac6e72095f167edff5f40617b539a636f8edf3b7f69f6fa6c83b84342c4ff1f62e453da1f0f83a34c05fedb1cfeb4fc444cdcffefef6fc2bc56a4fc3b68",
    "b49d7f86c276a6b48c9fbbb8b87abdd9689896832b1176ef9efb86e7033c1ff2344eb27e3eac71e4ff90914f69663c8c1e7a117688332ef2ea4f607c643b3e92"
    "9e37f2f2450f31f2291d357fee8cba6ebd49cda393f61731f1fec616cca385cac77dfecbaf8b95f196a697d87d3a0af2a51efe6df21a2e351c2ba83729fc1719",
    "bea274ff049acbe44b613d6c52f15fe4e813758f3183ff72a9acd94e44ff8bdebbe9d6f4f453480cfff30cff3cbf7f46c641bef210ef04fc807f581f8e811f58"
    "1f162c9ff4f9d9194efd0799fa290df776678fbbbce336effbf4611f27c4ebbb11f7c2e7532aa6d31cd2ef49c42909ecfba02d903da702fb7a04cb676d5f38a7",
    "02e754faf9773ade8b1cf9c3f7310cfaf934fc7b8c3c8c407f48bfbf15fcbb60f9aced0bfe1dfc7b3fff6ec73bcc5f01f749e0fe161a6de75514b633a555e03e"
    "e218a2d038807388300e76a3ff17d867d33d97e5561cd9ef49c4f9c3f6dbc89dcff2bb4602370fc37d526a709fb47d559e47746b6d05ed9aacf3885473388f98",
    "07bc276ddf22473eec2780fd043b09ef0ad6a78851c1ad656234ed21fd9ef7fc65af01d2f9cb3f1f74209edf4db85fa58bbe7ded52f0fcf0ea5dec9c674f7d1c"
    "780d827110f0eff471c0c3abc0ba95079b2b7ad3ce02ff2acfd7741b229fdf04fc0b96cf1affbce700dc171e6bbe0bf7850b96e7ed273e86c2f6a67492efa186",
    "f7f1005eb3c42b2f7e80f7a08df4bbf01e34c1f259fbddbda1faf722626c29c99b24ef77dd1fd5a6e106cb5b0afcee6f4e5d02bc8a94cfcaae3c7f1cf55e5566"
    "3e57215bd1fd9c04becf32fc67c5fa2172bee02a2eeb8f8f1cba0af856310f8c99e71a82ef296f9e53368deebe9671e364c3b406d60393c0f31986ff4cdc7653",
    "85e5ef9b7cf7f232e05985bf4ecaae0af62912fb7c93e8cea2b1d2ac638b9495f8ed3687ff22c37f51ac3fa2f3784c0314c4291f1dfe18f27979c6fdb8f1b6b6"
    "6ea7128f9c62f84f8ddd5eacd3e6bafa2ad86fd87e66e918f86f15384ecaaee0bfc17f03ee07e50aacc7fbdb97a6a967efd59bb3fc5ff4ba94af79b74f24fcfb",
    "9b9f9c06ff9e679cf3f28e02f7fb6a8d86be7ddd83cc42d3283bc4347af5cf70eabf87a99fd2d54e2da59a7f59b088bf5f66ea5916eb9f48fc473448761c7cf5"
    "f9d3300e44cab7513eec9c94ff4f7a1f223c07261bff59e71d8b1cf9df62e4539ac1fd4dcd3288b1112f8f297a8e2efabd0723fb61f88b0f7a90efe82ebddff0",
    "3158f79c0cbcf3fcf17e463ea5896d6886207ff6f9767f5f8aa7b3fc3e42d89722583e6b5c8f9b7fc40dfef9ff51fe3a8df90bc5b1aba78a73ce7ffae53ce058"
    "a47c56765570be99d80bbaa93973ba66dbdd7a933ae7b9c0e8b320d60f43f28d3dc5e5ee7369c3b966c1f279f05f5172a3def34277e9c9faebb878be326e831b",
    "16d9d21c5ce8282d793f11c41f82e5b3b6af82fc49953ac165f76f7a5fbb92c2bbca736b3dc5a5df9f07fe5bb07cd6f17691235f206f52d59da76cfac69734f2"
    "84b30cffac587f0cc1bba7b88afd008077c1f279b2af68dc426c7ca3a9e989ce3363eeb78dc89778bacae6bddff8d70ffe027816289f955d673872ef65e4d2af",
    "775ad1afa754362d9c649efb3223ff325210a7f52b2f776fd67b9fc1bd2a42e5db281f76e6c52902e7eb0dcdda2046b9b629b39f85d71f2b0cdf0a52b2bed3d5"
    "5d32aff2f6b3d760ff9648f977d0683bbf8ac276a6b462dc4f05a4bf9cad66dd27a9f805d67b2613e759d935a9fdb949c533b02f7767e03debf9675c7ce67fbd",
    "de6d29cd335185e5cfc71dfc2906ff2d527e0d8db6eb13286c574a73cfdfe396566fe858f6fcb2617aaf76d0ac92edb8218ef74ec5a87e8d83e71a87ff24c37f"
    "52a4dd830a4be651663ef8f44b78afa20abf5c44617b525afefe2aff95b88ad67de0fe4ed4c50ddcdb26583e6bdcf3fc3adcd32c8417b8a759b07cd67857e5e7",
    "e1be5af0fb933c0e787815c8a7c37db59dbf03fe270fffbce700dc571b2b6f037977c1f259e35fb5ff4f3aee077f3fb978ff3f0f8ba95b",
    "" };

  nameCaptureInfo = NULL;
  emlrtNameCaptureMxArrayR2016a(data, 101408U, &nameCaptureInfo);
  return nameCaptureInfo;
}

/* End of code generation (_coder_Cholesky_mex_info.c) */