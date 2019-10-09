<!-- :: Batch section
@echo off
setlocal

echo Select an option:
for /F "delims=" %%a in ('mshta.exe "%~F0"') do set "HTAreply=%%a"
CALL :%HTAreply%
goto :EOF


:1
  EXIT /B 0
:2
  wsl --distribution WslServer echo "Iniciando lamp... espera"
  wsl --distribution WslServer --user user /home/user/ccktools/bin/lamp start
  EXIT /B 0
:3
  wsl --distribution WslServer echo "Parando lamp... espera"
  wsl --distribution WslServer --user user /home/user/ccktools/bin/lamp stop
  EXIT /B 0
:4
  wsl --distribution WslServer echo "Reiniciando lamp... espera"
  wsl --distribution WslServer --user user /home/user/ccktools/bin/lamp restart
  EXIT /B 0
:5
  wsl --distribution WslServer echo "Haciendo backup, espera..."
  wsl --distribution WslServer --user user /home/user/ccktools/bin/lamp start
  wsl --distribution WslServer /home/user/ccktools/bin/mysql-export-all
  wsl --terminate WslServer
  wsl --export WslServer %SYSTEMDRIVE%\wsl\WslDistros\WslServer-backup.tar.gz
  EXIT /B 0
:6
  wsl --distribution WslServer echo "Parando procesos WslServer"
  wsl --terminate WslServer
  EXIT /B 0


goto :EOF

-->


<HTML>
<HEAD>
<HTA:APPLICATION SCROLL="no" SYSMENU="yes" >

<TITLE>WslServerGui</TITLE>
<SCRIPT language="JavaScript">
window.resizeTo(374,500);

function closeHTA(reply){
   var fso = new ActiveXObject("Scripting.FileSystemObject");
   fso.GetStandardStream(1).WriteLine(reply);
   window.close();
}

</SCRIPT>
<style>
body{
  font-family:  Arial;
}
button{
  border: 1px solid black;
  background: gray;
  color: white;
  font-weight: bold;
}
.lamp_buttons button{
  width: 30%;
  margin: 1%;

}
.lamp_start{
  background: green;
}
.lamp_stop{
  background: red;
}
.lamp_restart{
  background: orange;
}
</style>
</HEAD>
<BODY>
  <h3>LAMP</h3>
  <div class="lamp_buttons">
    <button class="lamp_start" onclick="closeHTA(2);">START</button>
    <button class="lamp_stop" onclick="closeHTA(3);">STOP</button>
    <button class="lamp_restart" onclick="closeHTA(4);">RESTART</button>
  </div>
  <h3>WslServer tools</h3>
  <div class="wslserver_buttons">
    <button class="backup" onclick="closeHTA(5);">backup</button>
    <button class="terminate" onclick="closeHTA(6);">terminate</button>
  </div>
</BODY>
</HTML>
