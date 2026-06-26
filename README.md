# claude-for-legal · Adaptación Argentina

Configuración de Claude para práctica legal argentina. El material está construido
sobre derecho argentino: CCCN, LCT, LDC, LGS, CPCCN/CPCCBA, y normas especiales.
No requiere ningún repositorio externo para funcionar; puede usarse de forma
autónoma desde Claude.ai Projects o Claude Code.

Cada perfil codifica las reglas que cambian el resultado: plazos diferenciados entre días hábiles administrativos y judiciales, alertas automáticas de caducidad con la norma y el artículo exacto, marcadores obligatorios cuando falta el acto notificado o el expediente, lógica de agotamiento de vía antes de analizar cualquier acción judicial, distinción entre regímenes que se confunden habitualmente (Dec 1510/97 vs. Ley 189 CCAyT, LCT vs. estatutos sectoriales, régimen federal pre y post-reforma Ley 27.742). El sistema no inventa fallos, no completa vigencia normativa cuando no tiene fuente verificable, no asume el contenido de actos o expedientes que el abogado no aportó. Cada gap tiene un marcador explícito con lo que falta para resolverlo.

---

## Estructura

```
LICENSE                               # Apache License 2.0 - codigo base upstream (Anthropic)
LICENSE-FORK.md                       # Licencia dual - contenido original de este fork
argentina/
  CLAUDE.md                         # Perfil general - cargar en todo Project
  CHANGELOG.md                      # Historial de cambios normativos y del sistema
  marcadores-GLOSARIO.md            # Glosario canónico de marcadores (fuente de verdad)
  setup-interview.md                # Entrevista de configuración inicial
  setup-output-TEMPLATE.md          # Template de output de la entrevista
  diagnostico-SKILL.md              # Skill de diagnóstico previo (transversal)
  plazos-SKILL.md                   # Skill de cómputo de plazos procesales y administrativos
  diagnostico-casos-prueba.md       # Casos de prueba para verificar el skill
  contratos/                        # Perfil unificado para revisión y redacción de contratos
    CLAUDE.md                         # Perfil de práctica - contratos bajo derecho argentino
    red-flags.md                      # Alertas para revisión de contratos (activ. automática)
    indices-y-tasas.md                # Índices, tasas de referencia y evaluación de abusividad
  administrativo-CLAUDE.md          # Perfil derecho administrativo (federal)
  administrativo/                    # Perfiles jurisdiccionales (complementan al federal)
    administrativo-CABA-CLAUDE.md      # CABA (CCAyT / TSJBA)
    administrativo-CHACO-CLAUDE.md     # Chaco
    administrativo-PBA-CLAUDE.md       # Buenos Aires (Cámaras CA / SCBA)
    administrativo-CHUBUT-CLAUDE.md    # Chubut (STJ - Sala CA)
    administrativo-CÓRDOBA-CLAUDE.md   # Córdoba (TSJ - Sala CA)
    administrativo-CORRIENTES-CLAUDE.md # Corrientes (STJ - pleno)
    administrativo-ENTRERIOS-CLAUDE.md  # Entre Ríos (STJ - Sala N° 2 / Sala Constitucional y Electoral)
    administrativo-FORMOSA-CLAUDE.md   # Formosa
    administrativo-MENDOZA-CLAUDE.md   # Mendoza (SCJ - Sala Primera)
    administrativo-MISIONES-CLAUDE.md  # Misiones (STJ - pleno)
    administrativo-NEUQUEN-CLAUDE.md   # Neuquén (TSJ - Sala Procesal Administrativa)
    administrativo-RIONEGRO-CLAUDE.md  # Río Negro (STJ - última instancia)
    administrativo-SALTA-CLAUDE.md     # Salta (Corte de Justicia - pleno)
    administrativo-SANJUAN-CLAUDE.md   # San Juan (Corte de Justicia - Sala Segunda)
    administrativo-SANLUIS-CLAUDE.md   # San Luis
    administrativo-SANTAFE-CLAUDE.md   # Santa Fe (CSJSF)
    administrativo-TUCUMAN-CLAUDE.md   # Tucumán (CSJ - Sala CA)
    administrativo-_PROVINCIA_-CLAUDE.md # Template para nuevas provincias
  especialidades/
    medicina-legal-CLAUDE.md         # Pericia médica forense (penal / civil / seguridad social)
    notarial/
      notarial-CLAUDE.md              # Derecho notarial (protocolo, compliance UIF, escrituras)
      notarial-clausulas.md           # Biblioteca de cláusulas tipo (complemento del perfil base)
      notarial-_PROVINCIA_-CLAUDE.md  # Template para perfiles jurisdiccionales
  proteccion-datos-CLAUDE.md        # Perfil protección de datos e informes crediticios (Ley 25.326 / Veraz)
  civil-CLAUDE.md                   # Perfil derecho civil (CCCN)
  civil-DOCTRINA.md                 # Doctrina y jurisprudencia civil por instituto (leading cases verificados)
  civil/
    escritos/
      escritos-civil-SKILL.md       # Skill orquestador: routing y reglas de integridad de los escritos de daños
      modelos/
        demanda-danos-accidente-transito.md       # Daños por accidente de tránsito (riesgo + citación en garantía)
        demanda-danos-mala-praxis.md              # Mala praxis médica (art. 1768 + responsabilidad institucional)
        demanda-danos-incumplimiento-contractual.md # Daños por incumplimiento contractual
  discapacidad-CLAUDE.md            # Perfil derecho de la discapacidad (Ley 24.901, CDPCD, CUD, PNC)
  discapacidad-DOCTRINA.md          # Doctrina y jurisprudencia por instituto (AT, PNC, accesibilidad, cupo laboral, apoyos)
  ejemplos-discapacidad.md          # Casos de sentencia anotados con análisis crítico y lecciones operativas
  consumidor-CLAUDE.md              # Perfil derecho del consumidor (LDC, eje consumidor + acceso a la salud)
  consumidor/
    escritos/
      escritos-consumidor-SKILL.md  # Skill orquestador: routing y reglas de integridad de los escritos de consumo
      modelos/
        cartas-documento-intimaciones.md # Bloque de cartas documento / intimaciones de consumo (12 variantes)
        amparo-salud-prepaga.md     # Amparo por aumento/baja de prepaga (con cautelar)
        demanda-dano-punitivo.md    # Demanda por daños y daño punitivo (art. 52 bis, tope en CBT)
        demanda-garantia-producto.md # Demanda por garantía legal y producto defectuoso (art. 17)
        reclamo-ventanilla-omic.md  # Reclamo administrativo (Ventanilla Única Federal / OMIC)
  concursos-CLAUDE.md               # Perfil concursos y quiebras (LCQ)
  familia-CLAUDE.md                 # Perfil derecho de familia (CCCN Libro Segundo)
  familia-DOCTRINA.md               # Doctrina y holdings verificados de familia por instituto
  ejemplos-familia.md               # Escenarios de práctica de familia anotados
  familia/
    escritos/
      escritos-familia-SKILL.md     # Skill orquestador de escritos de familia
      modelos/
        convenio-regulador-divorcio.md          # Convenio regulador (art. 438 CCCN)
        demanda-alimentos.md                    # Demanda de alimentos a hijos (con provisorios)
        medidas-proteccion-violencia-familiar.md # Medidas urgentes (Ley 26.485 / 12.569 PBA)
  laboral-CLAUDE.md                 # Perfil derecho del trabajo (LCT)
  laboral/
    telegrama/
      telegramas-SKILL.md           # Instrucciones operativas del skill de telegramas
      tipos-de-telegrama.md         # Clasificación por grupo y notas críticas
      reglas-normativas.md          # Reglas de validación normativa post-reforma
      modelos/
        bloque-01-registro.md       # Registro de la relación laboral
        bloque-02-estabilidad-despido.md  # Estabilidad y despido
        bloque-03-salarios.md       # Pago de salarios y remuneraciones
        bloque-04-ius-variandi.md   # Modificaciones contractuales
        bloque-05-renuncia.md       # Renuncia
        bloque-06-vacaciones-licencias.md # Vacaciones y licencias
        bloque-07-salud-hostigamiento.md  # Seguridad, salud, hostigamiento y discriminación
        bloque-08-construccion.md   # Industria de la construcción (Ley 22.250)
  penal-CLAUDE.md                   # Perfil derecho penal (multifuero)
  penal-DOCTRINA.md                 # Leading cases verificados de penal por instituto
  penal/
    escritos/
      escritos-penal-SKILL.md       # Skill orquestador de escritos penales
      modelos/                      # Excarcelación, probation, hábeas corpus, nulidad de allanamiento, casación
  societario-CLAUDE.md              # Perfil derecho societario (LGS)
  tributario-CLAUDE.md              # Perfil derecho tributario
  transito-CLAUDE.md                # Perfil infracciones y multas de tránsito
  transito/
    descargos/
      descargos-SKILL.md            # Skill de descargos y recursos de tránsito
      modelos/                      # 7 modelos por causal (nulidad, urgencia, denuncia de venta, art. 71, recurso)
  ejemplos-civil.md                 # Casos de daños y responsabilidad civil
  ejemplos-laboral.md               # Casos laborales
  ejemplos-societario.md            # Due diligence y pactos de accionistas
  ejemplos-penal.md                 # Escenarios de práctica penal anotados
  fuentes.md                        # Conectores MCP y fuentes primarias
  legal.local.md.template           # Template de configuración local del estudio (por rama del derecho)
  evals/                            # Casos de control para verificar perfiles de área
    evals-README.md                 # Formato estándar y áreas prioritarias
    administrativo-caba-recursos-agotamiento-via/  # Recursos Dec 1510/97 + plazo art. 7 CCAyT
    consumidor-prepaga-aumento-dnu70/              # Aumento de prepaga bajo DNU 70/23 con afiliado con discapacidad
    consumidor-dano-punitivo-prescripcion/         # Daño punitivo: prescripción quinquenal y tope en CBT
    consumidor-garantia-producto-defectuoso/       # Garantía legal vs. comercial, art. 17 y publicidad vinculante
```

