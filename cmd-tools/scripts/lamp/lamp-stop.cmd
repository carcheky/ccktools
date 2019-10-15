@echo off
pushd "%~dp0"
@echo on
echo "Parando lamp... espera"
@echo off
wsl --distribution WslServer --user user /home/user/ccktools/bin/lamp stop
wsl --distribution WslServer --user user /home/user/ccktools/bin/wsl-notify stoped

:exit
exit
::popd
@echo on
