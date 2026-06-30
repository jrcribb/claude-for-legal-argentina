@echo off
REM ============================================================
REM  Instalador SIN git - Windows  (para consumidores)
REM
REM  Para abogados que solo usan el sistema y no quieren instalar
REM  git. Baja la carpeta del repo como ZIP desde GitHub, la deja
REM  en tu carpeta de usuario y programa la actualizacion
REM  automatica al iniciar sesion.
REM
REM  Este archivo se baja SUELTO desde:
REM  https://raw.githubusercontent.com/Probanza-ar/claude-for-legal-argentina/main/instaladores/instalar-sin-git.bat
REM  Doble clic y listo. Requiere repo publico (no pide credenciales).
REM ============================================================
setlocal
set "OWNER=Probanza-ar"
set "REPONAME=claude-for-legal-argentina"
set "BRANCH=main"
set "INSTALL_DIR=%USERPROFILE%\claude-for-legal-argentina"

echo Descargando e instalando en %INSTALL_DIR% ...
echo (Tu legal.local.md, si ya existe, NO se pisa.)

powershell -ExecutionPolicy Bypass -Command ^
  "$ErrorActionPreference='Stop';" ^
  "$u='https://codeload.github.com/%OWNER%/%REPONAME%/zip/refs/heads/%BRANCH%';" ^
  "$z=Join-Path $env:TEMP 'clg.zip'; $e=Join-Path $env:TEMP 'clg_ext';" ^
  "Invoke-WebRequest -Uri $u -OutFile $z;" ^
  "if(Test-Path $e){Remove-Item $e -Recurse -Force};" ^
  "Expand-Archive -Path $z -DestinationPath $e -Force;" ^
  "if(!(Test-Path '%INSTALL_DIR%')){New-Item -ItemType Directory -Path '%INSTALL_DIR%' ^| Out-Null};" ^
  "Copy-Item -Path (Join-Path $e '%REPONAME%-%BRANCH%\*') -Destination '%INSTALL_DIR%' -Recurse -Force;" ^
  "Remove-Item $z -Force; Remove-Item $e -Recurse -Force"

if errorlevel 1 (
  echo.
  echo ERROR en la descarga. Revisa tu conexion o que el repo sea publico.
  pause
  exit /b 1
)

REM Programa la actualizacion automatica (corre el updater al iniciar sesion)
schtasks /create /tn "ClaudeLegal AutoUpdate" /tr "powershell -ExecutionPolicy Bypass -File \"%INSTALL_DIR%\instaladores\_update-sin-git.ps1\"" /sc onlogon /f

echo.
echo Listo. Carpeta instalada en: %INSTALL_DIR%
echo Se actualiza sola cada vez que inicies sesion.
echo.
echo IMPORTANTE: en esta modalidad, si editas archivos del sistema
echo se sobrescriben en la proxima actualizacion. El unico archivo
echo que podes editar y que se conserva es argentina\legal.local.md
pause
endlocal
