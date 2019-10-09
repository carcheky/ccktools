@echo off
pushd "%~dp0"

echo Importando Backup WslServer, espera...
wsl --import WslServer %APPDATA%\WslServer %SYSTEMDRIVE%\wsl\Wsl_Backups\WslServer-backup-DISTRO.tar.gz

wsl -s WslServer

wsl --distribution WslServer --user user /home/user/ccktools/bin/mysql-import-all

:: powershell.exe -File C:\wsl\user\ccktools\cmd-tools\scripts\wsl\set-default-user.ps1

:exit
popd
@echo on
