@echo off
pushd "%~dp0"

@echo on
echo "Desistalando WslServer, espera..."
@echo off

set TARGET_DIR=%APPDATA%\WslServer
wsl --unregister WslServer
if exist %TARGET_DIR% rmdir /s /q %TARGET_DIR%

:exit
popd
@echo on
