@echo off
pushd "%~dp0"

wsl --distribution WslServer echo "Montando wsl"
start \\wsl$\WslServer

:exit
popd
@echo on