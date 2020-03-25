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
  GOTO :1
:7
  start C:\wsl\user\ccktools\cmd-tools\scripts\lamp\lamp-vhostnew.cmd
  GOTO :GUI
:8
  start C:\wsl\user\ccktools\cmd-tools\scripts\run.cmd
  GOTO :GUI
:9
  start C:\wsl\user\ccktools\cmd-tools\scripts\wsl\update-ccktools.cmd
  GOTO :1
:10
  start C:\wsl\user\ccktools\cmd-tools\scripts\wsl\build-distro-wslserver.cmd
  GOTO :GUI
:11
  start C:\wsl\user\ccktools\cmd-tools\scripts\windows\edit.cmd
  GOTO :GUI
:12
  start C:\wsl\user\ccktools\cmd-tools\scripts\wsl\fix-bin.cmd
  GOTO :GUI
:13
  start C:\wsl\user\ccktools\cmd-tools\scripts\wsl\CAUTION\install-build.cmd
  GOTO :GUI

GOTO :EOF
-->
<HTML>

<HEAD>
  <HTA:APPLICATION
  ID="wslserver_manager"
  VERSION="3.3"
  APPLICATIONNAME="WslServer Manager backup stable-3.3"
  ICON="..\IMG\icon.ico"
  SYSMENU="no"
  SCROLL="no"
  SINGLEINSTANCE="yes" />
  <!--
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
    window.resizeTo(220, 400);
    WindowLeft = (window.screen.availWidth - 220);
    WindowTop = (window.screen.availHeight - 400);
    window.moveTo(WindowLeft, WindowTop);

    function closeHTA(reply) {
      var fso = new ActiveXObject("Scripting.FileSystemObject");
      fso.GetStandardStream(1).WriteLine(reply);
      window.close();
    }
  </SCRIPT>
  <style>
    body {
      font-size: 20px;
    }

    button {
      font-size: 25px;
      border: 1px solid black;
      color: white;
      width: 98%;
      margin: 1%;
      cursor: pointer;
      display: block;
    }

    button:hover {}

    .lamp-buttons button {
      font-weight: bold;
    }

    .lamp-buttons .start {
      background: green;
    }

    .lamp-buttons .stop {
      background: maroon;
    }

    .lamp-buttons .restart {
      background: yellow;
      color: black;
    }

    .mix-buttons,
    .another-mix-buttons {
      width: 100%;
    }

    .mix-buttons button,
    .another-mix-buttons button {
      font-size: 18px;
      background: black;
      margin: 1%;
      float: left;
      width: 47%;
    }
    .another-mix-buttons button {
      font-weight: bold;
      font-size: 15px;
      background: gray;
      color: black;
    }

    .exit_buttons button {
      background: maroon;
      margin: 0;
      padding: 2px 5px;
      border: 1px solid black;
      font-size: 15px;
      font-weight: bolder;
      float: left;
      width: 48%;
      margin: 1%;
      border: 3px solid maroon;
    }
    .exit_buttons button.kill {
      font-size: 15px;
      background: #1c1712;
      border: 3px double red;
    }
    .separador {
      width: 100%;
      line-height: 0;
    }
  </style>
  <meta http-equiv="x-ua-compatible" content="ie=edge" />
</HEAD>

<BODY>

  <div class="another-mix-buttons">
    <button class="edit" onclick="closeHTA(11);" title="edit ccktools">cckedit</button>
    <button class="update" onclick="closeHTA(9);" title="actualiza el programita">update</button>
    <button class="fix-bin" onclick="closeHTA(12);" title="actualiza el programita">fix-bin</button>
  </div>
  <div class="separador"></div>
  <div class="separador"></div>
  <div class="another-mix-buttons">
    <button class="backup" onclick="closeHTA(5);" title="copia de seguridad de tu servidor">backup</button>
    <button class="build" onclick="closeHTA(10);"
      title="Exporta la distribución linux sin bases de datos para importar en otro pc">build</button>
  </div>

    <div class="separador"></div>
  <div class="separador"></div>
  <div class="another-mix-buttons">
    <button class="backup" onclick="closeHTA(13);" title="install">install build</button>
  </div>

  <div class="separador"></div>
  <div class="separador"></div>
  <div class="exit_buttons">
    <button class="kill" onclick="closeHTA(6);" title="mata todos los procesos del servidor y sale">kill</button>
    <button class="exit" onclick="closeHTA(1);" title="salir">salir</button>
  </div>


</BODY>

</HTML>
