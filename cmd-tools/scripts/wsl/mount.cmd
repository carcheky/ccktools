@echo off
pushd "%~dp0"

@echo on
echo "Montando wsl"
@echo off
start \\wsl$\WslServer

:exit
exit
::popd
@echo on
