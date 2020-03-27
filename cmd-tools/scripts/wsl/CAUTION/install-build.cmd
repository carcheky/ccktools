@echo off
pushd "%~dp0"

@echo on
echo "Importando Backup WslServer, espera..."
@echo off
wsl --import WslServer %APPDATA%\WslServer %SYSTEMDRIVE%\wsl\backups\wsl\BUILD-WslServer-backup-DISTRO.tar.gz

ping 127.0.0.1 -n 6 > nul
@echo on
echo "Estableciendo WslServer por defecto, espera..."
@echo off
wsl -s WslServer

ping 127.0.0.1 -n 6 > nul

@echo on
echo "seleccionando usuario..."
@echo off
powershell C:\wsl\user\ccktools\cmd-tools\scripts\wsl\CAUTION\set-default-user.ps1

ping 127.0.0.1 -n 6 > nul
:exit
exit
::popd
@echo on
