@echo off
pushd "%~dp0"

@echo on
echo "Importando Backup WslServer, espera..."
@echo off
wsl --import WslServer %APPDATA%\WslServer %SYSTEMDRIVE%\wsl\backups\wsl\WslServer-backup-DISTRO.tar.gz

sleep 1

@echo on
echo "Estableciendo WslServer por defecto, espera..."
@echo off
wsl -s WslServer

sleep 15
@echo on
echo "seleccionando usuario..."
@echo off
powershell C:\wsl\user\ccktools\cmd-tools\scripts\wsl\CAUTION\set-default-user.ps1

sleep 5

:exit
exit
::popd
@echo on
