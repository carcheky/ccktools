@echo off
pushd "%~dp0"

wsl --import WslServer %APPDATA%\WslServer %SYSTEMDRIVE%\wsl\Wsl_Backups\WslServer-backup-DISTRO.tar.gz
REM wsl --upgrade WslServer
wsl -s WslServer

:exit
popd
@echo on