---

## Qué hace este sistema

**Opera bajo:**
- CCCN (Ley 26.994) para contratos y obligaciones
- LCT (Ley 20.744) y modificatorias para materia laboral
- Ley 25.326 y disposiciones AAIP para privacidad y datos personales
- CPCCN para fueros nacionales y federales / CPCCBA para PBA
- LDC (Ley 24.240) para contratos de consumo
- LGS para societario
- Ley 17.801 y CCCN para actos registrales y compliance notarial (Res. UIF 242/2023)
- Ley 25.326, Decreto 1558/01 y disposiciones AAIP para protección de datos e informes crediticios (hábeas data, derecho al olvido, Veraz/Nosis)
- Ley 24.901 + CDPCD (Ley 27.044) para derecho de la discapacidad

**Reemplaza la lógica de common law en tres áreas críticas:**
- Contratos: análisis bajo CCCN (no bajo consideration ni indemnification caps)
- Laboral: modelo de despido con indemnización obligatoria art. 245 LCT (no at-will)
- Privacidad: habeas data bajo Ley 25.326 (no GDPR/DSAR)

**Agrega:**
- Red flags específicas del derecho argentino para revisión automática de contratos
- Glosario canónico de marcadores estandarizados para señalar vacíos e inconsistencias
- Protocolo de alucinación normativa: el sistema detiene la redacción si detecta que citó una norma sin respaldo
- Routing automático hacia perfiles de área según la rama del derecho de la consulta
- Alertas de normas inestables integradas en cada perfil con fecha de última verificación
- Casos de prueba para verificar que el skill de diagnóstico funciona correctamente
- Skill de cómputo de plazos procesales y administrativos: días hábiles judiciales y administrativos, días corridos, meses y años, con suspensiones por feria judicial, mediación prejudicial y SECLO
- Doctrina y jurisprudencia de discapacidad organizada por instituto (AT, PNC, prestaciones fuera de nomenclador, accesibilidad, cupo laboral, sistema de apoyos) con criterios de sala y fallos de referencia
- Casos de sentencia anotados de discapacidad (cobertura AT, PNC, accesibilidad, cupo laboral) con análisis crítico, lecciones operativas y advertencias sobre errores procesales frecuentes
- Plantillas de escritos de consumo (amparo de prepaga, daño punitivo, garantía y producto defectuoso, reclamo administrativo) y casos de control del perfil de consumidor
- Doctrina y jurisprudencia civil organizada por instituto (reparación integral, cuantificación e incapacidad, riesgo y deber de seguridad, seguro y franquicia, contratos y abuso del derecho) con leading cases verificados de la CSJN y de cámaras
- Plantillas de escritos de daños (demanda por accidente de tránsito, mala praxis médica, incumplimiento contractual) con skill orquestador y reglas de integridad del perfil civil

---

## Lo que necesitás

Hay dos formas de instalarlo. El plan gratuito es suficiente para evaluar el sistema sin costo. El plan pago agrega automatización, acceso directo a archivos locales y tareas largas sin supervisión.

| Característica | Plan gratuito + Git Bash | Plan pago + Claude Desktop + Cowork |
|---|---|---|
| Costo | $0 | u$s 20/mes (Pro) |
| Activación de perfiles | Manual (copiar y pegar) | Automática según la rama del derecho del caso |
| Actualizaciones del repo | Automática (workflow diario incluido) | Automática (workflow diario incluido) |
| Acceso a archivos locales | No | Sí (directo, sin copiar archivos) |
| Tareas largas sin supervisión | No | Sí |
| Capacidades normativas | Completas | Completas |

---

## Instalación

### Opción A: Plan gratuito + Git Bash

**Lo que necesitás:** cuenta Claude gratuita y Git.

