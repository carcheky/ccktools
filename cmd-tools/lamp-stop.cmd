@echo off
pushd "%~dp0"

wsl --distribution WslServer --user user /home/user/ccktools/bin/lamp stop

:exit
popd
@echo on
