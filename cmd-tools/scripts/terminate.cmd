@echo off
pushd "%~dp0"
@echo on
echo  "Cerrando WslServer y todos sus procesos"
@echo off
wsl --terminate WslServer

:exit
exit
::popd
@echo on
