@echo off
pushd "%~dp0"
@echo on
echo  "Iniciando lamp... espera"
@echo off
wsl --distribution WslServer --user user /home/user/ccktools/bin/lamp start
wsl --distribution WslServer --user user /home/user/ccktools/bin/wsl-notify started

:exit
exit
::popd
@echo on
