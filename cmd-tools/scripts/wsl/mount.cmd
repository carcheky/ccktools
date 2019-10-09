@echo off
pushd "%~dp0"

@echo on
echo "Montando wsl"
@echo off
start \\wsl$\WslServer

:exit
popd
@echo on
