@echo off
pushd "%~dp0"
@echo on
echo "Parando lamp... espera"
@echo off
wsl --distribution WslServer --user user /home/user/ccktools/bin/lamp stop

:exit
exit
::popd
@echo on
