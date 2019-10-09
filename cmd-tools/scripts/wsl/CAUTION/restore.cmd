@echo off
pushd "%~dp0"

echo Importando Backup WslServer, espera...
wsl --import WslServer %APPDATA%\WslServer %SYSTEMDRIVE%\wsl\Wsl_Backups\WslServer-backup-DISTRO.tar.gz
REM wsl --upgrade WslServer


wsl -s WslServer
powershell.exe -File C:\wsl\user\ccktools\cmd-tools\scripts\wsl\set-default-user.ps1

:exit
popd
@echo on
