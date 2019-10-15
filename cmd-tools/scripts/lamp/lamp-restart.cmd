@echo off
pushd "%~dp0"
@echo on
echo "Reiniciando lamp... espera"
@echo off
wsl --distribution WslServer --user user /home/user/ccktools/bin/lamp restart
wsl --distribution WslServer --user user /home/user/ccktools/bin/wsl-notify restarted

:exit
exit
::popd
@echo on
