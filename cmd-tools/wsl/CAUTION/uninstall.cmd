@echo off
pushd "%~dp0"

wsl --distribution WslServer echo "Desistalando WslServer, espera..."
set TARGET_DIR=%SYSTEMDRIVE%\wsl\Distro\WslServer
wsl --unregister WslServer
if exist %TARGET_DIR% rmdir /s /q %TARGET_DIR%

:exit
popd
@echo on