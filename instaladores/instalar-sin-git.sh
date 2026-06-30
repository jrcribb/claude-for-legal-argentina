#!/usr/bin/env bash
# ============================================================
#  Instalador SIN git - Mac y Linux  (para consumidores)
#
#  Para quien solo usa el sistema y no quiere instalar git.
#  Baja la carpeta del repo como tarball desde GitHub, la deja
#  en tu carpeta de usuario y programa la actualizacion automatica.
#
#  Se baja SUELTO y se corre asi:
#    bash instalar-sin-git.sh
#  Requiere repo publico (no pide credenciales). Usa curl + tar,
#  que ya vienen en macOS y en la mayoria de los Linux.
# ============================================================
set -euo pipefail
OWNER="Probanza-ar"
REPO="claude-for-legal-argentina"
BRANCH="main"
DEST="$HOME/claude-for-legal-argentina"

echo "Descargando e instalando en $DEST ..."
echo "(Tu legal.local.md, si ya existe, NO se pisa.)"
mkdir -p "$DEST"

# tar extrae encima: sobrescribe los archivos del sistema pero NO borra
# los que no estan en el tarball, asi legal.local.md se conserva.
curl -fsSL "https://codeload.github.com/$OWNER/$REPO/tar.gz/refs/heads/$BRANCH" \
  | tar -xz -C "$DEST" --strip-components=1

UPDATER="$DEST/instaladores/_update-sin-git.sh"

if [[ "$(uname)" == "Darwin" ]]; then
  PLIST="$HOME/Library/LaunchAgents/com.claudelegal.autoupdate.plist"
  mkdir -p "$HOME/Library/LaunchAgents"
  cat > "$PLIST" <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key><string>com.claudelegal.autoupdate</string>
    <key>ProgramArguments</key>
    <array><string>/bin/sh</string><string>$UPDATER</string></array>
    <key>StartCalendarInterval</key>
    <dict><key>Hour</key><integer>3</integer><key>Minute</key><integer>30</integer></dict>
    <key>RunAtLoad</key><true/>
</dict>
</plist>
EOF
  launchctl unload "$PLIST" 2>/dev/null || true
  launchctl load "$PLIST"
  echo "Listo (macOS). Instalado en $DEST y actualizacion automatica activada."
else
  LINE="30 3 * * * /bin/sh \"$UPDATER\" # claudelegal-autoupdate"
  ( crontab -l 2>/dev/null | grep -v "claudelegal-autoupdate" ; echo "$LINE" ) | crontab -
  echo "Listo (Linux). Instalado en $DEST. Actualizacion via cron (03:30)."
  echo "Si la maquina suele estar apagada a esa hora, instala anacron."
fi

echo
echo "IMPORTANTE: en esta modalidad, si editas archivos del sistema se"
echo "sobrescriben en la proxima actualizacion. El unico archivo que"
echo "podes editar y que se conserva es argentina/legal.local.md"
