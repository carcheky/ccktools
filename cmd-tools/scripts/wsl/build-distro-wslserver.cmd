@echo off
pushd "%~dp0"

@echo on
echo "Haciendo backup, espera..."
@echo off
wsl --terminate WslServer
wsl --distribution WslServer --user user /home/user/ccktools/bin/lamp start
wsl --distribution WslServer --user user /home/user/ccktools/bin/build-distro-wslserver export
wsl --terminate WslServer
wsl --export WslServer %SYSTEMDRIVE%\wsl\Wsl_Backups\BUILD-WslServer-backup-DISTRO.tar.gz
wsl --distribution WslServer --user user /home/user/ccktools/bin/lamp start
wsl --distribution WslServer --user user /home/user/ccktools/bin/build-distro-wslserver import
wsl --terminate WslServer
:exit
popd
@echo on
