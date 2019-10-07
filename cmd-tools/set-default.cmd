@echo off
pushd "%~dp0"

wsl -s WslServer

:exit
popd
@echo on