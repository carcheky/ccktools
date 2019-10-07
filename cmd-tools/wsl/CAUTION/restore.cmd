@echo off
pushd "%~dp0"

wsl --import WslServer %APPDATA%\WslServer %SYSTEMDRIVE%\wsl\WslDistros\WslServer-backup.tar.gz
wsl --upgrade WslServer

:exit
popd
@echo on