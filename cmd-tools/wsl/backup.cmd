@echo off
pushd "%~dp0"

wsl --distribution WslServer rm -fr /tmp/*
wsl --export WslServer %SYSTEMDRIVE%\wsl\WslDistros\WslServer-backup.tar.gz

:exit
popd
@echo on