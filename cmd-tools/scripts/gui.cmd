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
:10
  start C:\wsl\user\ccktools\cmd-tools\scripts\wsl\build-distro-wslserver.cmd
  GOTO :GUI

GOTO :EOF
-->
<HTML>
<HEAD>
<HTA:APPLICATION
ID="wslserver_manager"
ICON="..\IMG\icon.ico"
SYSMENU="no"
SCROLL="yes"
BORDER="none"
BORDERSTYLE="normal"
REM APPLICATIONNAME="WslServer Manager"
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
window.resizeTo(200,120);
WindowLeft = (window.screen.availWidth - 200)  ;
WindowTop  = (window.screen.availHeight - 120);
window.moveTo( WindowLeft, WindowTop);
function closeHTA(reply){
     var fso = new ActiveXObject("Scripting.FileSystemObject");
   fso.GetStandardStream(1).WriteLine(reply);
   window.close();
}
</SCRIPT>
<style>
body{
  font-family:  comic-sans;
}
button{
  border: 1px solid black;
  background: gray;
  color: white;
  width: 98%;
  margin: 1%;
  cursor: pointer;
  display: block;
}
button:hover{
}
.lamp_buttons button{
  font-weight: bold;
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
.exit_buttons{
  width: 80%;
}
.exit_buttons button{
  float: left;
  background: black;
  font-size: 12px;
  margin: 1%;
  padding: 0;
  width: auto;
}
.exit_buttons button.exit{
  font-size: 15px;
  border-radius: 100px;
  background: red;
  margin: 0;
  padding:2px 5px;
  float:right;
  border: 1px solid black;
  font-weight: 400 !important;
  position:absolute;
  top: 2px;
  right: 0;
}
hr{
  clear: both;
  width: 100%;
}
</style>
<meta http-equiv="x-ua-compatible" content="ie=edge" />
</HEAD>
<BODY>
  <div class="exit_buttons">
    <button class="exit" onclick="closeHTA(1);" title="cerrar">X</button>
    <button class="terminal" onclick="closeHTA(8);" title="abre una nueva terminal">terminal</button>
    <button class="kill" onclick="closeHTA(6);" title="mata todos los procesos del servidor">kill</button>
    <button class="newvhost" onclick="closeHTA(7);" title="Asistente para crear un nuevo virtual host con drupal instalado">+</button>
  </div>
  <div class="lamp_buttons flex">
    <button class="start" onclick="closeHTA(2);" title="Arranca el servidor apache + mysql">START</button>
    <button class="restart" onclick="closeHTA(4);" title="Reinicia el servidor apache + mysql">RESTART</button>
    <button class="stop" onclick="closeHTA(3);" title="Para el servidor apache + mysql">STOP</button>
    <hr>
    <button class="newvhost" onclick="closeHTA(7);" title="Asistente para crear un nuevo virtual host con drupal instalado">+ CREAR SITIO</button>
    <hr>
    <button class="backup" onclick="closeHTA(5);" title="copia de seguridad de tu servidor">BACKUP</button>
    <button class="backup" onclick="closeHTA(10);" title="Exporta la distribución linux sin bases de datos para importar en otro pc">BUILD</button>
  </div>
    <hr>
  <div class="exit_buttons">
    <button class="terminal" onclick="closeHTA(8);" title="abre una nueva terminal">terminal</button>
    <button class="kill" onclick="closeHTA(6);" title="mata todos los procesos del servidor">kill</button>
    <button class="update" onclick="closeHTA(9);" title="actualiza el programita">update</button>
  </div>
  <div class="sites">
  <p>sites:</p>
    <iframe src="http://home.local/app.php" title="site list" width="100%" height="500">
      <p>Your browser does not support iframes.</p>
    </iframe>
  </div>
</BODY>
</HTML>
