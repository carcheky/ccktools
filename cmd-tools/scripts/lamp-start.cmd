@echo off
pushd "%~dp0"

wsl --distribution WslServer echo "Iniciando lamp... espera"
wsl --distribution WslServer --user user /home/user/ccktools/bin/lamp start

:exit
popd
@echo on