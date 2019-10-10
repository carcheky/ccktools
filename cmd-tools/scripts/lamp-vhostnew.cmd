@echo off
pushd "%~dp0"
@echo on
echo "newvhost"
@echo off
wsl --distribution WslServer --user user bash /home/user/ccktools/bin/vhostnew

:exit
exit
::popd
@echo on
