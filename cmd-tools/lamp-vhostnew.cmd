@echo off
pushd "%~dp0"

wsl --distribution WslServer --user user bash /home/user/ccktools/bin/vhostnew

:exit
popd
@echo on