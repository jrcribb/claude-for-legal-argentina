#!/usr/bin/env bash
# ============================================================
#  Updater SIN git - Mac y Linux (lo corre la tarea programada).
#  No lo ejecutes a mano salvo que quieras forzar una actualizacion.
#
#  Re-descarga el tarball del repo y lo extrae encima de la carpeta.
#  tar sobrescribe los archivos del sistema pero NO borra los que no
#  estan en el tarball, por eso argentina/legal.local.md (en .gitignore,
#  no viaja en el tarball) se conserva intacto.
#  Se autolocaliza: el repo es la carpeta padre de /instaladores.
# ============================================================
set -euo pipefail
OWNER="Probanza-ar"
REPO="claude-for-legal-argentina"
BRANCH="main"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEST="$(cd "$SCRIPT_DIR/.." && pwd)"

curl -fsSL "https://codeload.github.com/$OWNER/$REPO/tar.gz/refs/heads/$BRANCH" \
  | tar -xz -C "$DEST" --strip-components=1
