@echo off
pushd "%~dp0"

wsl --distribution WslServer echo "Haciendo backup, espera..."
wsl --terminate WslServer
wsl --distribution WslServer --user user /home/user/ccktools/bin/lamp start
wsl --distribution WslServer --user user /home/user/ccktools/bin/mysql-export-all
wsl --terminate WslServer
wsl --export WslServer %SYSTEMDRIVE%\wsl\Wsl_Backups\WslServer-backup.tar.gz

:exit
popd
@echo on
