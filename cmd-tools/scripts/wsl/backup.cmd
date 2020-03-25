@echo off
pushd "%~dp0"

@echo on
echo "Haciendo backup, espera..."
@echo off

for /f %%x in ('wmic path win32_utctime get /format:list ^| findstr "="') do set %%x
set today=%Year%-%Month%-%Day%-%Hour%-%Minute%-%Second%

wsl --terminate WslServer
wsl --distribution WslServer --user user /home/user/ccktools/bin/lamp start
wsl --distribution WslServer --user user /home/user/ccktools/bin/mysql-export-all %today%
wsl --terminate WslServer
wsl --export WslServer %SYSTEMDRIVE%\wsl\backups\wsl\WslServer-backup-DISTRO--%today%.tar.gz

:exit
exit
::popd
@echo on
