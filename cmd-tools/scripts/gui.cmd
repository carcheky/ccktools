<!-- :: Batch section
@echo off
setlocal
:GUI
echo Select an option:
for /F "delims=" %%a in ('mshta.exe "%~F0"') do set "HTAreply=%%a"
CALL :%HTAreply%
GOTO :1
:: EXIT
:1
  EXIT /B 0
:: LAMP TOOLS
:2
  start C:\wsl\user\ccktools\cmd-tools\scripts\lamp\lamp-start.cmd
  GOTO :GUI
:3
  start C:\wsl\user\ccktools\cmd-tools\scripts\lamp\lamp-stop.cmd
  GOTO :GUI
:4
  start C:\wsl\user\ccktools\cmd-tools\scripts\lamp\lamp-restart.cmd
  GOTO :GUI
:: WSL TOOLS
:5
  start C:\wsl\user\ccktools\cmd-tools\scripts\wsl\backup.cmd
  GOTO :GUI
:6
  start C:\wsl\user\ccktools\cmd-tools\scripts\wsl\terminate.cmd
  GOTO :GUI
:7
  start C:\wsl\user\ccktools\cmd-tools\scripts\lamp\lamp-vhostnew.cmd
  GOTO :GUI
:8
  start C:\wsl\user\ccktools\cmd-tools\scripts\run.cmd
  GOTO :GUI
:9
  start C:\wsl\user\ccktools\cmd-tools\scripts\wsl\update-ccktools.cmd
  GOTO :GUI
GOTO :EOF
-->
<HTML>
<HEAD>
<HTA:APPLICATION
ID="wslserver_manager"
ICON="..\IMG\icon.ico"
SYSMENU="no"
REM APPLICATIONNAME="WslServer Manager"
SCROLL="yes"
BORDER="none"
BORDERSTYLE="sunken"
REM CAPTION="yes"
REM MAXIMIZEBUTTON="yes"
REM MINIMIZEBUTTON="yes"
REM SHOWINTASKBAR="yes"
REM SINGLEINSTANCE="yes"
REM VERSION="1.0"
REM WINDOWSTATE="maximize"
/>
<TITLE>WslServer Manager</TITLE>
<SCRIPT language="JavaScript">
window.resizeTo(200,220);
WindowLeft = (window.screen.availWidth - 200)  ;
WindowTop  = (window.screen.availHeight - 220);
window.moveTo( WindowLeft, WindowTop);
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
  font-size: 12px;
  width: 98%;
  margin: 1%;
  cursor: pointer;
  display: block;
}
button:hover{
  
}
.lamp_buttons button{
  
}
.lamp_buttons .start{
    background: green;
}
.lamp_buttons .stop{
    background: red;
}
.lamp_buttons .restart{
    background: orange;
}
.exit_buttons button{
    float: right;
  background: black;
  font-size: 8px;
  width: auto;
}
.exit_buttons .exit{
  border-radius: 100px;
background: red;
}
</style>
</HEAD>
<BODY>
  <div class="exit_buttons">
    <button class="exit" onclick="closeHTA(1);" title="cerrar">X</button>
    <button class="terminal" onclick="closeHTA(8);" title="abre una nueva terminal">terminal</button>
    <button class="kill" onclick="closeHTA(6);" title="mata todos los procesos del servidor">kill</button>
    <button class="update" onclick="closeHTA(9);" title="actualiza el programita">update</button>
  </div>
  <div class="lamp_buttons flex">
    <button class="start" onclick="closeHTA(2);" title="Arranca el servidor apache + mysql">START</button>
    <button class="stop" onclick="closeHTA(3);" title="Para el servidor apache + mysql">STOP</button>
    <button class="restart" onclick="closeHTA(4);" title="Reinicia el servidor apache + mysql">RESTART</button>
    <hr>
    <button class="newvhost" onclick="closeHTA(7);" title="Asistente para crear un nuevo virtual host con drupal instalado">NEW VHOST</button>
    <hr>
    <button class="backup" onclick="closeHTA(5);" title="copia de seguridad de tu servidor">BACKUP</button>
  </div>
</BODY>
</HTML>
