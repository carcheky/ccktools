@echo off
pushd "%~dp0"

@echo on
echo "Exportando BBDD, espera..."
@echo off
wsl --terminate WslServer
wsl --distribution WslServer --user user /home/user/ccktools/bin/lamp start
wsl --distribution WslServer --user user /home/user/ccktools/bin/build-distro-wslserver export
wsl --terminate WslServer

echo "Haciendo backup, espera..."
wsl --export WslServer %SYSTEMDRIVE%\wsl\Wsl_Backups\BUILD-WslServer-backup-DISTRO.tar.gz

echo "Importando BBDD, espera..."
wsl --distribution WslServer --user user /home/user/ccktools/bin/lamp start
wsl --distribution WslServer --user user /home/user/ccktools/bin/build-distro-wslserver import
wsl --terminate WslServer
:exit
exit
::popd
@echo on
