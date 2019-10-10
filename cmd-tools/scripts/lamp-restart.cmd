@echo off
pushd "%~dp0"
@echo on
echo "Reiniciando lamp... espera"
@echo off
wsl --distribution WslServer --user user /home/user/ccktools/bin/lamp restart

:exit
exit
::popd
@echo on
