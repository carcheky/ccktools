@echo off
pushd "%~dp0"

wsl --distribution WslServer echo "Actualizando ccktools"
wsl --distribution WslServer --user user /home/user/ccktools/bin/wsl-update

:exit
popd
@echo on