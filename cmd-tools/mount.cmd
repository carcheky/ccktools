@echo off
pushd "%~dp0"

start \\wsl$\WslServer

:exit
popd
@echo on