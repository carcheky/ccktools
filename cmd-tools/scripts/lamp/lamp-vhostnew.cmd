@echo off
pushd "%~dp0"
@echo on
echo "newvhost"
@echo off
wsl --distribution WslServer --user user bash /home/user/ccktools/bin/vhostnew
wsl --distribution WslServer --user user /home/user/ccktools/bin/wsl-notify VHOST CREATED
pause
:exit
exit
::popd
@echo on
