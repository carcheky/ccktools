@echo off
pushd "%~dp0"

wsl --distribution WslServer

:exit
popd
@echo on