@echo off
pushd "%~dp0"

@echo on
echo "Exportando BBDD, espera..."
@echo off

for /f %%x in ('wmic path win32_utctime get /format:list ^| findstr "="') do set %%x
set today=%Year%-%Month%-%Day%-%Hour%-%Minute%-%Second%

wsl --terminate WslServer
wsl --distribution WslServer --user user /home/user/ccktools/bin/lamp start
wsl --distribution WslServer --user user /home/user/ccktools/bin/mysql-export-all %today%
wsl --distribution WslServer --user user /home/user/ccktools/bin/build-distro-wslserver export
wsl --terminate WslServer

echo "Compilando, espera..."
wsl --export WslServer %SYSTEMDRIVE%\wsl\backups\wsl\BUILD-WslServer-backup-DISTRO-%today%.tar.gz

echo "Restaurando BBDD, espera..."
wsl --distribution WslServer --user user /home/user/ccktools/bin/lamp start
wsl --distribution WslServer --user user /home/user/ccktools/bin/build-distro-wslserver import
wsl --terminate WslServer


pause
:exit
exit
::popd
@echo on
