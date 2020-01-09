@echo off
pushd "%~dp0"

wsl --terminate WslServer
wsl --distribution WslServer --user user /home/user/ccktools/bin/fix-bin

:exit
exit
::popd
@echo on
