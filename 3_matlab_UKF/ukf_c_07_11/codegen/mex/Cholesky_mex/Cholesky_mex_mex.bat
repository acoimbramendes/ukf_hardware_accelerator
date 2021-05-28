@echo off
set MATLAB=D:\matlab\R2016a
set MATLAB_ARCH=win64
set MATLAB_BIN="D:\matlab\R2016a\bin"
set ENTRYPOINT=mexFunction
set OUTDIR=.\
set LIB_NAME=Cholesky_mex
set MEX_NAME=Cholesky_mex
set MEX_EXT=.mexw64
call "D:\matlab\R2016a\sys\lcc64\lcc64\mex\lcc64opts.bat"
echo # Make settings for Cholesky_mex > Cholesky_mex_mex.mki
echo COMPILER=%COMPILER%>> Cholesky_mex_mex.mki
echo COMPFLAGS=%COMPFLAGS%>> Cholesky_mex_mex.mki
echo OPTIMFLAGS=%OPTIMFLAGS%>> Cholesky_mex_mex.mki
echo DEBUGFLAGS=%DEBUGFLAGS%>> Cholesky_mex_mex.mki
echo LINKER=%LINKER%>> Cholesky_mex_mex.mki
echo LINKFLAGS=%LINKFLAGS%>> Cholesky_mex_mex.mki
echo LINKOPTIMFLAGS=%LINKOPTIMFLAGS%>> Cholesky_mex_mex.mki
echo LINKDEBUGFLAGS=%LINKDEBUGFLAGS%>> Cholesky_mex_mex.mki
echo MATLAB_ARCH=%MATLAB_ARCH%>> Cholesky_mex_mex.mki
echo BORLAND=%BORLAND%>> Cholesky_mex_mex.mki
echo OMPFLAGS= >> Cholesky_mex_mex.mki
echo OMPLINKFLAGS= >> Cholesky_mex_mex.mki
echo EMC_COMPILER=lcc64>> Cholesky_mex_mex.mki
echo EMC_CONFIG=optim>> Cholesky_mex_mex.mki
"D:\matlab\R2016a\bin\win64\gmake" -B -f Cholesky_mex_mex.mk
