@echo off
pushd "%~dp0"

wsl --distribution WslServer echo "Haciendo backup, espera..."
wsl --distribution WslServer /home/user/ccktools/bin/mysql-export-all
wsl --distribution WslServer rm -fr /tmp/*
wsl --terminate WslServer
wsl --export WslServer %SYSTEMDRIVE%\wsl\WslDistros\WslServer-backup.tar.gz

:exit
popd
@echo on
