@echo off
pushd "%~dp0"
@echo on
echo "newvhost"
@echo off
wsl --distribution WslServer --user user bash /home/user/ccktools/bin/vhostnew

:exit
popd
@echo on
