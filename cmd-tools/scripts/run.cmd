@echo off
pushd "%~dp0"

wsl --distribution WslServer --user user

:exit
exit
::popd
@echo on
