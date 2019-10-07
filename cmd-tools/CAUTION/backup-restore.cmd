@echo off
pushd "%~dp0"

wsl --import WslServer %SYSTEMDRIVE%\wsl\Distro\WslServer %SYSTEMDRIVE%\wsl\WslDistros\WslServer-backup.tar.gz

:exit
popd
@echo on