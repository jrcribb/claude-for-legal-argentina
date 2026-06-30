# Instaladores de actualización automática

Estos scripts hacen que tu copia **local** del sistema se actualice sola, sin que tengas
que correr `git pull` a mano cada vez.

Hay que entender que son dos cosas distintas:

- El **repo en GitHub** ya se sincroniza solo con el upstream de Anthropic todos los días
  a las 03:00 (hora Argentina) gracias al workflow de GitHub Actions. Eso pasa del lado
  de GitHub y no requiere tu intervención.
- Tu **copia en la computadora** es otra cosa: para que tenga lo último de GitHub hay que
  bajar los cambios. Eso es lo que automatizan estos instaladores.

## ¿Cuál uso?

| Tu situación | Windows | Mac / Linux |
|---|---|---|
| Clonaste con git (editás o tenés git instalado) | `auto-update-git.bat` | `auto-update-git.sh` |
| Solo usás el sistema y no querés instalar git | `instalar-sin-git.bat` | `instalar-sin-git.sh` |

Se corren **una sola vez**. En Windows, doble clic. En Mac/Linux, `bash <archivo>`.

## Vía git (`auto-update-git.*`)

Programa una tarea que corre `git pull` en la carpeta del repo:

- Windows: al iniciar sesión (elegido a propósito: una notebook está apagada de noche, así
  que un horario fijo nocturno se saltearía).
- Mac: a las 03:30 y al iniciar sesión, recuperando el pull si la máquina estaba dormida.
- Linux: a las 03:30 vía cron. Si la máquina suele estar apagada a esa hora, instalá `anacron`.

Tu `argentina/legal.local.md` nunca se pisa: está protegido por `.gitignore` y `git pull`
no lo toca.

## Vía sin git (`instalar-sin-git.*`)

Para consumidores que no quieren instalar nada. Baja la carpeta del repo como ZIP/tarball,
la deja en tu carpeta de usuario (`~/claude-for-legal-argentina`) y programa la
actualización automática. Requiere que el repo sea **público** (no pide credenciales).

Estos archivos se bajan **sueltos** desde GitHub, sin tener el repo todavía:

- Windows: `https://raw.githubusercontent.com/Probanza-ar/claude-for-legal-argentina/main/instaladores/instalar-sin-git.bat`
- Mac/Linux: `https://raw.githubusercontent.com/Probanza-ar/claude-for-legal-argentina/main/instaladores/instalar-sin-git.sh`

**Importante:** en esta modalidad, si editás archivos del sistema se sobrescriben en la
próxima actualización. El único archivo que podés editar y que se conserva es
`argentina/legal.local.md` (no viaja en el ZIP, así que la descarga no lo pisa).

## Archivos auxiliares (no los corras a mano)

- `_pull.bat` - lo invoca la tarea de la vía git en Windows.
- `_update-sin-git.ps1` / `_update-sin-git.sh` - los invoca la tarea de la vía sin git.
- `_update.log` - log de la vía git en Windows (se genera al correr; no se versiona).
