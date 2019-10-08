@echo off
pushd "%~dp0"

wsl --distribution WslServer echo "Cerrando WslServer y todos sus procesos"
wsl --terminate WslServer

:exit
popd
@echo on