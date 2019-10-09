@echo off
pushd "%~dp0"

@echo on
echo "Desistalando WslServer, espera..."
@echo off

set TARGET_DIR=%APPDATA%\WslServer
wsl --unregister WslServer
if exist %TARGET_DIR% rmdir /s /q %TARGET_DIR%


echo Importando Backup WslServer, espera...
wsl --import WslServer %APPDATA%\WslServer %SYSTEMDRIVE%\wsl\Wsl_Backups\WslServer-backup-DISTRO.tar.gz

wsl -s WslServer

:: powershell C:\wsl\user\ccktools\cmd-tools\scripts\wsl\CAUTION\set-default-user.ps1

:exit
popd
@echo on
