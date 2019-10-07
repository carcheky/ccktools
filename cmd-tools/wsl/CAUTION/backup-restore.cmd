@echo off
pushd "%~dp0"

wsl --distribution WslServer echo "Restaurando backup, espera..."
wsl --import WslServer %SYSTEMDRIVE%\wsl\Distro\WslServer %SYSTEMDRIVE%\wsl\WslDistros\WslServer-backup.tar.gz
wsl --upgrade WslServer

:exit
popd
@echo on