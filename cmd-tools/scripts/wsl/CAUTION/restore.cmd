@echo off
pushd "%~dp0"

echo Importando Backup WslServer, espera...
wsl --import WslServer %APPDATA%\WslServer %SYSTEMDRIVE%\wsl\Wsl_Backups\WslServer-backup-DISTRO.tar.gz

wsl -s WslServer

:exit
popd
@echo on