- **Windows:** instalá Git desde [git-scm.com](https://git-scm.com) con las opciones por defecto.
- **Mac:** instalá Git con Homebrew. Si no tenés Homebrew, primero corrés esto en la Terminal:
  ```bash
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```
  Después:
  ```bash
  brew install git
  ```

No necesitás cuenta de GitHub para descargar y usar el sistema.

#### Paso 1: Clonar el repositorio

Abrí Git Bash desde el menú inicio y ejecutá:

```bash
git clone https://github.com/cristianaboitiz-eng/claude-for-legal-argentina.git
cd claude-for-legal-argentina
git pull
```

El `git pull` trae los cambios más recientes. Si dice "Already up to date" ya tenés la versión actual.

Una vez ejecutado, todos los archivos del sistema quedan en tu computadora en la carpeta `C:\Users\TU USUARIO\claude-for-legal-argentina\argentina\`. Desde ahí vas a adjuntarlos en Claude cuando el sistema te lo pida.

#### Paso 2: Configurar el perfil del estudio
 
El archivo `argentina/legal.local.md` le dice al sistema quién sos, en qué fueros trabajás y cómo trabajás. Es privado: nunca se sube al repositorio.
 
Creá tu copia:
 
**Windows:**
```bash
cp argentina/legal.local.md.template argentina/legal.local.md
notepad argentina/legal.local.md
```
 
**Mac:**
```bash
cp argentina/legal.local.md.template argentina/legal.local.md
open -e argentina/legal.local.md
```
 
`open -e` abre el archivo en TextEdit. Si no funciona, probá `nano argentina/legal.local.md`.
 
Para completarlo, abrís un chat en [claude.ai](https://claude.ai), adjuntás `argentina/legal.local.md.template` y escribís:
 
> "Completá este archivo con los datos de mi estudio."
 
Copiás el resultado y lo guardás como `C:\Users\[TU USUARIO]\claude-for-legal-argentina\argentina\legal.local.md`. Después lo protegés:
 
```bash
echo "legal.local.md" >> .gitignore
```
 
**Crear tu copia personal:**

En Git Bash ejecutás:

```bash
cp argentina/legal.local.md.template argentina/legal.local.md
```

**Completarlo con ayuda de Claude:**

Abrís un chat nuevo en [Claude.ai](https://claude.ai), adjuntás el archivo `C:\Users\TU USUARIO\claude-for-legal-argentina\argentina\legal.local.md.template` y escribís:

> "Completá este archivo con los datos de mi estudio."

Copiás el resultado y lo guardás como `C:\Users\TU USUARIO\claude-for-legal-argentina\argentina\legal.local.md`.

**Protegerlo para que no se suba al repositorio por error:**

```bash
echo "legal.local.md" >> .gitignore
```

#### Paso 3: Mantener el sistema actualizado

El repositorio no se actualiza solo con el plan gratuito. Cada vez que haya cambios - perfiles de área, alertas normativas, correcciones - los bajás con un solo comando:

```bash
cd claude-for-legal-argentina
git pull
```

Hacelo antes de cada sesión de trabajo, o cuando veas un aviso de actualización en el repositorio. El pull es instantáneo y nunca pisa tu `legal.local.md` porque ese archivo está protegido por el `.gitignore`.

Si no querés acordarte de correr el pull, hay un instalador que lo automatiza. Corrés una sola vez `instaladores/auto-update-git.bat` (Windows) o `instaladores/auto-update-git.sh` (Mac/Linux) y queda programado un `git pull` que corre solo. Detalle en `instaladores/LEEME.md`.

#### Paso 4: Crear el Project en Claude.ai y cargar los perfiles

En un chat nuevo de Claude adjuntás el archivo `C:\Users\TU USUARIO\claude-for-legal-argentina\argentina\CLAUDE.md`, escribís **"Corré la entrevista de configuración"** y completás las preguntas. El sistema te entrega un `CLAUDE.md` personalizado con los datos de tu práctica.

Después:

1. En [Claude.ai](https://claude.ai) entrás a **Projects** (barra lateral izquierda) y creás uno nuevo. Le ponés el nombre de tu práctica.
2. Dentro del Project, hacés clic en el ícono de lápiz (**Project instructions**) y pegás el `CLAUDE.md` personalizado que te generó la entrevista. Queda activo en todas las conversaciones de ese Project.
3. Subís los perfiles de área como **Knowledge** del Project (botón "Add content"). Ejemplos según tu fuero habitual:
   - Laboral: `argentina/laboral-CLAUDE.md`. Para usar skills específicas (telegramas, plazos u otras), subí los archivos de la subcarpeta correspondiente dentro de `argentina/laboral/` cuando las necesites.
   - Civil: `argentina/civil-CLAUDE.md` + `argentina/ejemplos-civil.md` + `argentina/civil-DOCTRINA.md`. Para redactar, subí el skill y los modelos de `argentina/civil/escritos/` (demanda de tránsito, mala praxis, incumplimiento contractual) cuando los necesites.
   - Discapacidad: `argentina/discapacidad-CLAUDE.md` + `argentina/discapacidad-DOCTRINA.md` + `argentina/ejemplos-discapacidad.md`
   - Consumidor: `argentina/consumidor-CLAUDE.md`. Para redactar, subí el skill y los modelos de `argentina/consumidor/escritos/` (amparo de prepaga, daño punitivo, garantía, reclamo administrativo) cuando los necesites.
   - Administrativo CABA: `argentina/administrativo-CLAUDE.md` + `argentina/administrativo/administrativo-CABA-CLAUDE.md`
   - Administrativo PBA: `argentina/administrativo-CLAUDE.md` + `argentina/administrativo/administrativo-PBA-CLAUDE.md`
   - Administrativo Salta: `argentina/administrativo-CLAUDE.md` + `argentina/administrativo/administrativo-SALTA-CLAUDE.md`
   - Notarial: `argentina/especialidades/notarial/notarial-CLAUDE.md` + `argentina/especialidades/notarial/notarial-clausulas.md`
   - También subís tu `argentina/legal.local.md` con los datos del estudio.
4. Guardás. Cada conversación nueva dentro del Project arranca con todos esos archivos activos.

**Límite del plan gratuito:** el espacio de Knowledge es acotado. Si no entran todos los archivos, priorizá el `CLAUDE.md` personalizado + el perfil de área + tu `legal.local.md`. Los perfiles complementarios los podés pegar manualmente al inicio de la conversación cuando el caso lo requiera.

**Para mantener el Project actualizado:** cada vez que hagas `git pull` y haya cambios en algún perfil cargado en el Project, reemplazás el archivo subiendo la versión nueva desde Knowledge.

---

### Opción B: Plan pago + Claude Desktop + Cowork

**Lo que necesitás:** Plan Pro (u$s 20/mes), Max, Team o Enterprise, y la aplicación de escritorio Claude.

#### Paso 1: Descargá la aplicación de escritorio

Entrá a [claude.ai/download](https://claude.ai/download) y bajá la app para Windows o Mac. Instalala como cualquier otro programa.

#### Paso 2: Abrí Cowork

Una vez abierta la app, vas a ver una barra en la parte superior con distintas pestañas. Hacé clic en "Cowork".

Cowork es el entorno de trabajo avanzado donde viven los plugins. La primera vez te va a pedir que configures acceso a una carpeta de tu computadora - dáselo a una carpeta donde tengas documentos de trabajo (contratos, escritos, lo que sea). Claude va a poder leer los archivos de esa carpeta.

#### Paso 3: Instalá el plugin legal

Dentro de Cowork, hacé clic en "Customize" (Personalizar) en la barra lateral izquierda. Eso abre el menú de plugins, skills y conectores. [Más información](https://support.claude.com/en/articles/13837440-use-plugins-in-claude-cowork)

Desde ahí:

1. Clic en "Browse plugins" (Explorar plugins).
2. Buscá Legal en la lista.
3. Clic en Install.

Después de instalarlo, el plugin ejecuta automáticamente una entrevista inicial. Te pregunta sobre tu práctica: jurisdicción, tipo de trabajo habitual, a quién escalás, etc. Con esas respuestas arma tu perfil de práctica, y de ahí en más todos los flujos de trabajo corren contra ese contexto, no contra una plantilla genérica. Eso es lo que diferencia esta herramienta de un chat común.

#### Paso 4: Configurar el perfil argentino

Dentro de Cowork, cargás el contenido de `C:\Users\TU USUARIO\claude-for-legal-argentina\argentina\CLAUDE.md` como perfil base. Ese archivo reemplaza la lógica norteamericana del plugin original con configuración argentina. La primera vez que usás un plugin de área, el sistema corre la entrevista de configuración; cuando te pida el perfil de práctica, usás el contenido de `argentina/legal.local.md` que ya completaste.

#### Paso 5: Elegí qué plugins instalar

Instalá los que correspondan a tu práctica. Podés instalar varios.

#### Paso 6: Empezar a usarlo

Las skills se activan automáticamente cuando son relevantes. También podés invocarlas manualmente escribiendo "/" para ver la lista de comandos disponibles. Claude accede a tu carpeta de trabajo, lee los archivos directamente y ejecuta tareas largas sin supervisión: liquidaciones sobre varios expedientes, revisión de contratos en lote, matrices de riesgo, cronologías. Cowork lee siempre lo que haya en la carpeta local, así que para trabajar con la última versión esa carpeta tiene que estar al día: hacé `git pull` antes de la sesión, o dejá la actualización programada con el instalador (ver "Mantener tu copia local al día" más abajo).

Para activar una skill específica (telegramas, plazos u otras): en Cowork, con acceso habilitado a tu carpeta del repo, indicale a Claude que lea el archivo correspondiente dentro de `argentina/laboral/`. No uses el flujo "Cargar habilidad", ese es para archivos `.skill` de Cowork, no para los `.md` de este repo.

---

## Perfiles por área

Los plugins disponibles corresponden a las áreas de práctica cubiertas por este sistema:

| Archivo de perfil | Área | Complementos | Alertas |
|---|---|---|---|
| `proteccion-datos-CLAUDE.md` | Protección de datos personales e informes crediticios · Ley 25.326: derecho de acceso (art. 14), rectificación/actualización (art. 16), supresión, derecho al olvido (art. 26 inc. 4), hábeas data judicial (art. 43 CN); bases crediticias privadas (Veraz/Equifax, Nosis) y Central de Deudores BCRA; medida cautelar innovativa (bloqueo preventivo del dato); distinción hábeas data vs. mediación previa y COPREC; estrategia diferenciada para phishing e ingeniería social; daño moral in re ipsa con respaldo fáctico | - | Ley 25.326 sin reforma sancionada; plazo reducido art. 26 inc. 4 es 2 años (no 3); cómputo desde última información adversa significativa (no la mora original); Comunicaciones BCRA A 7328 y A 7370; estado parlamentario de los proyectos de reforma (Carro / Doñate / AAIP) |
| `laboral-CLAUDE.md` | Derecho del trabajo (LCT) | `laboral/telegrama/` | DNU 70/2023, Ley 27.742, Ley 27.802, topes art. 245, tasas CNAT |
| `administrativo-CLAUDE.md` | Derecho administrativo (federal) | - | Plazos de caducidad, contratación pública |
| `administrativo/administrativo-CABA-CLAUDE.md` | Derecho administrativo CABA | `administrativo-CLAUDE.md` (base) | Plazo 90 días art. 7 CCAyT, Dec 1510/97, Ley 2095, Ley 471 |
| `administrativo/administrativo-PBA-CLAUDE.md` | Derecho administrativo PBA | `administrativo-CLAUDE.md` (base) | Plazos CPCA PBA, Ley 7647, contratación pública PBA |
| `administrativo/administrativo-SALTA-CLAUDE.md` | Derecho administrativo Salta | `administrativo-CLAUDE.md` (base) | Procedimiento administrativo Salta, fuero contencioso local |
| `civil-CLAUDE.md` | Derecho civil (CCCN) | `ejemplos-civil.md` + `civil-DOCTRINA.md` + `civil/escritos/` (skill de demandas de daños) | Tasas de interés, fórmulas de daños por fuero |
| `civil-DOCTRINA.md` | Doctrina y jurisprudencia por instituto: reparación integral (Santa Coloma, Aquino, Rodríguez Pereyra), cuantificación e incapacidad (Arostegui, Vuotto, Méndez), riesgo y deber de seguridad (Mosca), seguro y franquicia (Cuello, Buffoni), contratos y abuso (Automóviles Saavedra); marcadores para institutos sin fallo cargado | - | - |
| `discapacidad-CLAUDE.md` | Derecho de la discapacidad · perfil base: fuero y competencia por demandado (obras sociales nacionales, prepagas, ANDIS, GCBA, Estado provincial), regla bifurcada PAMI, checklist de admisibilidad del amparo, AT vs. cuidador domiciliario, prestaciones fuera de nomenclador, PNC (Decreto 843/2024 - inconvencionalidad obligatoria post 23/09/2024), reintegros con auditoría documental previa, cupo laboral, salud mental, plazos y prescripción diferenciada | `discapacidad-DOCTRINA.md` + `ejemplos-discapacidad.md` | Ley 27.793 (emergencia, vence 31/12/2026), nomenclador ANDIS (resolución mensual), Ley 26.682 y decretos de desregulación, Decreto 843/2024 (parámetro 66% PNC) |
| `discapacidad-DOCTRINA.md` | Doctrina y jurisprudencia por instituto: AT (función terapéutica vs. asistencial, criterios de sala CCF), PNC (doctrina CFSS y CAF, Decreto 843/2024), prestaciones fuera de nomenclador (prueba tarifada ANMAT/FDA/EMA), accesibilidad (responsabilidad objetiva, delimitación catastral), cupo laboral (amparo individual vs. colectivo), sistema de apoyos (CDPCD art. 12 + CCCN arts. 31-50); alertas de cambios jurisprudenciales con fecha y fuero | - | - |
| `ejemplos-discapacidad.md` | Casos de sentencia anotados: Caso 1 (AT rechazado por obra social - qué ganó, qué error procesal costó el reintegro, cómo bloquear al CMF), Caso 2 (PNC denegada - pericia vs. dictamen ANDIS, silencio administrativo y amparo por mora), Caso 3 (daños por accesibilidad - responsabilidad objetiva, regla catastral para codemandado municipal), Caso 4 (cupo laboral - referencia negativa de amparo individual) | - | - |
| `consumidor-CLAUDE.md` | Derecho del consumidor (LDC) · eje consumidor + acceso a la salud: relación de consumo, prepagas y obras sociales, daño punitivo, cláusulas abusivas, servicios públicos domiciliarios, crédito y sobreendeudamiento, garantía y vicios, lealtad comercial, acciones colectivas; fueros (Consumo, Comercial nacional, CCF, CAyTyC) y vías administrativas | `consumidor/escritos/` (skill orquestador + modelos: amparo de prepaga, daño punitivo, garantía, reclamo administrativo) | DNU 70/2023 (prepagas), tope de daño punitivo en CBT del INDEC (Ley 27.701), disolución del COPREC y Ventanilla Única Federal, mudanza competencial CABA (Ley 6286), prescripción quinquenal (art. 2560 CCyC) |
| `penal-CLAUDE.md` | Derecho penal multifuero (federal, nacional, CABA, PBA): etapas, prisión preventiva, probation, juicio por jurados, nulidades, recursos, hábeas corpus, ejecución, penal económico y tributario, RPPJ (Ley 27.401) | `penal-DOCTRINA.md` + `ejemplos-penal.md` + `penal/escritos/` (skill orquestador + modelos: excarcelación, probation, hábeas corpus correctivo, nulidad de allanamiento, casación) | Umbrales del Régimen Penal Tributario (Ley 27.799, ajuste UVA), lavado art. 303 CP (150 SMVM, Ley 27.739), CPPF en transición, art. 56 bis Ley 24.660 |
| `penal-DOCTRINA.md` | Leading cases por instituto con holding verificado vía SAIJ: Acosta (probation, tesis amplia), Góngora (Belém do Pará, improcedencia de probation en violencia de género), Arriola (tenencia para consumo personal), doctrina de revisión amplia en casación (Casal); marcadores para institutos sin fallo cargado (Verbitsky, prisión preventiva, regla de exclusión, jurados) | - | - |
| `ejemplos-penal.md` | Escenarios de práctica anotados: probation vs. oposición fiscal en sistema acusatorio, nulidad de allanamiento y prueba derivada, cese de prisión preventiva por falta de peligros procesales, extinción de la acción penal tributaria por pago | - | - |
| `familia-CLAUDE.md` | Derecho de familia (CCCN Libro Segundo): divorcio y convenio regulador, compensación económica, régimen patrimonial, unión convivencial, cuidado personal y régimen comunicacional, alimentos, filiación y TRHA, adopción, violencia familiar y de género (Ley 26.485 mod. Olimpia; Ley 12.569 PBA), restitución internacional | `familia-DOCTRINA.md` + `ejemplos-familia.md` + `familia/escritos/` (skill orquestador + modelos: convenio regulador, alimentos, medidas de violencia) | Cuotas alimentarias (IC-INDEC), traspaso de competencias CABA, criterios de cuidado compartido por fuero |
| `familia-DOCTRINA.md` | Holdings verificados vía SAIJ por instituto (anclados a sumario, tribunal y fecha; carátulas anonimizadas por minoridad): interés superior y autonomía progresiva (art. 26 CCCN), restitución internacional (CSJN, excepción de grave riesgo), compensación económica (no automática, arts. 441-442), gestación por sustitución, cuidado personal compartido; marcadores para institutos sin precedente cargado | - | - |
| `societario-CLAUDE.md` | Societario y M&A | `ejemplos-societario.md` | Resoluciones IGJ/DPPJ, capital mínimo |
| `tributario-CLAUDE.md` | Derecho tributario | - | Alícuotas, MNI, umbrales de punibilidad |
| `concursos-CLAUDE.md` | Concursos y quiebras (LCQ) | - | Tasas post-concursales, reformas LCQ |
| `transito-CLAUDE.md` | Infracciones y multas de tránsito (Nacional/ANSV-SINAI, CABA, PBA y 22 provincias) | `transito/descargos/` (skill + 7 modelos por causal) | Valor de la UF, % de pago voluntario, plazos por jurisdicción, art. 71 (defensa a distancia) |
| `contratos/CLAUDE.md` | Revisión y redacción de contratos | `contratos/red-flags.md` | Régimen cambiario, locaciones, intertemporalidad |
| `especialidades/medicina-legal-CLAUDE.md` | Pericia médica forense (penal / civil / seguridad social) | - | CPPF implementación por distrito, baremos por tribunal |
| `especialidades/notarial/notarial-CLAUDE.md` + `especialidades/notarial/notarial-clausulas.md` | Derecho notarial (escrituras traslativas, donaciones, poderes, actas, sucesiones extrajudiciales, compliance UIF) | - | Res. UIF 242/2023 (umbrales SMVM indexados), Impuesto de Sellos (anual por jurisdicción), prehorizontalidad art. 2071 (reglamentación provincial), régimen de sinceramiento fiscal vigente |

---

## Alertas de normas inestables

Cada perfil de área incluye una sección `## Alerta normativa` con las normas de mayor
volatilidad para esa materia. La sección está ubicada antes de las instrucciones operativas
de cada perfil para que el sistema la procese con prioridad.

| Perfil | Sección de alerta | Normas cubiertas |
|---|---|---|
| `proteccion-datos-CLAUDE.md` | `## Alerta normativa - normas de vigencia variable` | Ley 25.326 sin reforma sancionada (proyectos Carro / Doñate / AAIP en danza); plazo reducido art. 26 inc. 4 es 2 años, no 3; cómputo desde última información adversa significativa (no la mora original); Comunicaciones BCRA A 7328 y A 7370 (seguridad en canales electrónicos); arts. 230 y 232 CPCCN (cautelares); Ley 26.589 art. 2 inc. c) (exclusión de mediación); Ley 26.993 COPREC (procedimiento vigente); arts. 51, 52 y 1741 CCyC (daño moral) |
| `laboral-CLAUDE.md` | `## Alerta normativa - Reforma laboral 2023-2026 vigente operacionalmente` | DNU 70/2023, Ley 27.742 (derogación agravantes registrales), Ley 27.802 (art. 245, art. 66, art. 80, art. 240) |
| `civil-CLAUDE.md` | `## Alerta normativa - normas de vigencia variable` | Tasas de interés por fuero, fórmulas de cuantificación de daños, art. 52 bis LDC |
| `discapacidad-CLAUDE.md` | `## Alerta normativa - normas de vigencia variable` | Ley 27.793 (emergencia, vence 31/12/2026), nomenclador ANDIS (RESOL-2026-13-APN-SND#MS, actualización mensual), Ley 26.682 y decretos de desregulación económica, ANDIS (Decreto 698/2017, dependencia jerárquica variable), CUD sin vencimiento Ley 27.711 (resoluciones de actualización ANDIS), Ley 26.657 (reglamentación salud mental - plazos e internación involuntaria), Decreto 843/2024 (parámetro rígido 66% PNC - inconvencionalidad obligatoria en denegatorias post 23/09/2024) |
| `consumidor-CLAUDE.md` | `## Alerta normativa - normas de vigencia variable` | DNU 70/2023 (vigente a jun. 2026, prepagas), disolución del COPREC (Decreto 55/2025) y Ventanilla Única Federal (Disp. 890/2025), tope de daño punitivo en CBT del INDEC (Ley 27.701, art. 47 inc. b), garantía art. 11, crédito art. 36, servicios públicos arts. 25-31, lealtad comercial (DNU 274/2019), mudanza competencial CABA (Ley 6286), prescripción quinquenal (art. 2560 CCyC) |
| `administrativo-CLAUDE.md` | `## Alerta normativa - normas de vigencia variable` | Plazos de caducidad art. 25 LNPA, contratación pública, normativa provincial |
| `concursos-CLAUDE.md` | `## Alerta normativa - normas de vigencia variable` | Tasas post-concursales, período de sospecha, reformas LCQ |
| `tributario-CLAUDE.md` | `## Alerta normativa - normas de vigencia variable` | Ganancias/MNI, Bienes Personales, umbrales penales Ley 27.430, monto mínimo TFN |
| `familia-CLAUDE.md` | `## Alerta normativa - normas de vigencia variable` | Cuotas alimentarias (SMVM e IC-INDEC), criterio de cuidado personal compartido por fuero, traspaso de competencias de familia a CABA, Ley 26.485 (mod. Ley 27.736 Olimpia), Ley 12.569 PBA (texto Ley 14.509 y 14.657) |
| `penal-CLAUDE.md` | `## Alerta normativa - normas de vigencia variable` | Umbrales de punibilidad, códigos procesales en transición |
| `societario-CLAUDE.md` | `## Alerta normativa - normas de vigencia variable` | Resoluciones IGJ/DPPJ, capital mínimo, sindicatura |
| `especialidades/medicina-legal-CLAUDE.md` | `## Alerta normativa` | Estado de implementación CPPF por distrito, baremos por tribunal requirente |
| `especialidades/notarial/notarial-CLAUDE.md` | `## Alerta normativa - normas de vigencia variable` | Res. UIF 242/2023 (umbrales SMVM indexados, Res. UIF 78/2025), COTI derogado (RG ARCA 5697/2025), CITI Escribanos derogado (RG ARCA 5698/2025), Impuesto de Sellos por jurisdicción, prehorizontalidad art. 2071, sinceramiento fiscal vigente |

---

## Conectores MCP - Fuentes oficiales argentinas

Los conectores MCP son una capa opcional que permite que Claude consulte fuentes jurídicas oficiales directamente desde el chat, sin que tengas que copiar y pegar texto manualmente. Claude busca la norma, el fallo o el expediente por vos y lo incorpora a la respuesta.

No son necesarios para empezar. Los perfiles funcionan solos. Los conectores mejoran la experiencia una vez que el sistema ya está funcionando.

**Regla general antes de usar cualquier conector:** hacé una consulta de prueba antes de usarlo en una sesión real. Si el conector no responde, accedé directamente a la fuente primaria (los links están al final de esta sección) y pegá el texto en la sesión.

---

### MCP LEGAL AR - 11 conectores en 1 (recomendado)

Hub unificado que concentra las principales fuentes jurídicas argentinas en un solo servidor local. Sin servidores externos, sin dependencia de terceros.

**[GitHub](https://github.com/cristianaboitiz-eng/mcp-legal-ar)** · Instalación: ver README del repositorio.

| Conector incluido | Descripción |
|---|---|
| 📚 **Normativa** | |
| [**BORA** - Boletín Oficial de la República Argentina](https://www.boletinoficial.gob.ar) | Acceso a publicaciones oficiales nacionales: leyes, decretos, resoluciones, disposiciones, actos administrativos, edictos y avisos oficiales. |
| [**InfoLEG** - Información Legislativa](https://www.infoleg.gob.ar) | Consulta de normativa nacional actualizada y consolidada: leyes, decretos, resoluciones y sus modificaciones históricas. |
| [**BOPBA** - Boletín Oficial de la Provincia de Buenos Aires](https://www.boletinoficial.gba.gob.ar) | Publicaciones oficiales de la Provincia de Buenos Aires: normas, decretos, resoluciones y actos administrativos. |
| [**Normativa PBA**](https://normas.gba.gob.ar) | Consulta de legislación provincial bonaerense: leyes, decretos y normativa vigente. |
| ⚖️ **Jurisprudencia** | |
| [**SCBA** - Suprema Corte de Justicia de Buenos Aires](https://sentencias.scba.gov.ar) | Acceso a sentencias y resoluciones de la Suprema Corte bonaerense. |
| [**JUBA** - Jurisprudencia Buenos Aires](https://juba.scba.gov.ar) | Búsqueda de fallos de la SCBA y cámaras departamentales por texto, fuero, carátula y período. |
| [**SAIJ** - Sistema Argentino de Información Jurídica](https://saij.gob.ar) | Base jurídica del Ministerio de Justicia con jurisprudencia, legislación, doctrina y dictámenes (330.000+ documentos). |
| [**PJN Jurisprudencia**](https://sj.pjn.gov.ar) | Consulta de jurisprudencia nacional y federal con búsqueda por materia, sala y período. |
| 🏛️ **Organismos** | |
| [**PTN** - Procuración del Tesoro de la Nación](https://busquedadictamenes.ptn.gob.ar) | Acceso a dictámenes y doctrina administrativa del máximo órgano asesor del Estado Nacional. |
| [**TFN** - Tribunal Fiscal de la Nación](https://www.tfn.gob.ar) | Consulta de resoluciones y jurisprudencia en materia tributaria y aduanera. |
| [**PJN Consulta**](https://www.pjn.gov.ar) | Consulta de estado procesal de expedientes del Poder Judicial de la Nación (captcha resuelto por el usuario vía navegador). |

**Nota sobre Normativa PBA:** la herramienta de vigencia consulta normas.gba.gob.ar y reproduce su estado tal como está cargado. El portal puede tener errores en relaciones de derogación. Usalo como primer filtro y verificá siempre contra el Boletín Oficial PBA ante cualquier resultado que parezca anómalo.

---

### Conectores de la comunidad

Requieren instalación por comando o manual. Los conectores con `uvx` requieren Claude Code instalado. Los que se instalan manualmente desde GitHub funcionan con Claude Desktop sin Claude Code.

| Conector | Fuente | Función | Instalación |
|---|---|---|---|
| saij-mcp | SAIJ | Jurisprudencia, legislación, doctrina y dictámenes | `claude mcp add saij-mcp -- uvx saij-mcp` · [GitHub](https://github.com/hernan-cc/saij-mcp) |
| csjn-mcp | CSJN | Fallos de la Corte Suprema | `claude mcp add csjn-mcp -- uvx csjn-mcp` · [GitHub](https://github.com/hernan-cc/csjn-mcp) |
| juscaba-mcp | JUSCABA | Jurisprudencia fueros nacionales con sede en CABA | `claude mcp add juscaba-mcp -- uvx juscaba-mcp` · [GitHub](https://github.com/hernan-cc/juscaba-mcp) |
| saij-mcp (Escalante) | SAIJ | Investigación profunda: grafo legal, OCR para PDFs históricos | [GitHub](https://github.com/joaquinescalante23/saij-mcp) |
| guidobonomini | Local | Análisis semántico y terminológico de textos jurídicos | [GitHub](https://github.com/guidobonomini/argentina-law-mcp-server) |

**Ecosistema Hernán Caravario (hernan-cc):** saij-mcp, csjn-mcp y juscaba-mcp son parte del mismo ecosistema. Podés instalar los tres en simultáneo; Claude elige cuál usar según la consulta. Ver todos en [github.com/hernan-cc](https://github.com/hernan-cc).

---

### Fuentes primarias

Accedé directamente y pegá el texto en la sesión. Son la fuente de verdad ante cualquier discrepancia.

| Necesidad | URL |
|---|---|
| Normas nacionales | infoleg.gob.ar |
| Boletín Oficial nacional | boletinoficial.gob.ar |
| Normas PBA | normas.gba.gob.ar |
| Boletín Oficial PBA | boletinoficial.gba.gob.ar |
| Jurisprudencia SCBA y cámaras PBA | juba.scba.gov.ar |
| Sentencias y resoluciones primera instancia PBA | sentencias.scba.gov.ar |
| Jurisprudencia CSJN | sj.csjn.gov.ar |
| Jurisprudencia federal PJN (fallos y sentencias) | pjn.gov.ar |
| Jurisprudencia SAIJ | saij.gob.ar |
| Jurisprudencia CABA y fueros nacionales | jusbaires.gob.ar |
| Expedientes PJN | pjn.gov.ar |
| Dictámenes PTN | busquedadictamenes.ptn.gob.ar |
| Jurisprudencia contencioso administrativo federal | cnacaf.gov.ar |
| Resoluciones IGJ | igj.gob.ar |
| Resoluciones DPPJ (societario PBA) | gba.gob.ar/dppj |
| Jurisprudencia tributaria TFN | tfn.gob.ar |
| Normativa BCRA | bcra.gov.ar |
| Disposiciones AAIP (datos personales) | argentina.gob.ar/aaip |
| Nomenclador, CUD y PNC (discapacidad) | andis.gob.ar |

---

## Lo que podés hacer desde el día uno

**Plazos procesales y administrativos:**
- Calcular plazos en días hábiles judiciales o administrativos, días corridos, meses y años
- Aplicar suspensiones por feria judicial, mediación prejudicial obligatoria y SECLO
- Verificar vencimientos de prescripción y caducidad en materia civil, laboral y administrativa
- Activación automática ante consultas de prescripción o caducidad cuando se usa junto con `civil-CLAUDE.md`, `laboral-CLAUDE.md` o `administrativo-CLAUDE.md`; también invocable directamente con `/argentina:plazos`

**Contratos:**
- Revisar contratos contra la lista de red flags argentina, con referencia a norma aplicable (CCCN, LCT, LDC)
- Redactar borradores de contratos tipo (NDA, prestación de servicios, compraventa) con CCCN como base
- Detectar cláusulas abusivas en contratos de adhesión y consumo

**Civil - daños y responsabilidad:**
- Redactar demandas de daños por accidente de tránsito (responsabilidad objetiva por riesgo, arts. 1757-1758 CCCN + art. 64 Ley 24.449) con citación en garantía de la aseguradora
- Redactar demandas por mala praxis médica (responsabilidad subjetiva del profesional, art. 1768; responsabilidad institucional; cargas probatorias dinámicas e historia clínica)
- Redactar demandas de daños por incumplimiento contractual (constitución en mora, resolución, rubros)
- Encuadrar el factor de atribución y los rubros, verificar el derecho intertemporal (CCCN vs. Código de Vélez según la fecha del hecho) y el plazo de prescripción (3 años, art. 2561 CCCN)
- Apoyarse en jurisprudencia verificada de la CSJN y de cámaras: reparación integral (Santa Coloma, Aquino, Rodríguez Pereyra), cuantificación de incapacidad (Arostegui, Vuotto, Méndez), riesgo y deber de seguridad (Mosca), franquicia de seguros (Cuello, Buffoni)

**Societario y M&A:**
- Preparar briefings de due diligence con checklist adaptado a LGS y normativa IGJ/DPPJ
- Armar pactos de accionistas con análisis de ejecutabilidad en Argentina
- Verificar requisitos de notificación a la CNDC en operaciones de concentración

**Laboral:**
- Calcular liquidaciones finales (art. 245 LCT con los tres regímenes según fecha del acto extintivo, certificados art. 80 LCT)
- Analizar estrategia desde el trabajador o el empleador con carga probatoria invertida
- Redactar telegramas y cartas documento laborales con verificación normativa post-reforma (Ley 27.742 + Ley 27.802)

**Administrativo:**
- Verificar agotamiento de la vía administrativa y plazos de caducidad (art. 25 LNPA y equivalentes provinciales)
- Analizar recursos administrativos y acciones contenciosas en fuero federal, CABA (CCAyT / TSJBA) y las provincias con perfil cargado: Buenos Aires (Cámaras CA / SCBA), Chubut (STJ - Sala CA), Córdoba (TSJ - Sala CA), Corrientes (STJ - pleno), Entre Ríos (STJ - Sala N° 2 / Sala Constitucional y Electoral), Mendoza (SCJ - Sala Primera), Misiones (STJ - pleno), Neuquén (TSJ - Sala Procesal Administrativa), Río Negro (STJ), Salta (Corte de Justicia - pleno), San Juan (Corte de Justicia - Sala Segunda), Santa Fe (CSJSF) y Tucumán (CSJ - Sala CA)
- Identificar el régimen procesal aplicable en cada jurisdicción y alertar sobre plazos de caducidad diferenciados entre vía administrativa y acción judicial

**Discapacidad:**
- Redactar amparos de salud contra obras sociales nacionales y empresas de medicina prepaga (fuero Civil y Comercial Federal) y contra el Estado nacional / ANDIS (fuero Contencioso Administrativo Federal)
- Plantear medidas cautelares de urgencia con fundamento en el peligro en la demora in re ipsa; invocar art. 2 inc. 2 Ley 26.854 cuando hay codemandado estatal
- Verificar fuero competente según el demandado (obra social nacional, prepaga, ANDIS, GCBA, Estado provincial) con la regla de demandado mixto y la regla bifurcada para PAMI (prestación médica vs. cuestión previsional)
- Diagnosticar checklist de admisibilidad del amparo: CUD vigente o en trámite, prescripción médica fundada con historia clínica, silencio configurable (48/72 horas en urgencias, 10 días corridos en tracto sucesivo)
- Distinguir Acompañante Terapéutico (rol clínico rehabilitatorio, art. 17 Ley 24.901) de Cuidador Domiciliario y fundamentar la cobertura ante rechazos de obra social; verificar certificación notarial de informes de prestadores privados para bloquear maniobra dilatoria del Cuerpo Médico Forense
- Aplicar el bloque de constitucionalidad CDPCD (arts. 25-26, Ley 27.044) para prestaciones fuera del nomenclador; exigir resoluciones de aprobación ANMAT, FDA o EMA como prueba tarifada ante defensa de "tratamiento experimental"
- Controlar prescripción diferenciada: imprescriptibilidad del derecho a la cobertura (tracto sucesivo) vs. prescripción de 5 años para reintegros dinerarios (art. 2560 CCCN); auditar correlatividad numérica y temporal de facturas ARCA antes de liquidar reintegros
- Alertar sobre agotamiento de vía administrativa (Ley 19.549) antes de procesos ordinarios contra el Estado, con la excepción para el amparo cuando el tránsito torna ilusorio el derecho a la salud; activar amparo por mora ante silencio administrativo prolongado sin acto expreso impugnable
- Plantear la inconvencionalidad del Decreto 843/2024 (parámetro rígido del 66%) en denegatorias de PNC dictadas con posterioridad al 23/09/2024, con base en los arts. 12 y 28 CDPCD
- Consultar doctrina y jurisprudencia organizada por instituto con criterios de sala y fallos de referencia: AT (función terapéutica vs. asistencial, criterios CCF), PNC (doctrina CFSS y CAF), prestaciones fuera de nomenclador (prueba tarifada ANMAT/FDA/EMA), accesibilidad (responsabilidad objetiva, regla catastral), cupo laboral (individual vs. colectivo) y sistema de apoyos (CDPCD art. 12 + CCCN arts. 31-50)
- Replicar la estructura de casos de sentencia reales anotados (cobertura AT, PNC, accesibilidad, cupo laboral) con análisis de qué funcionó, qué error procesal costó el crédito y advertencias sobre defensas estándar de la demandada

**Consumidor:**
- Encuadrar la relación de consumo y elegir la vía correcta: amparo de salud (urgencia de prepaga/obra social) vs. acción resarcitoria de consumo vs. reclamo administrativo; derivar al perfil de discapacidad cuando hay prestación bajo Ley 24.901
- Redactar amparo por aumento abusivo o baja de prepaga bajo el DNU 70/2023 (control de abusividad y abuso del derecho art. 10 CCyC, retrotracción al IPC, cautelar ex nunc), demanda de daño punitivo, demanda por garantía y producto defectuoso (art. 17), y reclamo ante la Ventanilla Única Federal / OMIC
- Cuantificar el daño punitivo con el tope móvil en CBT del INDEC (Ley 27.701), no con el monto fijo derogado; aplicar la prescripción quinquenal (art. 2560 CCyC) y no el art. 50 LDC
- Resolver el fuero entre Justicia de Consumo, Comercial nacional, CCF y CAyTyC porteño (Ley 6286), y verificar la conciliación o mediación prejudicial local como recaudo de admisibilidad
- Apoyarse en jurisprudencia verificada: Halabi y PADEC c/ Swiss Medical (colectivas), Cainelli c/ OMINT y Morsentti c/ OSDE (prepagas/DNU 70), Machinandiarena c/ Telefónica (daño punitivo)

**Penal:**
- Analizar estrategia de defensa por etapa procesal y código aplicable (CPPN / CPPF / CPPCABA / CPPBA)
- Evaluar procedencia de colaboración eficaz (Ley 27.304) y proceso de flagrancia (Ley 27.272)

**Medicina legal y pericia médica forense:**
- Redactar y analizar informes médico-legales periciales en los fueros penal, civil y de la seguridad social
- Verificar estructura, completitud de puntos periciales y vacíos probatorios antes de presentar el informe
- Identificar el régimen procesal aplicable (CPPN / CPPF / CPCCN / Ley 24.655) y alertar sobre plazos urgentes en causas con detenidos

**Familia:**
- Armar convenios reguladores de divorcio con todos los institutos del CCCN, alertando el plazo de caducidad de 6 meses de la compensación económica (art. 442)
- Redactar demandas de alimentos (competencia del centro de vida, art. 716; cuantificación por IC-INDEC; subsistencia hasta 21/25) y solicitudes de medidas de protección por violencia familiar (Ley 26.485 mod. Olimpia; Ley 12.569 PBA, medidas en 48 horas, sin mediación)
- Analizar cuidado personal, régimen comunicacional, filiación, restitución internacional y compensación económica con holdings verificados (`familia-DOCTRINA.md`)

**Protección de datos e informes crediticios:**
- Identificar el escenario antes de elegir la vía: dato pagado que sigue figurando / dato caduco / dato falso / phishing con credenciales propias; la estrategia difiere en cada caso
- Calcular el plazo de caducidad del art. 26 inc. 4 Ley 25.326 desde la última información adversa significativa (no la mora original), distinguir el plazo de 5 años del reducido de 2 años para deudas canceladas, y contrarrestar el argumento de prescripción civil no cumplida con la doctrina "Catania" (CSJN)
- Redactar intimaciones fehacientes al banco emisor o a la empresa de informes (Veraz/Nosis) con los plazos legales exactos: 10 días corridos para acceso (art. 14), 5 días hábiles para rectificación/supresión (art. 16)
- Evaluar la medida cautelar innovativa (bloqueo preventivo del dato) verificando verosimilitud del derecho y perjuicio concreto acreditable antes de incluir el acápite; un pedido sin prueba suficiente se rechaza in limine y debilita el principal
- Advertir sobre la trampa procesal de acumular daños al hábeas data sin verificar el criterio del fuero sobre mediación previa para el rubro resarcitorio; en urgencia pura, plantear solo el hábeas data y reservar los daños para proceso posterior o COPREC
- En casos de phishing o ingeniería social: secuenciar el reclamo intimando primero al banco emisor (Comunicaciones BCRA A 7328 y A 7370, deber de seguridad en canales electrónicos) antes de exigir a Veraz la supresión directa
- Invocar el daño moral in re ipsa conforme jurisprudencia mayoritaria CNCom / CNCiv y Com Fed, sin exigir prueba psicológica, pero siempre construyendo la base fáctica de impacto concreto (crédito rechazado, locación frustrada, tiempo de permanencia en la base) que sostiene la cuantificación

**Tributario:**
- Analizar recursos ante el TFN y la CNACAF
- Revisar compliance bajo Ley 25.326 (habeas data) con vocabulario argentino nativo

**Concursal:**
- Verificar privilegios de créditos y estrategia de verificación
- Analizar acciones de recomposición patrimonial (período de sospecha, arts. 118-119 LCQ)

**Notarial:**
- Redactar escrituras traslativas de dominio, donaciones, poderes e hipotecas con alertas automáticas de asentimiento, afectación a vivienda y régimen patrimonial matrimonial
- Aplicar compliance UIF 242/2023 con segmentación de clientes por nivel de riesgo y umbrales indexados por SMVM
- Generar cláusulas tipo para los actos más frecuentes del protocolo: asentimiento conyugal, entrega de posesión, origen de fondos, tracto abreviado, usufructo vitalicio con derecho de acrecer, dispensa de colación, poder irrevocable, constatación de entorno digital
- Verificar cadena dominial, certificados registrales y plazos de vigencia según jurisdicción del RPI

**Tránsito:**
- Redactar descargos y recursos contra multas e infracciones de tránsito en cualquier jurisdicción (Nacional/ANSV-SINAI, CABA, PBA y las 22 provincias, con la norma de adhesión a la Ley 24.449 verificada por jurisdicción)
- Identificar la autoridad de juzgamiento competente y la vía recursiva según el organismo que labró el acta, sin transpolar plazos ni institutos entre jurisdicciones
- Aplicar el art. 71 de la Ley 24.449 (defensa por escrito a distancia a más de 60 km), distinguiéndolo de la prórroga de jurisdicción que exige convenio de reciprocidad, y advertir el bloqueo del art. 72 por retención de licencia
- Impugnar fotomultas por falta de homologación del cinemómetro, denuncia de venta anterior al hecho, error de identificación, falta de notificación en término o prescripción de la acción de falta
- Advertir el efecto registral del CENAT: la ANSV no puede trabar la renovación de la licencia mientras el descargo esté pendiente o la multa no esté firme y consentida

---

## Lo que no reemplaza

El criterio del abogado. La responsabilidad profesional. La firma.

Todo output del sistema es un borrador. No sabe qué pasó en la negociación, no conoce la relación con la contraparte, no tiene el expediente completo. Acelera la parte mecánica. Las decisiones son siempre del abogado.

---

## Actualización del sistema

El sistema tiene dos ciclos de actualización con distinta frecuencia:

**Perfiles de área (`*-CLAUDE.md`):** actualizar cuando cambia un instituto central
del área (nueva ley, reforma procesal, cambio de criterio CSJN en un tema estructural)
o cuando cambia una norma listada en la sección `## Alerta normativa` de ese perfil.
Frecuencia orientativa: continua para alertas normativas; semestral para el resto.

Para actualizaciones urgentes (nueva tasa CNAT, cambio de tope art. 245, reforma
procesal): modificar directamente la sección `## Alerta normativa` del perfil
afectado y registrar el cambio en `CHANGELOG.md`. Esa sección tiene el impacto
más inmediato en los marcadores que el sistema emite.

La tabla de normas de alta volatilidad del `CHANGELOG.md` lista los datos con
mayor frecuencia de cambio y la fecha de última verificación de cada uno.

**Sincronización del fork con el repo original:**

El repositorio incluye un workflow de GitHub Actions que sincroniza tu fork con el original de Anthropic todos los días a las 03:00 (hora Argentina), sin que tengas que hacer nada. Es un robot incluido en el repo: revisa si hubo cambios en el repo original y los incorpora a tu copia automáticamente. Tus archivos propios (carpeta `argentina/` y `legal.local.md`) nunca se pisan. El workflow corre gratis en todos los planes de GitHub, incluido el gratuito.

Si preferís hacerlo a mano, GitHub te avisa cuando tu fork está desactualizado y podés sincronizar con un click desde el botón "Sync fork" en la página del repo.

**Mantener tu copia local al día:**

Ojo con esta distinción, porque se confunde seguido. El workflow de arriba mantiene al día el repo en GitHub, no la carpeta de tu computadora. Que GitHub tenga lo último no significa que tu copia local lo tenga: para eso hay que bajar los cambios.

Si trabajás con Cowork o con archivos locales, la carpeta de tu máquina es la que Claude lee, así que tiene que estar al día. Lo más simple es dejarlo automático: corrés un instalador una sola vez y de ahí en más tu copia se actualiza sola (en Windows al iniciar sesión; en Mac y Linux a horario fijo). Se eligió iniciar sesión en Windows a propósito: una notebook está apagada de noche, así que un horario de madrugada se saltearía.

Elegí según tu caso:

*Si clonaste el repo con git:*
- Windows: doble clic en `instaladores/auto-update-git.bat`
- Mac o Linux: en la terminal, dentro de la carpeta del repo, `bash instaladores/auto-update-git.sh`

*Si no querés instalar git y solo usás el sistema:*
- Windows: doble clic en `instaladores/instalar-sin-git.bat`
- Mac o Linux: `bash instaladores/instalar-sin-git.sh`

Dos cosas importantes. Con la versión con git, tu `argentina/legal.local.md` (la config de tu estudio) nunca se pisa. Con la versión sin git, ese es el único archivo que podés editar: cualquier otro que toques se sobrescribe en la próxima actualización. La versión sin git requiere que el repo sea público.

Si en algún momento hay un conflicto de versiones, el sistema no lo resuelve solo ni descarta nada en silencio: frena, te abre un issue en GitHub con el detalle y los pasos para resolverlo, y aplica los cambios recién cuando lo arreglás.

Si preferís hacerlo a mano en vez de automático, es `git pull` en la carpeta del repo antes de cada sesión (Opción A, Paso 3). El detalle de cada instalador está en `instaladores/LEEME.md`.

---

## Contribuciones

El proyecto sigue en desarrollo para adaptar completamente Claude for Legal al derecho argentino.

Si hay abogados argentinos interesados en colaborar, la idea es dividir áreas de trabajo para coordinar esfuerzos, evitar duplicar trabajo y avanzar más rápido.

**Para reportar un error normativo**, abrí un issue indicando:
- la norma correcta y la fuente oficial
- el archivo y sección afectada
- el texto actual que considerás incorrecto

**Para proponer mejoras o nuevas áreas**, abrí un issue describiendo qué querés sumar y con qué alcance. Si querés adaptar el perfil para otra jurisdicción (Uruguay, Chile, Colombia), forkéalo y avisame.

**Para contribuir directamente**, editá el archivo en tu fork y abrí un Pull Request describiendo el cambio. Si no sabés cómo, mandame el texto por mensaje y lo incorporo yo con la atribución correspondiente. Los cambios con fuente normativa citada se procesan primero.

**Para aportar un caso de verificación**, el sistema incluye una carpeta `evals/` con casos de prueba que permiten comprobar que los perfiles de área detectan vicios y vulnerabilidades procesales de forma consistente. La idea es la misma que un caso de control en la práctica: una pieza procesal con solución conocida que se usa para verificar que la herramienta funciona antes de usarla en un expediente real. Cada caso tiene tres archivos: la pieza anonimizada, la rúbrica con los puntos que el sistema debe identificar, y la solución esperada. Las áreas prioritarias son nulidades procesales penales y vicios formales en contratos. Ver `evals/evals-README.md` para el formato completo.

---

## Licencia

Este repositorio es un fork de [claude-for-legal](https://github.com/anthropics/claude-for-legal) de Anthropic, Inc.

El codigo base del upstream permanece bajo la **Apache License, Version 2.0** - ver archivo `LICENSE` en la raiz del repositorio.

El contenido original desarrollado en este fork (skills argentinas, perfiles de area, prompts de configuracion y adaptaciones al derecho argentino, identificados en `LICENSE-FORK.md`) es obra de autoria propia:

**Copyright (c) 2024-2025 Cristian Aboitiz. Todos los derechos reservados.**

Ese contenido se publica bajo licencia dual: uso no comercial libre con atribucion; uso comercial requiere autorizacion previa. Ver terminos completos en `LICENSE-FORK.md`.

---

## Autor

Dr. Cristian Aboitiz · [@abogadoaboitiz](https://x.com/abogadoaboitiz)  
Abogado (CPACF) · CABA y GBA · Legal tech & IA aplicada a práctica jurídica argentina

*Última actualización: junio 2026*
