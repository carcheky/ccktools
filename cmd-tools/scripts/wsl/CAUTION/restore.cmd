@echo off
pushd "%~dp0"


wsl --distribution WslServer echo "Desistalando WslServer, espera..."
set TARGET_DIR=%APPDATA%\WslServer
wsl --unregister WslServer
if exist %TARGET_DIR% rmdir /s /q %TARGET_DIR%


echo Importando Backup WslServer, espera...
wsl --import WslServer %APPDATA%\WslServer %SYSTEMDRIVE%\wsl\Wsl_Backups\WslServer-backup-DISTRO.tar.gz

wsl -s WslServer

:: powershell.exe -File C:\wsl\user\ccktools\cmd-tools\scripts\wsl\set-default-user.ps1

:exit
popd
@echo on
