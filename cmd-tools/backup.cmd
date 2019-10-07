@echo off
pushd "%~dp0"

wsl --export WslServer %userprofile%\WslServer-backup.tar.gz

:exit
popd
@echo on