<!-- :: Batch section
@echo off
setlocal

:GUI
echo Select an option:
for /F "delims=" %%a in ('mshta.exe "%~F0"') do set "HTAreply=%%a"
CALL :%HTAreply%
goto :1

:: EXIT
:1
  EXIT /B 0

:: LAMP TOOLS
:2
  CALL C:\wsl\user\ccktools\cmd-tools\scripts\lamp-start.cmd
  GOTO :GUI
:3
    CALL C:\wsl\user\ccktools\cmd-tools\scripts\lamp-stop.cmd
  GOTO :GUI
:4
  CALL C:\wsl\user\ccktools\cmd-tools\scripts\lamp-restart.cmd
  GOTO :GUI

:: WSL TOOLS
:5
  CALL C:\wsl\user\ccktools\cmd-tools\scripts\wsl\backup.cmd
  GOTO :GUI
:6
  CALL C:\wsl\user\ccktools\cmd-tools\scripts\terminate.cmd
  GOTO :GUI
:7
  CALL C:\wsl\user\ccktools\cmd-tools\scripts\lamp-vhostnew.cmd
  GOTO :GUI

:8
  CALL C:\wsl\user\ccktools\cmd-tools\scripts\run.cmd
  GOTO :GUI


goto :EOF

-->


<HTML>
<HEAD>
<HTA:APPLICATION SCROLL="yes" SYSMENU="yes" >

<TITLE>WslServerGui</TITLE>
<SCRIPT language="JavaScript">
window.resizeTo(400,400);

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
  border: 2px solid black;
  background: gray;
  color: white;
  font-weight: bold;
  width: 31%;
  margin: 1%;
  cursor: pointer;
}
button:hover{
  opacity: .9;
}
.lamp_buttons button{

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
button.exit{
  float: right;
  background: black;
  font-size: 10px;
  width: auto;
}
</style>
</HEAD>
<BODY>
  <div class="exit">
    <button class="exit" onclick="closeHTA(1);">exit</button>
    <button class="exit" onclick="closeHTA(8);">terminal</button>
  </div>
  <h3>WslServer tools</h3>
  <div class="wslserver_buttons">
    <button class="newvhost" onclick="closeHTA(7);">VHOST</button>
    <button class="backup" onclick="closeHTA(5);">BACKUP</button>
    <button class="terminate" onclick="closeHTA(6);">TERMINATE</button>
  </div>
  <h3>LAMP</h3>
  <div class="lamp_buttons flex">
    <button class="lamp_start" onclick="closeHTA(2);">START</button>
    <button class="lamp_stop" onclick="closeHTA(3);">STOP</button>
    <button class="lamp_restart" onclick="closeHTA(4);">RESTART</button>
  </div>


</BODY>
</HTML>
