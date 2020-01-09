<!-- :: Batch section
@echo off
setlocal

:GUI
echo Select an option:
for /F "delims=" %%a in ('mshta.exe "%~F0"') do set "HTAreply=%%a"
CALL :%HTAreply%
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
:11
  start C:\wsl\user\ccktools\cmd-tools\scripts\windows\edit.cmd
  GOTO :GUI

GOTO :EOF
-->
<HTML>

<HEAD>
  <HTA:APPLICATION
  ID="wslserver_manager"
  APPLICATIONNAME="WslServer Manager"
  VERSION="1.0"
  ICON="..\IMG\icon.ico"
  SINGLEINSTANCE="yes" />
  <!--
  SCROLL="yes"
  SYSMENU="no"
  BORDER="none"
  BORDERSTYLE="normal"
  CAPTION="yes"
  MAXIMIZEBUTTON="yes"
  MINIMIZEBUTTON="yes"
  SHOWINTASKBAR="yes"
  WINDOWSTATE="maximize"
  -->
  <TITLE>WslServer Manager</TITLE>
  <SCRIPT language="JavaScript">
    window.resizeTo(250, 250);
    WindowLeft = (window.screen.availWidth - 250);
    WindowTop = (window.screen.availHeight - 250);
    window.moveTo(WindowLeft, WindowTop);

    function closeHTA(reply) {
      var fso = new ActiveXObject("Scripting.FileSystemObject");
      fso.GetStandardStream(1).WriteLine(reply);
      window.close();
    }
  </SCRIPT>
  <style>
    /* prefixed by https://autoprefixer.github.io (PostCSS: v7.0.23, autoprefixer: v9.7.3) */

    body {
      font-family: comic-sans;
    }

    button {
      border: 1px solid black;
      background: gray;
      color: white;
      width: 98%;
      margin: 1%;
      cursor: pointer;
      display: block;
    }

    button:hover {}

    .lamp_buttons button {
      font-weight: bold;
    }

    .lamp_buttons .start {
      background: green;
    }

    .lamp_buttons .stop {
      background: red;
    }

    .lamp_buttons .restart {
      background: orange;
    }

    .mix_buttons {
      width: 100%;
      display: -ms-flexbox;
      display: flex;
    }

    .mix_buttons button {
      -ms-flex: 1 1 50%;
      flex: 1 1 50%;
      float: left;
      background: black;
      font-size: 12px;
      margin: 1%;
      padding: 0;
      width: 46%;
    }

    .exit_buttons button.exit {
      font-size: 15px;
      background: red;
      margin: 0;
      padding: 2px 5px;
      border: 1px solid black;
      font-weight: 400 !important;
    }

    hr {
      clear: both;
      width: 100%;
      padding: 200px;
      display:block;
    }

  </style>
  <meta http-equiv="x-ua-compatible" content="ie=edge" />
</HEAD>

<BODY>
  <!--
   -->
  <div class="exit_buttons">
    <button class="exit" onclick="closeHTA(1);" title="cerrar">X</button>
    <hr>
  </div>
  <div class="mix_buttons">
    <button class="newvhost" onclick="closeHTA(7);"
      title="Asistente para crear un nuevo virtual host con drupal instalado">add</button>
    <button class="terminal" onclick="closeHTA(8);" title="abre una nueva terminal">terminal</button>
    <button class="kill" onclick="closeHTA(6);" title="mata todos los procesos del servidor">kill</button>
    <hr>
  </div>
  <div class="lamp_buttons flex">
    <button class="start" onclick="closeHTA(2);" title="Arranca el servidor apache + mysql">START</button>
    <button class="restart" onclick="closeHTA(4);" title="Reinicia el servidor apache + mysql">RESTART</button>
    <button class="stop" onclick="closeHTA(3);" title="Para el servidor apache + mysql">STOP</button>
    <hr>
    <button class="backup" onclick="closeHTA(5);" title="copia de seguridad de tu servidor">BACKUP</button>
    <button class="backup" onclick="closeHTA(10);"
      title="Exporta la distribución linux sin bases de datos para importar en otro pc">BUILD</button>
    <hr>
  </div>
  <div class="mix_buttons">
    <button class="edit" onclick="closeHTA(11);" title="edit ccktools">cckedit</button>
    <button class="update" onclick="closeHTA(9);" title="actualiza el programita">update</button>
    <hr>
  </div>
</BODY>

</HTML>