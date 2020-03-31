@echo off
pushd "%~dp0"

set TARGET_DIR=%APPDATA%\WslServer
wsl --unregister WslServer
if exist %TARGET_DIR% rmdir /s /q %TARGET_DIR%




curl https://aka.ms/wsl-ubuntu-1804 -L -o install.zip
powershell -Command Expand-Archive -Force install.zip
set TARGET_DIR=%APPDATA%\WslServer
if not exist %TARGET_DIR% mkdir %TARGET_DIR%
wsl --import WslServer %TARGET_DIR% .\install\install.tar.gz
wsl -s WslServer
wsl --upgrade WslServer
:exit
del install.zip
rd /s /q install
pause
popd
@echo on
