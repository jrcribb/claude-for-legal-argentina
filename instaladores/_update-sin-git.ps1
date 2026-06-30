# ============================================================
#  Updater SIN git - Windows (lo corre la tarea programada).
#  No lo ejecutes a mano salvo que quieras forzar una actualizacion.
#
#  Re-descarga el ZIP del repo y lo copia encima de la carpeta.
#  Copy-Item -Force sobrescribe los archivos del sistema pero NO
#  borra los que no estan en el ZIP, por eso argentina\legal.local.md
#  (que esta en .gitignore y no viaja en el ZIP) se conserva intacto.
#  Se autolocaliza: el repo es la carpeta padre de \instaladores.
# ============================================================
$ErrorActionPreference = 'Stop'
$owner  = 'Probanza-ar'
$repo   = 'claude-for-legal-argentina'
$branch = 'main'

$dest = Split-Path -Parent $PSScriptRoot   # carpeta padre de \instaladores
$url  = "https://codeload.github.com/$owner/$repo/zip/refs/heads/$branch"
$zip  = Join-Path $env:TEMP 'clg.zip'
$ext  = Join-Path $env:TEMP 'clg_ext'

Invoke-WebRequest -Uri $url -OutFile $zip
if (Test-Path $ext) { Remove-Item $ext -Recurse -Force }
Expand-Archive -Path $zip -DestinationPath $ext -Force
Copy-Item -Path (Join-Path $ext "$repo-$branch\*") -Destination $dest -Recurse -Force
Remove-Item $zip -Force
Remove-Item $ext -Recurse -Force
