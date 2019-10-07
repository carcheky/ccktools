@echo off
pushd "%~dp0"

wsl --distribution WslServer --user user /home/user/ccktools/bin/lamp restart

:exit
popd
@echo on