@echo off
pushd "%~dp0"

wsl --distribution WslServer --user user ls

:exit
popd
@echo on