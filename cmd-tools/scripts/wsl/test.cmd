@echo off
pushd "%~dp0"

powershell.exe -File C:\wsl\user\ccktools\cmd-tools\scripts\wsl\set-default-user.ps1

:exit
popd
@echo on
