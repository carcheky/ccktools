@echo off
pushd "%~dp0"

@echo on
echo "Actualizando ccktools"
@echo off

wsl --distribution WslServer --user user /home/user/ccktools/bin/wsl-update

:exit
popd
@echo on
