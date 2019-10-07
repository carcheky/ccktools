@echo off
pushd "%~dp0"

wsl --distribution WslServer echo "Restaurando backup, espera..."
wsl --import WslServer %SYSTEMDRIVE%\WslServer %SYSTEMDRIVE%\wsl\WslDistros\WslServer-backup.tar.gz
wsl --upgrade WslServer

:exit
popd
@echo on