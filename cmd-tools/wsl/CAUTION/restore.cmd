@echo off
pushd "%~dp0"

wsl --import WslServer %APPDATA%\WslServer %SYSTEMDRIVE%\wsl\WslDistros\WslServer-backup.tar.gz
REM wsl --upgrade WslServer
wsl -s WslServer

:exit
popd
@echo on
