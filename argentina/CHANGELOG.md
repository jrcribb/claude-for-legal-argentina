# CHANGELOG · claude-for-legal Argentina
 
> Historial de cambios del repositorio.
> Formato: fecha · archivo(s) afectado(s) · descripción del cambio · motivo.
> Las entradas más recientes van primero.
>
> Cuándo actualizar este archivo:
> - Cambio de norma listada en una sección "## Alerta normativa"
> - Modificación de un marcador o de una regla operativa
> - Agregado o eliminación de un archivo del repositorio
> - Corrección de un error normativo
> - Incorporación de un nuevo perfil de área o archivo de ejemplos
>
> Cuándo NO es necesario actualizar:
> - Correcciones tipográficas menores sin impacto en comportamiento del sistema
> - Actualizaciones de estilo sin cambio de contenido normativo
 
---
 
## Instrucción de urgencia
 
Cuando cambia una norma que afecta a múltiples consultas diarias (un tope indemnizatorio,
una tasa de interés, un umbral de punibilidad), actualizar primero la sección
`## Alerta normativa` del perfil afectado y registrar el cambio aquí.
No esperar a la revisión periódica.
 
---
 
## 2026

### Junio 2026 - Nuevo módulo de tránsito + verificación de adhesiones provinciales + baja del módulo macOS

**Archivos nuevos:**
- `argentina/transito-CLAUDE.md` - perfil de práctica para impugnación de infracciones y multas de tránsito. Cubre régimen nacional (ANSV/SINAI - Ley 26.363, Decreto 1716/2008 Anexo I; Ley 24.449 Título VIII supletorio), CABA (Ley 2148 Código de Tránsito y Transporte, Ley 451 Régimen de Faltas, Ley 1217 Procedimiento de Faltas), PBA (Ley 13.927 mod. Ley 15.402 -con discrepancia de vigencia señalada-, Decreto-Ley 8751/77 Faltas Municipales, Decreto-Ley 8031/73 contravencional) y matriz de las 22 provincias con su ley de adhesión a la Ley 24.449. Documenta el art. 71 (defensa por escrito a distancia a más de 60 km vs. prórroga de jurisdicción con convenio de reciprocidad), el bloqueo del art. 72 por retención de licencia, la mecánica registral del CENAT y el procedimiento sancionador del SINAI con su vía recursiva
- `argentina/transito/descargos/descargos-SKILL.md` - skill de redacción de descargos y recursos de tránsito: identificación previa de jurisdicción y órgano, advertencia estratégica de pérdida del descuento por pago voluntario, encabezados por autoridad de juzgamiento competente
- `argentina/transito/descargos/modelos/` - 7 modelos por causal: nulidad formal/fotomulta (calibración del cinemómetro), urgencia/estado de necesidad, denuncia de venta anterior al hecho, falta de notificación/prescripción, error de identificación/cesión de uso en flota, recurso de apelación, y defensa por escrito a distancia art. 71

**Archivos modificados:**
- `argentina/CLAUDE.md` - routing de área (transito + `transito/descargos/descargos-SKILL.md`) y árbol de estructura con los 7 modelos
- `argentina/marcadores-GLOSARIO.md` - nueva entrada canónica A11 · VERIFICAR PLAZO (plazos procesales/administrativos ordinarios que varían por jurisdicción o código local; distinta de A10 ALERTA PLAZO FATAL, reservada para caducidad/prescripción extintiva). Formaliza un marcador ya usado de facto en administrativo y tránsito
- `README.md` (raíz) - árbol de estructura, tabla de perfiles (fila de tránsito) y sección de capacidades "Tránsito"
- `argentina/fuentes.md` - eliminada la sección "Módulo de automatización de escritorio (macOS)"

**Archivos eliminados:**
- `argentina/macos-automation.md` - baja del módulo opcional de automatización de escritorio macOS (macos-use). Se retiró además la fila del conector macos-use de la tabla de conectores del README y la línea del árbol en `CLAUDE.md` y `README.md`

**Verificación de adhesiones provinciales (SAIJ + sitios oficiales provinciales/BORA vía navegador, junio 2026):**
El cruce de las 22 provincias contra fuente oficial corrigió siete números de ley erróneos en los datos de base y detectó una norma derogada:
- Números corregidos: Chaco Ley 4488 (no 4933), San Juan Ley 528-R (no 6684), La Pampa Ley 1713 (no 2443), La Rioja Ley 9941 (no 6168), Chubut Ley XIX-26 / antes 286 (no 4165), Tucumán Ley 6836 (no 8084), Santiago del Estero Ley 6904 (no 6283)
- Vigencia: Entre Ríos Ley 8963 derogada por Ley 10025 (BO 09/05/2011, mod. Ley 10460); San Luis adhesión vigente Ley X-888 (2014), descartada la inexistente "X-0568-2007/2013"
- Confirmadas en fuente: Córdoba 8560, Mendoza 9024 (plazo de descargo 5 días hábiles, art. 114), Santa Fe 13.133 + 13.169 (Código de Faltas de Tránsito), Salta 6913, Misiones XVIII-29 (sustituyó la 4511), Corrientes 5037, Catamarca 5285, Río Negro S-2942, Jujuy 4870, Neuquén 2178, Santa Cruz 2417, Tierra del Fuego 376, Formosa 1150. Cada fila de la matriz quedó con su origen trazable (SAIJ / BO / web oficial); ninguna en "aportado"

**Motivo:** incorporación de un área de alto volumen de consultas (faltas de tránsito) con verificación normativa completa por jurisdicción, y baja de un módulo (macos-use) que no aplica al uso del sistema.

---

### Junio 2026 - Auditoría y ampliación del módulo de familia (correcciones + doctrina + ejemplos + escritos)

**Archivos nuevos:**
- `argentina/familia-DOCTRINA.md` - doctrina y holdings verificados de familia por instituto, espejando `civil-DOCTRINA.md` y `penal-DOCTRINA.md`. Holdings verificados vía SAIJ (búsqueda de jurisprudencia); por tratarse de causas con NNyA, las carátulas se publican anonimizadas, de modo que cada entrada se ancla al número de sumario SAIJ + tribunal + fecha (no se reconstruyen carátulas). Institutos: interés superior y autonomía progresiva (art. 26 CCCN; Sums. I0080514, L0006741); restitución internacional (CSJN, Sums. A0075554, A0074851, B0957239; alzada B0958966); compensación económica (Sum. S0012209); gestación por sustitución (Sum. W0003033); cuidado personal compartido (Sums. B0964171, H0007111, S0011282, I0084467). Marcadores [INSERTAR FALLO VERIFICADO] y [VERIFICAR CITA DE FALLOS] para institutos sin precedente cargado o con cita formal pendiente
- `argentina/ejemplos-familia.md` - escenarios de práctica anotados: divorcio y compensación económica (caducidad de 6 meses), alimentos a hijos (cuantificación IC-INDEC, prescripción bienal, subsistencia hasta 21/25), violencia familiar PBA con componente digital (medidas en 48 hs, sin mediación, art. 7 ter armas, Olimpia art. 26 a.9), restitución internacional (excepción de grave riesgo, plazo del año)
- `argentina/familia/escritos/escritos-familia-SKILL.md` - skill orquestador de escritos de familia, calcado de `civil/escritos/` y `consumidor/escritos/`: proceso de tres pasos, reglas de integridad, racionalizaciones, señales de alerta y verificación al cierre
- `argentina/familia/escritos/modelos/` - tres modelos: convenio regulador de divorcio (art. 438), demanda de alimentos a hijos (con provisorios), solicitud de medidas de protección por violencia familiar

**Archivos modificados (auditoría y corrección de `familia-CLAUDE.md`):**
- `argentina/familia-CLAUDE.md` - auditoría del titular con verificación normativa verbatim (Infoleg/SAIJ/normas.gba.gob.ar): (1) eliminado el inexistente "CPC CABA Ley 6716" y el "fuero de familia local porteño operativo" (alineación con `civil-CLAUDE.md`); (2) corregida la atribución al Libro Segundo de las reformas de desregulación (Ley 27.737 es locaciones, DNU 1017/2024 hipotecas divisibles, DNU 338/2025 Código Aeronáutico); (3) violencia digital reencuadrada en la Ley 27.736 "Olimpia" (art. 6 inc. i; cautelares art. 26 ap. a.8 y a.9), reemplazando la cita errónea "art. 5 inc. 6 / art. 6 inc. g"; (4) suprimida la "UUMSE" no verificable en SAIJ; (5) alimentos del hijo mayor precisados (hasta 21 por arts. 658/662, hasta 25 si estudia por art. 663), corrigiendo el "cese a los 18"; (6) arts. 765-766 CCCN alineados al DNU 70/2023; (7) cinco citas de artículo corregidas verbatim: obstrucción del vínculo art. 653 inc. a (no inc. b), sanción del régimen de comunicación art. 557 (no 666), competencia de alimentos a hijos art. 716 (no 719), caducidad de impugnación de filiación art. 590 (no 589), Consejero de Familia PBA en el CPCCBA Decreto-Ley 7425/68 arts. 827 y ss. (no "art. 828 Ley 13.634"); (8) Ley 12.569 PBA precisada (texto Ley 14.509 y Ley 14.657, medidas en 48 hs, art. 7 ter, apelación 3 días, prohibición de mediación art. 11); (9) marcadores normalizados al glosario (A4, A8, A10, B1); (10) bloque "Estado del escrito" estructurado y footer de versionado
- `argentina/claude.md` - routing de área (familia + DOCTRINA + ejemplos; familia + escritos) y árbol de estructura
- `README.md` (raíz) - árbol, tabla de perfiles (familia con complementos; fila propia para `familia-DOCTRINA.md`), sección de capacidades "Familia"

**Contenido normativo verificado (Infoleg/SAIJ/normas.gba.gob.ar, junio 2026):**
- Ley 27.736 "Ley Olimpia" (id 391774): violencia digital incorporada a la Ley 26.485 (art. 6 inc. i; cautelares art. 26 ap. a.8 prohibición de contacto digital y a.9 supresión de contenido con URL y aseguramiento de datos 90 días)
- Ley 27.737 (id 391456): reforma de locaciones (arts. 1198-1221 CCCN), no de familia; DNU 1017/2024 (id 406267) hipotecas divisibles; DNU 338/2025 (id 412944) Código Aeronáutico - ninguno modifica el Libro Segundo
- Ley 25.358 (id 65330): Convención Interamericana sobre Restitución Internacional de Menores, confirmada
- CCCN (SAIJ) arts. 557, 590, 653, 662, 663, 666, 716, 719, 442, 525, 526, 2562 verificados verbatim
- Ley 12.569 PBA (normas.gba.gob.ar): texto ordenado con Ley 14.509 y Ley 14.657; art. 23 derogado por Ley 14.509; Consejero de Familia y etapa previa en el CPCCBA (Decreto-Ley 7425/68, arts. 827 y ss.), no en la Ley 13.634

**Fuentes:**
- InfoLEG (Leyes 27.736, 27.737, 25.358, 27.610; DNU 1017/2024 y 338/2025); SAIJ (CCCN Ley 26.994; sumarios de jurisprudencia de familia); normas.gba.gob.ar (Ley 12.569, Ley 13.634, CPCCBA)
- Verificación normativa junio 2026
---
 
### Junio 2026 - Auditoría y ampliación del módulo penal (correcciones + doctrina + escritos)

**Archivos nuevos:**
- `argentina/penal-DOCTRINA.md` - doctrina y jurisprudencia penal por instituto, espejando `civil-DOCTRINA.md` y `discapacidad-DOCTRINA.md`. Holdings verificados vía SAIJ y citas oficiales de Fallos aportadas por el titular en sesión: "Acosta" (Fallos 331:858, probation tesis amplia), "Góngora" (Fallos 336:392, Belém do Pará, improcedencia de probation en violencia de género), "Arriola" (Fallos 332:1963, tenencia para consumo personal, art. 19 CN), "Casal" (Fallos 328:3399, revisión amplia en casación), "Verbitsky" (Fallos 328:1146, hábeas corpus colectivo correctivo). Marcadores `[INSERTAR FALLO VERIFICADO]` para los institutos sin fallo cargado (prisión preventiva, regla de exclusión, jurados, prescripción, RPPJ). No reproduce texto de sentencias
- `argentina/ejemplos-penal.md` - escenarios de práctica anotados (probation vs. oposición fiscal, nulidad de allanamiento, cese de prisión preventiva, extinción de la acción penal tributaria)
- `argentina/penal/escritos/escritos-penal-SKILL.md` - skill orquestador de escritos penales, calcado del patrón de `civil/escritos/` y `consumidor/escritos/`: proceso de tres pasos, reglas de integridad, racionalizaciones y verificación al cierre
- `argentina/penal/escritos/modelos/` - cinco modelos: excarcelación o cese de prisión preventiva, solicitud de probation, hábeas corpus correctivo, nulidad de allanamiento, recurso de casación

**Archivos modificados:**
- `argentina/penal-CLAUDE.md` - auditoría del titular: (1) marcadores normalizados al glosario canónico ([INSERTAR FALLO VERIFICADO: CSJN - ...], [VERIFICAR MONTO ACTUALIZADO] para SMVM y UVA, [VERIFICAR CRITERIO DEL FUERO] para CPPF y colaboración eficaz, [ALERTA PLAZO FATAL] con estructura completa); (2) corregida la afirmación de que la Ley 27.401 "modificó el art. 1 CP para incorporar" la RPPJ (régimen autónomo, art. 1 Ley 27.401; el art. 29 reformó el art. 1 CP solo para la jurisdicción extraterritorial del cohecho transnacional); (3) sanciones (art. 7), eximente/atenuante (arts. 8, 9, 22, 23) y acuerdo de colaboración (arts. 16-21) precisados; (4) fuentes alineadas con el índice general; (5) footer de versionado con bloque de verificación y pendientes
- `argentina/CLAUDE.md` - routing de área (penal + DOCTRINA + ejemplos; penal + escritos) y árbol de estructura
- `README.md` (raíz) - árbol, tabla de perfiles (penal, penal-DOCTRINA, ejemplos-penal)

**Contenido normativo verificado (Infoleg/SAIJ, junio 2026):**
- Ley 27.799 (BO 2/1/2026): todos los umbrales del Título IX Ley 27.430 transcriptos en el perfil coinciden verbatim ($100.000.000 evasión simple, $1.000.000.000 agravada, $200.000.000 interpósita/beneficios, $10.000.000 apropiación, $7.000.000/$35.000.000/$14.000.000/$3.500.000 seguridad social, $20.000.000 simulación); art. 16 (extinción), art. 19 (no denuncia) y art. 43 (ajuste UVA desde 1/1/2027) confirmados
- Ley 27.739 (BO 15/3/2024, vigente 14/4/2024 por art. 40): art. 303 CP umbral 150 SMVM; art. 306 inc. f (financiamiento de proliferación); UIF al Ministerio de Economía (art. 5); registro de PSAV bajo CNV (art. 37)
- Ley 27.401: catálogo de delitos (arts. 258, 258 bis, 265, 268, 268(1) y (2), 300 bis) y sanciones (art. 7) confirmados verbatim; el art. 29 modificó el art. 1 CP solo para el cohecho transnacional
- Art. 76 bis CP (probation, máximo tres años): confirmado por sumarios SAIJ
- Art. 56 bis Ley 24.660 (id 37872): catálogo de 11 incisos de delitos excluidos del período de prueba confirmado verbatim (sustituido por art. 30 Ley 27.375, BO 28/7/2017)

**Glosario:**
- `argentina/marcadores-GLOSARIO.md` v1.2 - agregado marcador canónico B4 `[VERIFICAR CITA DE FALLOS]` para el caso de holding verificado vía conector con cita formal (Fallos tomo:página) pendiente; usado en `penal-DOCTRINA.md`

**Fuentes:**
- InfoLEG (Ley 27.799 id 422008; Ley 27.739 id 397355; Ley 27.401 id 296846; Ley 24.660 id 37872); SAIJ (sumarios de "Acosta", "Arriola", "Góngora", revisión amplia)
- Verificación normativa junio 2026

**Citas de Fallos cerradas (aportadas por el titular en sesión; los conectores disponibles no exponen los fallos de la CSJN):**
- Probation, consumo, recursos y hábeas corpus: "Acosta" 331:858, "Góngora" 336:392, "Arriola" 332:1963, "Casal" 328:3399, "Verbitsky" 328:1146
- Prisión preventiva (CSJN): "Nápoli" 321:3633, "Nánez" 327:2403, "Véliz" (causa 5640), plenario "Díaz Bessone" (C.N.C.P.); (Corte IDH): Suárez Rosero, Bayarri c/ Argentina, Jenkins c/ Argentina, Tzompaxtle Tecpile c/ México, García Rodríguez c/ México
- Exclusión probatoria y nulidad de allanamiento: "Charles Hermanos" 46:36, "Montenegro" 303:1938, "Rayford" 308:733, "Ruiz" 310:1847, "Fiorentino" 306:1752, "Ciraolo" 321:1328, "Minaglia" 330:3801, "Ventura" 312:201, "Daray" 317:1985, "Quaranta" 333:1674
- Díaz Bessone cerrado: C.N.C.P. en pleno, "Díaz Bessone, Ramón G. s/ recurso de inaplicabilidad de ley", Plenario N° 13, 30/10/2008. Corte IDH (prisión preventiva) con Serie C completa: Suárez Rosero No. 35 (1997), Bayarri No. 187 (2008), Jenkins No. 397 (2019), Tzompaxtle Tecpile No. 470 (2022), García Rodríguez No. 482 (2023)
- Jurados (sección 7 nueva): "Canales" (Fallos 342:697), "V.R.P., V.P.C. y otros vs. Nicaragua" (Corte IDH, Serie C No. 350, 8/3/2018), "Díaz, Marcos" (Casación PBA Sala I 2016), "Sandoval" (TSJ Neuquén 2014), más fórmulas de litigio (instrucciones, estándar "Jackson", contaminación probatoria)
- Lesa humanidad, complicidad empresarial y RPPJ (sección 8 nueva): "Arancibia Clavel" 327:3312, "Simón" 328:2056, "Blaquier"/Ledesma 344:1785, "Ford" (C.F.C.P. Sala II 2021); límite de la RPPJ (numerus clausus, no alcanza lesa humanidad); acción civil "Larrabeiti Yáñez" 330:4592 y "Villamil" 340:345
- "V.R.P., V.P.C. y otros vs. Nicaragua" cerrado: Corte IDH, Serie C No. 350, 8/3/2018 (incluye el marco de reparación integral del art. 63.1 CADH)
- "Ford" cerrado: C.F.C.P. Sala II, "Müller, Pedro y otros s/recurso de casación", Registro N° 1589/21, causa FSM 27004012/2003/TO4/CFC, sept. 2022 (condenas a Sibilla y Müller, confirmación de TOF 1 San Martín 11/12/2018)
- Prescripción de la acción penal común (sección 9 nueva): encuadre normativo (arts. 62-64 y 67 CP) y deslinde común/lesa humanidad/plazo razonable; queda abierto el fallo de la CSJN sobre "secuela de juicio"
- Corrección de carátula verificada vía JUBA (idFallo 143028): el precedente de jurados ("regla del jurado razonable") es "Aref, Vanesa Anahí; Bertolano, Braian Nicolás y Morales, Ives Nicolás s/ recurso de casación", T.C.P. PBA Sala I, causa N° 75.937, Registro N° 1119/2016. Ni "Díaz Marcos" (no es carátula real) ni "Mazzon" (causa 72.016, 27/10/2015, que es un precedente relacionado distinto). Registros homónimos descartados (Díaz, causa 142.063/2026, plazo razonable RPJ; Sandoval Sevilla Meza Vitale, sent. 38/2022, homicidio). Sandoval (jurados) precisado: primer juicio por jurados del país, Cutral Có, veredicto 10/4/2014
- Imprescriptibilidad de la reparación civil por lesa humanidad: anclada en Corte IDH "Órdenes Guerra y otros vs. Chile" (Serie C No. 372, 29/11/2018), con "Almonacid Arellano vs. Chile" (Serie C No. 154, 26/9/2006) para la imprescriptibilidad del crimen; Serie C verificadas en el sitio oficial de la Corte IDH (corteidh.or.cr). Es el eje a oponer a "Villamil"
- Aclaración conceptual (sección 9): la "secuela de juicio" de la prescripción (art. 67 CP, reformado por Ley 25.990) no es la "secuela del juicio por jurados"; "Canales" (ne bis in idem) no completa ese marcador
- Carátula del fallo de jurados de Casación PBA cerrada vía JUBA (idFallo 143028): "Aref, Bertolano y Morales", causa 75.937, Reg. 1119/2016, 22/12/2016. Serie C de "Órdenes Guerra" (372) y "Almonacid Arellano" (154) cerradas vía corteidh.or.cr
- Cargadas en `penal-DOCTRINA.md`, el perfil, los ejemplos y los modelos. Marcadores [VERIFICAR CITA DE FALLOS] abiertos: registro de "Sandoval" (TSJ Neuquén) y "Mazzon" (causa 72.016, JUBA), y el precedente del test Yebes/Biniaris

**Pendiente:** registro de "Sandoval" (TSJ Neuquén, Cutral Có, 2014), de "Mazzon" (causa 72.016) y del test Yebes/Biniaris (JUBA); fallo de la CSJN sobre "secuela de juicio" en la prescripción (art. 67 CP, Ley 25.990); ley de jurados PBA (14.543); implementación del CPPF por distrito; 2º Protocolo de Budapest
---
 
### Junio 2026 - Capa de escritos de daños del módulo civil (skill + modelos)

**Archivos nuevos:**
- `argentina/civil/escritos/escritos-civil-SKILL.md` - skill orquestador de escritos de daños, calcado del patrón de `consumidor/escritos/` y `laboral/telegrama/`: proceso de tres pasos (encuadre y datos, verificación normativa contra la alerta de `civil-CLAUDE.md`, elección del modelo), reglas de integridad, racionalizaciones comunes, señales de alerta y verificación al cierre; frontmatter con `name` y `description` para triggering automático
- `argentina/civil/escritos/modelos/demanda-danos-accidente-transito.md` - demanda por accidente de tránsito; factor de atribución objetivo por riesgo de la cosa (arts. 1757-1758 CCCN + art. 64 Ley 24.449), citación en garantía (art. 118 Ley 17.418) con límite y franquicia oponibles, rubros y prescripción trienal (art. 2561)
- `argentina/civil/escritos/modelos/demanda-danos-mala-praxis.md` - demanda por mala praxis médica; responsabilidad subjetiva del profesional liberal (art. 1768), responsabilidad de la institución por el dependiente (art. 1753), cargas probatorias dinámicas (art. 1735), historia clínica (art. 14 Ley 26.529), derivación al perfil administrativo si la institución es estatal (art. 1764)
- `argentina/civil/escritos/modelos/demanda-danos-incumplimiento-contractual.md` - demanda por incumplimiento contractual; cumplimiento o resolución (arts. 1083-1089), mora (arts. 886-887), reparación (arts. 1082, 1738-1741), cláusula penal (arts. 790-794) y prescripción

**Archivos modificados:**
- `argentina/civil-CLAUDE.md` - sección "Archivos complementarios": referencia al skill de escritos
- `argentina/CLAUDE.md` - routing de área (`civil-CLAUDE.md` + `civil/escritos/escritos-civil-SKILL.md`) y árbol de estructura
- `README.md` (raíz) - árbol, capacidades, tabla de perfiles, instalación del Project y bloque "Civil - daños y responsabilidad" en "Lo que podés hacer"

**Contenido normativo verificado (junio 2026):**
- Art. 1768 CCCN (verbatim): la actividad del profesional liberal se rige por las obligaciones de hacer; responsabilidad subjetiva salvo resultado comprometido; no alcanzada por la responsabilidad por riesgo del art. 1757
- Art. 1747 CCCN (verbatim): "acumulabilidad del daño moratorio" (al compensatorio o al valor de la prestación), no la cláusula penal; corregida una cita que lo usaba como cláusula penal (esta se rige por los arts. 790-794)
- Art. 1082 CCCN (verbatim): reparación del daño en sede contractual, con remisión a la cláusula penal de los arts. 790 y ss.
- Art. 14 Ley 26.529 (verbatim): el paciente es titular de la historia clínica; copia autenticada dentro de las 48 horas. Corregida en `ejemplos-civil.md` una cita a un inexistente "art. 55 Ley 26.529"

**Fuentes:**
- CCCN (Ley 26.994), arts. verificados verbatim (1082, 1747, 1768); Ley 26.529 art. 14; Ley 17.418 art. 118; Ley 24.449 art. 64; Ley 26.589 y Ley 13.951 (mediación prejudicial)
- Verificación normativa junio 2026
---
 
### Junio 2026 - Auditoría y ampliación del módulo civil (correcciones normativas + doctrina/jurisprudencia)

**Archivos nuevos:**
- `argentina/civil-DOCTRINA.md` - doctrina y jurisprudencia civil por instituto, espejando `discapacidad-DOCTRINA.md`. Diez leading cases verificados (cita y holding) vía SAIJ/CSJN, organizados en: reparación integral y raíz constitucional, cuantificación del daño a la persona e incapacidad, riesgo y deber de seguridad, seguro/franquicia/citación en garantía, y contratos/abuso del derecho. Marcadores `[INSERTAR FALLO VERIFICADO]` para los institutos sin fallo cargado. No reproduce texto de sentencias

**Archivos modificados:**
- `argentina/civil-CLAUDE.md` - correcciones normativas de fondo (ver abajo); sección "Archivos complementarios" y footer con referencia a `civil-DOCTRINA.md`; fecha de verificación a junio 2026
- `argentina/ejemplos-civil.md` - corrección de prescripción de vicios ocultos y de consumo; daño punitivo reencuadrado; cita no verificable reemplazada por marcador; referencia a `civil-DOCTRINA.md`
- `argentina/CLAUDE.md` - routing de área (`civil-CLAUDE.md` + `ejemplos-civil.md` + `civil-DOCTRINA.md`) y árbol de estructura
- `README.md` (raíz) - árbol de archivos, lista de capacidades, tabla de perfiles (fila propia para `civil-DOCTRINA.md`) e instrucción de carga del Project

**Correcciones normativas verificadas (junio 2026):**
- **Art. 1221 CCCN (rescisión anticipada de locación) corregido:** el texto vigente es el sustituido por el **DNU 70/2023 (art. 262)** - resolución en cualquier momento, indemnización del **10% del saldo del canon locativo futuro**; el art. 1221 bis fue derogado. El perfil tenía invertido el régimen (atribuía el 10% a la Ley 27.551 derogada y afirmaba que revivía el texto de "un mes y medio / un mes")
- **Prescripción de vicios redhibitorios:** es de **1 año (art. 2564 inc. a CCCN)**, distinta de la caducidad de la garantía (3 años inmuebles / 6 meses muebles, art. 1055 CCCN). El perfil y los ejemplos confundían ambos plazos
- **Responsabilidad por ruina de obra:** doble plazo - caducidad decenal (art. 1275 CCCN, el daño debe producirse dentro de los 10 años de aceptada la obra) y prescripción anual desde la ruina (art. 2564 inc. c CCCN)
- **Prescripción de la acción de daños de consumo (en `ejemplos-civil.md`):** 5 años (art. 2560 CCCN), no 3 años del art. 50 LDC (que tras la Ley 26.994 rige solo sanciones administrativas)
- **Fuero local CABA:** no hay código procesal civil y comercial local de CABA vigente; la justicia civil y comercial ordinaria sigue ante el fuero nacional (eliminada la referencia a un inexistente "CPC CABA Ley 6716" y a un "fuero civil unificado local")
- **Citación en garantía (art. 118 Ley 17.418):** reencuadre de "acción directa" - la ley argentina no consagra como regla una acción directa autónoma del tercero contra la aseguradora; el límite de cobertura y la franquicia son oponibles al damnificado (Cuello, Buffoni)
- **Factor de atribución equidad:** separado el art. 1750 (daño por acto involuntario) de la atenuación equitativa del art. 1742 (no procede si hubo dolo)
- **Daño punitivo:** alineado al tope móvil en CBT del INDEC (art. 47 inc. b LDC, texto Ley 27.701), abandonando la referencia a "proyectos de reforma"
- Referencia de archivo complementario corregida: `red-flags-contratos.md` → `contratos/red-flags.md`

**Fallos verificados cargados (cita y holding, vía SAIJ/CSJN):**
- Reparación integral: CSJN "Santa Coloma c/ EFA" (Fallos 308:1160, 1986), "Aquino c/ Cargo Servicios Industriales" (Fallos 327:3753, 2004), "Rodríguez Pereyra c/ Ejército Argentino" (Fallos 335:2333, 2012)
- Cuantificación e incapacidad: CSJN "Arostegui c/ Omega ART" (Fallos 331:570, 2008); CNAT Sala III "Vuotto c/ AEG Telefunken" (SD 36010, 1978) y "Méndez c/ Mylba" (28/04/2008)
- Riesgo y deber de seguridad: CSJN "Mosca c/ Pcia. de Buenos Aires" (Fallos 330:563, 2007)
- Seguro y franquicia: CSJN "Cuello c/ Lucena" (Fallos 330:3483, 2007) y "Buffoni c/ Castro" (Fallos 337:329, 2014)
- Contratos y abuso: CSJN "Automóviles Saavedra c/ Fiat" (Fallos 311:1337, 1988)

**Fuentes:**
- CCCN (Ley 26.994), arts. verificados verbatim contra texto oficial (1055, 1198, 1199, 1221, 1275, 1742, 1750, 1753, 2459, 2564); DNU 70/2023 (texto oficial, art. 262); Ley 17.418; Ley 27.701
- SAIJ, CSJN y doctrina especializada para la verificación de cita y holding de la jurisprudencia
- Verificación normativa junio 2026
---
 
### Junio 2026 - Nuevo módulo de derecho del consumidor (perfil + skill de escritos + evals)

**Archivos nuevos:**
- `argentina/consumidor-CLAUDE.md` - perfil de práctica de derecho del consumidor, eje consumidor + acceso a la salud. Fueros (Justicia de Consumo, Comercial nacional, Civil y Comercial Federal, CAyTyC porteño - Ley 6286); institutos con diagnóstico (relación de consumo, aumento/baja de prepaga, daño punitivo, cláusulas abusivas, servicios públicos domiciliarios, crédito y sobreendeudamiento, comercio electrónico, garantía y vicios de productos, oferta/publicidad y lealtad comercial, trato digno y cobranzas abusivas, daño directo, verticales de alto volumen, acciones colectivas); alerta normativa y tabla de prescripción
- `argentina/consumidor/escritos/escritos-consumidor-SKILL.md` - skill orquestador de escritos de consumo (routing a modelos, reglas de integridad, racionalizaciones comunes, señales de alerta, verificación al cierre); calcado del patrón de `laboral/telegrama/`
- `argentina/consumidor/escritos/modelos/` - `amparo-salud-prepaga.md`, `demanda-dano-punitivo.md`, `demanda-garantia-producto.md`, `reclamo-ventanilla-omic.md`, y `cartas-documento-intimaciones.md` (bloque de 12 intimaciones extrajudiciales)
- `argentina/evals/consumidor-prepaga-aumento-dnu70/`, `consumidor-dano-punitivo-prescripcion/`, `consumidor-garantia-producto-defectuoso/` - casos de control (caso/rúbrica/resultado)

**Archivos modificados:**
- `argentina/CLAUDE.md` - routing de área (entrada `consumidor-CLAUDE.md` + skill de escritos), árbol de estructura, línea de fuero de consumo actualizada, subsección "Derecho del consumidor" en normativa de referencia
- `README.md` - árbol de archivos, lista de activación del Project, tabla de perfiles, tabla de alertas de normas inestables, sección de capacidades por área, registro de evals

**Contenido normativo verificado (junio 2026):**
- DNU 70/2023 vigente: el Senado lo rechazó, Diputados no lo trató (un DNU solo cae con rechazo de ambas cámaras, art. 24 Ley 26.122). Aumentos de prepaga revisables por abusividad (art. 1122 CCCN) y abuso del derecho (art. 10 CCCN) pese a la desregulación
- Tope del daño punitivo: 2.100 CBT tipo 3 del INDEC (art. 47 inc. b LDC, texto **Ley 27.701**), no el monto fijo derogado de $5.000.000. A mayo 2026 la CBT del hogar 3 rondaba $1,5M, de modo que el tope se ubicaba en el orden de los $3.150M; se recalcula con la canasta del mes
- Prescripción de la acción de daños de consumo contractual: **5 años (art. 2560 CCCN)**, no el art. 50 LDC (3 años, que tras la Ley 26.994 rige solo las sanciones administrativas); deslinde extracontractual a 3 años (art. 2561)
- COPREC disuelto (**Decreto 55/2025**); reemplazo por la Ventanilla Única Federal (**Disposición 890/2025**). La conciliación o mediación prejudicial local (CABA, PBA) subsiste como recaudo de admisibilidad de la demanda ordinaria de daños
- Mudanza competencial CABA: el traspaso del fuero de consumo a la Ciudad fue ratificado solo por la Legislatura porteña; la **Ley 6286** atribuyó la materia al fuero CAyTyC
- Lealtad comercial: **DNU 274/2019** (derogó la Ley 22.802); garantía legal arts. 11 y 17 LDC (opción del consumidor)

**Fallos verificados cargados:**
- CSJN "Halabi" (Fallos 332:111, 2009) y "PADEC c/ Swiss Medical S.A." (Fallos 336:1236, 2013) - acciones colectivas
- Cámara Nacional Civil y Comercial Federal, Sala II, "Cainelli c/ OMINT S.A." (CCF 4145/2024, 20/05/2025) y Juzgado Federal de Concepción del Uruguay N° 2, "Morsentti c/ OSDE" (causa 1461/2024) - aumentos de prepaga bajo DNU 70/23
- Cámara de Apelaciones en lo Civil y Comercial de Mar del Plata, Sala II, "Machinandiarena Hernández c/ Telefónica de Argentina S.A." (27/05/2009) - leading case de daño punitivo

**Fuentes:**
- Ley 24.240 (texto actualizado InfoLEG), Ley 27.701 (multas en CBT), DNU 70/2023, Decreto 55/2025, Disposición 890/2025, Ley 6286 CABA, DNU 274/2019
- INDEC (Canasta Básica Total, mayo 2026); SAIJ y fuentes oficiales para la jurisprudencia
- Verificación normativa junio 2026
---
 
### Mayo 2026 - Reorganización carpeta contratos + correcciones normativas DNU 70/2023 y Ley 27.742
 
**Archivos nuevos:**
- `argentina/contratos/CLAUDE.md` - perfil de práctica para revisión y redacción de contratos; reemplaza `argentina/contratos-CLAUDE.md`; incorpora distinción obra/servicio y responsabilidad decenal (arts. 1273-1274 CCCN), disclosure previo en franquicia (art. 1514 CCCN), alerta de depósito de garantía en locaciones consumo-habitacional, referencia cruzada a arbitraje internacional (Ley 27.449), alerta cesión intuitu personae (art. 1617 CCCN), instrucciones operativas para archivos complementarios ausentes
- `argentina/contratos/red-flags.md` - lista de alertas para revisión de contratos; reemplaza `argentina/red-flags-contratos.md`; incorpora red flag 9 (relación laboral encubierta en bloque civil con flujo de dos pasos post-Ley 27.742), red flag 8 actualizada con Ley 27.449, red flag 11 expandida con distinción arts. 765/766 pre/post DNU 70/2023, L10 actualizado con nuevos plazos art. 92 bis (6/8/12 meses según tamaño de empresa)
- `argentina/contratos/indices-y-tasas.md` - archivo nuevo; índices de actualización por tipo de obligación (IPC, ICL, RIPTE, UVA, CVS), marco normativo de intereses (arts. 767, 768, 770, 771, 332 CCCN), criterios judiciales de referencia por fuero con marcadores `[INSERTAR FALLO VERIFICADO]`, regla operativa de abusividad (umbral 3x tasa activa BNA), red flag de anatocismo, cláusula de contingencia cambiaria para contratos en moneda extranjera post-DNU, alerta doctrina del esfuerzo compartido
**Archivos eliminados:**
- `argentina/contratos-CLAUDE.md` - reemplazado por `argentina/contratos/CLAUDE.md`
- `argentina/red-flags-contratos.md` - reemplazado por `argentina/contratos/red-flags.md`
**Archivos modificados:**
- `argentina/CLAUDE.md` - tabla de routing y árbol de estructura: `contratos-CLAUDE.md` + `red-flags-contratos.md` → `contratos/CLAUDE.md` + `contratos/red-flags.md`; referencia a red-flags actualizada en sección de contratos
- `README.md` - árbol actualizado con carpeta `contratos/`; provincias Chaco, Formosa y San Luis incorporadas al módulo administrativo; `ejemplos-laboral.md` agregado; `diagnóstico-casos-prueba.md` con tilde; tabla de alertas de normas inestables: fila `contratos/CLAUDE.md` agregada; Paso 2 instalación deduplicado con instrucciones paso a paso y rutas completas; `evals/` completado con archivos internos del caso CABA
**Correcciones normativas aplicadas en `argentina/contratos/`:**
 
- Plazo supletorio locación post-DNU 70/2023: corregido a **2 años para todos los destinos** (art. 1198 CCCN reformado). El sistema tenía 2 años vivienda / 3 años comercial, que correspondía al régimen derogado Ley 27.551
- Art. 92 bis LCT post-Ley 27.742: plazos actualizados a 6 meses (empresas +10 trabajadores), 8 meses (6-10 trabajadores), 12 meses (hasta 5 trabajadores). El sistema tenía 3 meses como máximo general
- Arts. 765/766 CCCN: distinción pre/post 30-dic-2023 incorporada en red flag 11 y en `indices-y-tasas.md`; alerta doctrina del esfuerzo compartido (inaplicable a obligaciones post-DNU) agregada en ambos archivos
- Art. 23 LCT post-Ley 27.742: red flag 9 reformulada con flujo de dos pasos; la presunción sigue vigente; el régimen de trabajador independiente con colaboradores (arts. 97 y ss. Ley 27.742) es figura alternativa que no elimina la presunción ante señales de subordinación real
- Arbitraje internacional: Ley 27.449 (Arbitraje Comercial Internacional, Ley Modelo CNUDMI) incorporada junto a Ley 23.619 en red flag 8, paso 1d del perfil y cláusula 12 de la estructura estándar
- Cómputo indemnización resolución anticipada locatario (10%): nota doctrinal incorporada (criterio mayoritario: base nominal al momento de la notificación); marcador `[CLÁUSULA RECOMENDADA]` para liquidación expresa
- Ley 27.742 ("Ley Bases"): bloque aclaratorio incorporado confirmando que no modificó el bloque civil/comercial del DNU 70/2023; reformas al CCCN vigentes por principio de vigencia remanente del decreto
**Fuentes:**
- Art. 1198 CCCN reformado por DNU 70/2023
- Art. 92 bis LCT reformado por Ley 27.742
- Ley 27.449 (Arbitraje Comercial Internacional)
- Ley 27.742 arts. 97 y ss. (trabajador independiente con colaboradores)
- Verificación normativa mayo 2026
---
 
### Mayo 2026 - Skill de telegramas laborales + correcciones normativas Ley 27.742 y Ley 27.802
 
**Archivos nuevos:**
- `argentina/laboral/telegrama/telegramas-SKILL.md` - instrucciones operativas del skill de telegramas laborales y cartas documento; incluye proceso de tres pasos (recolección de datos, verificación normativa, consulta de modelos), formato de salida en dos bloques (texto del telegrama + referencias legales), tabla de racionalizaciones comunes con rebuttals, señales de alerta pre-entrega, y checklist de verificación al cierre; frontmatter con `name` y `description` para triggering automático
- `argentina/laboral/telegrama/tipos-de-telegrama.md` - clasificación de telegramas por grupo (1-10) con notas críticas de derogación y condiciones temporales; Grupo 7 actualizado con alertas de derogación de multas Ley 24.013 y Ley 25.345 arts. 43-48
- `argentina/laboral/telegrama/reglas-normativas.md` - 12 reglas de validación normativa post-reforma; corregidas: Regla 2 (Ley 25.323 derogada por art. 100 Ley 27.742 desde 9/7/2024, no por Ley 27.802), Regla 3 (arts. 43-48 Ley 25.345 derogados por art. 99 Ley 27.742, no solo la multa del art. 45), Regla 5 (art. 245 con tres tramos temporales: pre-30/12/2023, 30/12/2023-5/3/2026, desde 6/3/2026)
- `argentina/laboral/telegrama/modelos/bloque-01-registro.md` - modelos de registro de relación laboral; art. 11 Ley 24.013 reemplazado por arts. 7 y 7 bis como fundamento vigente de intimación
- `argentina/laboral/telegrama/modelos/bloque-02-estabilidad-despido.md` - modelos de estabilidad y despido; art. 45 Ley 25.345 marcado como derogado; modelo de multa por certificados reencuadrado como histórico (solo para extinciones pre-9/7/2024); nota general del art. 245 con tres tramos temporales
- `argentina/laboral/telegrama/modelos/bloque-03-salarios.md` - modelos de pago de salarios y remuneraciones; nota de horas extras corregida de "contratos iniciados desde 6/3/2026" a "actos extintivos desde 6/3/2026"
- `argentina/laboral/telegrama/modelos/bloque-04-ius-variandi.md` - modelos de modificaciones contractuales e ius variandi
- `argentina/laboral/telegrama/modelos/bloque-05-renuncia.md` - modelos de renuncia
- `argentina/laboral/telegrama/modelos/bloque-06-vacaciones-licencias.md` - modelos de vacaciones y licencias; referencia a "LCT art. 41 Ley 27.802" corregida a "Art. 41 Ley 27.802 (modifica régimen de vacaciones LCT)"
- `argentina/laboral/telegrama/modelos/bloque-07-salud-hostigamiento.md` - modelos de seguridad y salud laboral, hostigamiento y discriminación
- `argentina/laboral/telegrama/modelos/bloque-08-construccion.md` - modelos de industria de la construcción (Ley 22.250)
**Archivos modificados:**
- `argentina/laboral-CLAUDE.md` - sección "Normativa de referencia": Ley 24.013 actualizada (arts. 8-17 DEROGADOS por Ley 27.742, art. 11 DEROGADO, fundamento vigente arts. 7 y 7 bis), Ley 25.323 marcada como DEROGADA íntegramente, Ley 25.345 arts. 43-48 marcados como DEROGADOS; sección "Registración del contrato": tabla de consecuencias convertida a doble régimen temporal; art. 245 expandido a TRES regímenes (pre-30/12/2023, 30/12/2023-5/3/2026, desde 6/3/2026); sección "Certificados de trabajo": multa art. 45 Ley 25.345 marcada como DEROGADA con fecha de corte; sección "Presunciones procesales": "libro del art. 52" reemplazado por "registro de ARCA"; renuncia art. 240 actualizada con modalidad digital; licencia por maternidad art. 177 actualizada (mínimo 10 días previos, "persona gestante"); art. 80 LCT plazo corregido a 45 días hábiles; alerta normativa: cuatro tramos temporales, Ley 27.802 incorporada; módulo empleador: referencias a ARCA, diagnóstico actualizado; referencias a `ejemplos-laboral.md` eliminadas
- `argentina/CLAUDE.md` - sección "Normativa de referencia laboral": derogaciones de Ley 24.013, 25.323 y 25.345 con fecha y norma derogante; sección "employment-legal": agravantes marcados como DEROGADOS con fecha; referencia a `ejemplos-laboral.md` eliminada; tabla de routing: fila de telegramas incorporada (`laboral-CLAUDE.md` + `laboral/telegrama/telegramas-SKILL.md`); árbol del repo actualizado con `laboral/telegrama/` y eliminación de `ejemplos-laboral.md` y `evals/laboral-prescripcion-suspension-concurrente/`; AFIP reemplazado por ARCA en marcadores tributarios
- `README.md` - árbol de estructura: `laboral/telegrama/` incorporada, `ejemplos-laboral.md` eliminado, `evals/laboral-prescripcion-suspension-concurrente/` eliminado; tabla "Perfiles por área": complemento de laboral actualizado a `laboral/telegrama/`, alertas actualizadas con Ley 27.742 y Ley 27.802; instalación Paso 4 Opción A: instrucción genérica de skills para laboral; instalación Paso 6 Opción B: instrucción de Cowork con aclaración del flujo `.skill` vs `.md`; sección "Lo que podés hacer - Laboral": agravantes derogados eliminados, tres regímenes del art. 245 incorporados; sección "Contribuciones": "prescripción laboral" eliminada de áreas prioritarias de evals; encabezado `### Fuentes primarias` incorporado
**Archivos eliminados:**
- `argentina/ejemplos-laboral.md` - casos de liquidación con agravantes Ley 24.013/25.323; retirado por incompatibilidad con el régimen post-9/7/2024 (agravantes derogados); reemplazar cuando se disponga de casos actualizados al régimen vigente
- `argentina/evals/laboral-prescripcion-suspension-concurrente/` - caso de verificación de prescripción bienal y suspensiones concurrentes; retirado para revisión
**Normas afectadas:**
- Ley 27.742 (Ley de Bases, BO 8/7/2024, vigente desde 9/7/2024): arts. 99 (derogación arts. 8-17 Ley 24.013, arts. 43-48 Ley 25.345) y 100 (derogación íntegra Ley 25.323); arts. 82-83 (incorporación arts. 7 y 7 bis Ley 24.013 como fundamento vigente de intimación de registro)
- Ley 27.802 (Ley de Modernización Laboral, BO 6/3/2026): art. 51 (reforma art. 245 LCT - exclusión de vacaciones no gozadas y horas extras de la base; nuevo tope); art. 25 (reforma art. 80 LCT - tres vías de cumplimiento, plazo 45 días hábiles); art. 40 (reforma arts. 231 y 240 LCT - renuncia digital); art. 45 (reforma art. 210 LCT - certificados médicos digitales); art. 19 (reforma art. 31 LCT - solidaridad limitada a fraude); art. 9 (reforma art. 18 LCT - antigüedad en reingreso); art. 10 (reforma art. 20 LCT - pluspetición con costas solidarias)
- DNU 70/2023 (BO 30/12/2023): reforma art. 245 LCT en su primer tramo (exclusión de SAC y bonificaciones semestrales/anuales)
**Impacto en marcadores:**
- Sin cambios en marcadores canónicos. Todos los modelos de telegramas usan `[VERIFICAR CCT APLICABLE]`, `[DATO A COMPLETAR]` y `[AVANCE BAJO RESERVA]` conforme al glosario
**Normas de alta volatilidad - tabla actualizada:**
- Art. 245 LCT: entrada actualizada para reflejar los tres regímenes temporales (ver tabla al pie)
---
 
### Mayo 2026 - Incorporación perfil medicina legal y pericia médica forense
 
**Archivos nuevos:**
- `argentina/especialidades/medicina-legal-CLAUDE.md` - perfil de disciplina auxiliar para redacción y análisis de informes médico-legales periciales; cubre los fueros penal (CPPN y CPPF), civil (CPCCN) y seguridad social (Ley 24.655); adaptable a fueros provinciales con ajuste de normativa procesal local; incluye estructura estándar del informe médico-legal, lógica de análisis por institución (lesiones, imputabilidad, incapacidad, invalidez, praxis médica, amparo de salud, casos federales especiales), checklist de cierre y reglas de citación propias; colaboración técnica: Dr. Alberto Miceli - Médico Forense
**Archivos modificados:**
- `README.md` - agregada subcarpeta `especialidades/` en la tabla de estructura; agregado bloque "Medicina legal y pericia médica forense" en la sección "Lo que podés hacer desde el día uno"; agregada fila `especialidades/medicina-legal-CLAUDE.md` en tabla "Perfiles por área"; agregada fila correspondiente en tabla "Alertas de normas inestables"
- `argentina/CLAUDE.md` - estructura del repo sincronizada con README (agregados `administrativo-caba-CLAUDE.md`, `administrativo-PBA-CLAUDE.md`, `administrativo-SALTA-CLAUDE.md`, `especialidades/`, `legal.local.md.template`, `evals/`; descripción `administrativo-CLAUDE.md` actualizada a "federal"; `diagnostico-SKILL.md` actualizado a "transversal"); agregada fila `especialidades/medicina-legal-CLAUDE.md` en tabla de routing
- `argentina/setup-interview.md` - agregado Bloque 2-ter (P5-ter, P6-ter, P7-ter): configuración de organismo/rol pericial, fueros y especialidad, organismo requirente habitual
- `argentina/setup-output-TEMPLATE.md` - agregadas variables `[ORGANISMO_PERICIAL]`, `[FUEROS_PERICIAL]`, `[ESPECIALIDAD_PERICIAL]`, `[ORGANISMO_REQUIRENTE]` en tabla de variables; agregada sección condicional "Configuración medicina legal y pericia médica forense" en template de CLAUDE.md personalizado
- `argentina/fuentes.md` - agregadas tres entradas en tabla de fuentes primarias oficiales: Cuerpo Médico Forense CSJN (`csjn.gov.ar/cmfcs`), Protocolo de Estambul ONU (`ohchr.org`), ANSES normativa previsional (`anses.gob.ar`)
**Normas afectadas:** ninguna. Archivo nuevo que aplica normativa ya existente (CPPN Ley 23.984, CPPF Ley 27.063, CPCCN Ley 17.454, CP Ley 11.179, Ley 24.241, Ley 24.660, Ley 26.529, Protocolo de Estambul ONU 1999).
 
**Nota de implementación:** el perfil verifica el estado de implementación del CPPF distrito por distrito antes de aplicar normativa procesal; vigente desde abril 2026 en Cámaras Federales CABA y Penal Económico y en varios distritos federales del interior; pendientes Córdoba, Posadas, La Plata y justicia nacional ordinaria CABA.
 
---
 
### Mayo 2026 - Feriados trasladables 2026 y Decreto 614/2025 [URGENTE]
 
**Archivos modificados:**
- `argentina/plazos-SKILL.md` - incorporación del Decreto 614/2025 sobre feriados trasladables;
  traslados concretos para 2026: Día de Güemes (17/6, feriado nacional) trasladado al lunes 15/6;
  Día de la Soberanía Nacional (20/11) trasladado al lunes 23/11; impacto directo en cómputo
  de plazos procesales y administrativos durante el segundo semestre 2026
**Normas afectadas:**
- Decreto 614/2025 (BO N° 35737, 28/08/2025): incorporado con traslados de feriados para 2026
**Impacto en marcadores:**
- `[ALERTA PLAZO FATAL]`: considerar traslados del Decreto 614/2025 al computar plazos
  con vencimiento próximo al 17/6 (Güemes, corre el 15/6) y al 20/11 (Soberanía, corre el 23/11)
**Fuente:**
- Decreto 614/2025 - BO N° 35737, 28/08/2025
---
 
### Mayo 2026 - Tasas de interés post-Acta CNAT 2788/2024
 
**Archivos modificados:**
- `argentina/laboral-CLAUDE.md` - sección de tasas de interés actualizada: incorporación de la
  situación post-Acta CNAT 2788/2024; el acta deja sin efecto la recomendación del Acta
  2783/2024 y la Resolución de Cámara N° 3 del 14/03/2024, sin establecer un nuevo mecanismo
  unificado de actualización de intereses; criterio por sala: no unificado; la definición
  queda remitida al criterio de cada tribunal/sala; instrucción operativa: verificar criterio
  de la sala actuante antes de cuantificar intereses en cualquier escrito laboral
**Normas afectadas:**
- Acta CNAT 2788/2024: deroga Acta 2783/2024 y Resolución de Cámara N° 3 (14/03/2024);
  sin nuevo mecanismo unificado; criterio fragmentado por sala
**Impacto en marcadores:**
- `[VERIFICAR CRITERIO DEL FUERO: tasa de interés - post-Acta CNAT 2788/2024 - sala actuante]`:
  usar en todo escrito laboral que cuantifique intereses
**Fuente:**
- Acta CNAT 2788/2024
---
 
### Mayo 2026 - Cambio de denominación ARCA / Decreto 953/2024
 
**Archivos modificados:**
- `argentina/tributario-CLAUDE.md` - nota sobre cambio de denominación del organismo recaudador:
  la AFIP fue reemplazada por la Agencia de Recaudación y Control Aduanero (ARCA) mediante
  Decreto 953/2024 (BO 25/08/2025, vigente desde su publicación); instrucción operativa:
  usar "ARCA" en escritos y presentaciones; verificar período de transición del acto
  administrativo específico ante el que se actúa antes de adoptar la nueva denominación;
  mantener "AFIP" solo en referencias a actos, resoluciones y procedimientos anteriores
  a la fecha de publicación
**Normas afectadas:**
- Decreto 953/2024 (BO 25/08/2025): transformación de AFIP en ARCA
**Impacto en marcadores:**
- Sin cambio de marcadores. Regla operativa: ARCA para actos posteriores al 25/08/2025;
  AFIP para referencias históricas; verificar transición en cada acto administrativo concreto
**Fuente:**
- Decreto 953/2024 - BO 25/08/2025
---
 
### Mayo 2026 - Sincronización README con fuentes.md (Etapa 9)
 
**Archivos modificados:**
- `README.md` - sección "Fuentes normativas (fase 2)" reescrita para reflejar el estado actual de `fuentes.md`: tabla de conectores expandida de 4 a 6 entradas (agregados FalloBot como conector 5 y SCBA/JUBA como conector 6); agregada tabla de decisión rápida por necesidad; agregada tabla de fuentes primarias sin conector MCP (InfoLEG, normas.gba.gob.ar, SAIJ, PJN, CNACAF, SCBA, JUBA, PTN, AAIP, IGJ, DPPJ, TFN, BCRA); párrafo de cierre actualizado con referencia a `fuentes.md` para instrucciones completas
**Normas afectadas:** ninguna. Cambio de documentación.
 
**Impacto en conectores:** ninguno. El cambio es de visibilidad: FalloBot y normas.gba.gob.ar ya estaban en `fuentes.md`; ahora también figuran en el README.
 
---
 
### Mayo 2026 - Actualización de fuentes y conectores (Etapa 8)
 
**Archivos modificados:**
- `argentina/fuentes.md` - agregado conector 5 (FalloBot, `https://api.fallobot.com/mcp`): conector MCP disponible con cobertura simultánea de CSJN, SAIJ, JUBA y SCBA en tiempo real; requiere plan Pro; tabla de decisión actualizada para incluirlo como opción principal para jurisprudencia CSJN y PBA; actualizada la entrada SCBA con nota sobre expansión de cobertura JUBA (Acuerdo 4011 / Resolución RP 1651/24: Cámaras PBA desde marzo 2025, primera instancia desde junio 2025); agregado `normas.gba.gob.ar` en tabla de fuentes primarias como equivalente bonaerense de InfoLEG para normativa provincial PBA (leyes, decretos, códigos provinciales - sin API pública, acceso por fallback manual; aclaración: "Malvinas Argentinas" es el nombre del sistema, no la jurisdicción; la fuente es del Gobierno de la Provincia de Buenos Aires); agregado JUBA como entrada independiente en la tabla de fuentes primarias; numeración de conectores actualizada (SCBA pasa a ser conector 6)
**Normas afectadas:** ninguna. Los cambios son de conectores y fuentes de referencia.
 
**Impacto en conectores:**
- FalloBot: nuevo conector disponible (plan Pro) - cubre CSJN y PBA que antes no tenían conector MCP
- normas.gba.gob.ar: nueva fuente primaria de fallback para normativa provincial PBA
- SCBA/JUBA: cobertura ampliada a partir de 2025 por el Acuerdo 4011
---
 
### Mayo 2026 - Correcciones segunda auditoría (Etapa 6)
 
**Archivos modificados:**
- `argentina/ejemplos-civil.md` - marcador `[VERIFICAR CRITERIO VIGENTE DE LA SALA]` reemplazado por `[VERIFICAR CRITERIO DEL FUERO: ratio daño punitivo art. 52 bis LDC - sala actuante]`
- `argentina/ejemplos-laboral.md` - marcador `[VERIFICAR FÓRMULA VIGENTE]` reemplazado por `[VERIFICAR CRITERIO DEL FUERO: fórmula de cuantificación LRT vigente - resolución SRT y jurisprudencia aplicable]`
- `argentina/ejemplos-societario.md` - marcador `[VERIFICAR]` (forma corta) reemplazado por `[VERIFICAR RESOLUCIÓN REGISTRAL VIGENTE: IGJ/DPPJ - parámetros de activación de sindicatura obligatoria]`
- `argentina/tributario-CLAUDE.md` - marcador `[VERIFICAR MONTO ACTUALIZADO]` sin detalle completado: `[VERIFICAR MONTO ACTUALIZADO: multa art. 39 LPT - RG AFIP vigente]`
- `argentina/penal-CLAUDE.md` - instrucción de plazo fatal en instrucciones operativas: agregada referencia explícita al marcador A10 `[ALERTA PLAZO FATAL]` para prescripción de la acción y de la pena
- `argentina/laboral-CLAUDE.md` - instrucción de prescripción en instrucciones operativas: agregada referencia explícita al marcador A10 con ejemplo concreto art. 258 LCT
- `argentina/CLAUDE.md` - tabla de routing: agregada fila `contratos-CLAUDE.md` + `red-flags-contratos.md`; eliminada fila redundante de `red-flags-contratos.md` solo
- `argentina/diagnostico-SKILL.md` - sección 7 "Normas con verificación pendiente": agregada instrucción de emitir `[ALERTA PLAZO FATAL]` cuando el escrito involucra acción sujeta a plazo fatal, con cuatro ejemplos de uso
- `argentina/setup-output-TEMPLATE.md` - sección final: agregada nota con ejemplo de CLAUDE.md personalizado que incluye configuración administrativa
**Normas afectadas:** ninguna. Los cambios son de marcadores y referencias cruzadas.
 
**Impacto en marcadores:**
- `[VERIFICAR CRITERIO VIGENTE DE LA SALA]`: eliminado del repo; forma no canónica confirmada en tabla de equivalencias del glosario
- `[VERIFICAR FÓRMULA VIGENTE]`: ídem
- `[VERIFICAR]` (forma corta): ídem
---
 
### Mayo 2026 - Mejoras post-análisis: administrativo y glosario (Etapa 5)
 
**Archivos modificados:**
- `argentina/administrativo-CLAUDE.md` - sección "Configuración inicial" reescrita: variables `FUERO_HABITUAL` y `AREAS_PRACTICA_ADMINISTRATIVO` ahora usan marcador `[PENDIENTE]` con instrucción explícita y ejemplo, en lugar de texto libre sin valor asignado; marcador no canónico `[ALERTA DE PLAZO]` reemplazado por `[ALERTA PLAZO FATAL]` en sección de reglas de citación, alerta normativa e instrucciones operativas; sección "Identidad y alcance" restaurada como sección independiente
- `argentina/marcadores-GLOSARIO.md` - agregado marcador A10 `[ALERTA PLAZO FATAL]` con sintaxis, cuatro ejemplos de uso (administrativo, amparo federal, prescripción LCT, responsabilidad del Estado) y regla de uso negativa; tabla de equivalencias: agregada entrada `[ALERTA DE PLAZO]` → `[ALERTA PLAZO FATAL]`; versión actualizada a 1.1
- `argentina/CHANGELOG.md` - agregadas dos filas en tabla de normas de alta volatilidad: Decreto 1030/16 + resoluciones ONC (administrativo) y Ley 12.008 PBA (administrativo)
- `argentina/setup-interview.md` - agregado Bloque 2-bis de configuración administrativa (P5-bis a P7-bis): fuero habitual, áreas dentro de administrativo, y rol predominante (actor/demandado)
- `argentina/setup-output-TEMPLATE.md` - agregada variable `[FUERO_ADMINISTRATIVO]`, `[AREAS_ADMINISTRATIVO]` y `[ROL_ADMINISTRATIVO]` en tabla de variables; agregada sección "Configuración administrativa" en el template (análoga a la laboral y societaria); agregado ejemplo en el output mínimo
- `argentina/fuentes.md` - agregadas dos entradas en tabla de fuentes primarias oficiales: CNACAF (`cnacaf.gov.ar`) y PTN (`ptn.gov.ar`)
**Normas afectadas:** ninguna. Los cambios son de estructura, marcadores y referencias cruzadas.
 
**Impacto en marcadores:**
- `[ALERTA DE PLAZO]`: eliminado del repo; reemplazar por `[ALERTA PLAZO FATAL: norma - plazo - fecha de inicio del cómputo - vencimiento estimado]`
- `[ALERTA PLAZO FATAL]`: nuevo marcador canónico A10; usar en administrativo, amparo, laboral y cualquier plazo fatal
---
 
### Mayo 2026 - Limpieza final y sincronización (Etapa 4)
 
**Archivos modificados:**
- `argentina/fuentes.md` - agregada sección "Cómo verificar que un conector está activo" con instrucciones de verificación en Cowork y Claude Code, tabla de fallback por conector con URL y consecuencia, campo "Estado al mayo 2026" en cada entrada; marcador `[DISCREPANCIA ENTRE CONECTORES]` reemplazado por `[DISCREPANCIA ENTRE FUENTES]`
- `argentina/ejemplos-civil.md` - bloque de fórmulas genérico reemplazado por tabla por fuero (CNAC, civil y comercial federal, CABA local, PBA departamental, CNAT) con fórmula predominante, descripción técnica y ejemplo numérico; cuatro marcadores no canónicos corregidos
- `README.md` - referencia al repositorio base eliminada; estructura de archivos sincronizada con los 22 archivos reales; sección de instalación actualizada con referencias a `setup-output-TEMPLATE.md` y `diagnostico-casos-prueba.md`; tabla de perfiles con columna "Complementos"; referencias a "plugins" corregidas
**Normas afectadas:** ninguna. Los cambios son de estructura y documentación.
 
---
 
### Mayo 2026 - Gaps de cobertura (Etapa 3)
 
**Archivos nuevos:**
- `argentina/contratos-CLAUDE.md` - perfil unificado para revisión y redacción de contratos bajo derecho argentino; cubre flujo de revisión (clasificación + red-flags + análisis por tipo), flujo de redacción con preguntas de diagnóstico previo, y 7 tipos contractuales con lógica específica (servicios profesionales, SaaS, compraventa, locación, NDA, mutuo, agencia/concesión/franquicia)
- `argentina/diagnostico-casos-prueba.md` - tres casos ficticios con diagnóstico esperado completo para verificar el skill: demanda laboral por despido (9 marcadores esperados), demanda civil por mala praxis (14 marcadores), revisión de cláusulas de pacto de accionistas (10 marcadores)
**Normas afectadas:** ninguna. Los archivos nuevos aplican normativa ya incluida en los perfiles de área.
 
---
 
### Mayo 2026 - Integración interna (Etapa 2)
 
**Archivos modificados:**
- `argentina/CLAUDE.md` - agregados bloques "Protocolo ante alucinación normativa" y "Routing hacia perfiles de área"; estructura del repo actualizada con archivos nuevos de Etapa 1
- `argentina/civil-CLAUDE.md` - agregado bloque "Archivos complementarios"; marcadores `[VACÍO CUANTIFICATIVO]` y `[VERIFICAR CRITERIO DE LA SALA]` reemplazados por formas canónicas; fecha de verificación en alertas normativas
- `argentina/societario-CLAUDE.md` - agregado bloque "Archivos complementarios"; marcadores `[VERIFICAR RESOLUCIÓN IGJ/DPPJ VIGENTE]`, `[VACÍO DOCUMENTAL]` y `[VERIFICAR UMBRAL CNDC VIGENTE]` reemplazados; fecha de verificación en alertas normativas
- `argentina/laboral-CLAUDE.md` - agregado bloque "Archivos complementarios"; fecha de verificación en alerta DNU
- `argentina/administrativo-CLAUDE.md`, `argentina/tributario-CLAUDE.md`, `argentina/penal-CLAUDE.md`, `argentina/familia-CLAUDE.md`, `argentina/concursos-CLAUDE.md` - fecha de verificación agregada en cada sección "## Alerta normativa"
**Normas afectadas:** ninguna. Los cambios son de estructura, marcadores y referencias cruzadas.
 
---
 
### Mayo 2026 - Reorganización y estandarización inicial (Etapa 1)
 
**Archivos nuevos:**
- `argentina/marcadores-GLOSARIO.md` - glosario canónico con 15 formas canónicas en 4 categorías; tabla de equivalencias que mapea los 40+ marcadores anteriores a su forma canónica
- `argentina/setup-output-TEMPLATE.md` - template con variables mapeadas a cada pregunta de la entrevista, instrucciones de generación para el sistema, y ejemplo de output completo
- `argentina/CHANGELOG.md` - este archivo; incluye tabla de normas de alta volatilidad con fecha de última verificación
**Archivos modificados:**
- `argentina/setup-interview.md` - agregada referencia a `setup-output-TEMPLATE.md` en el flujo de output
- `argentina/CLAUDE.md` - agregada referencia al glosario de marcadores
**Motivo:** estandarización de marcadores (existían más de 40 variantes equivalentes distribuidas entre archivos); formalización del output de la entrevista; trazabilidad de cambios normativos.
 
**Normas afectadas:** ninguna. Los cambios son de forma, no de contenido normativo.
 
---
 
## Plantilla de entrada
 
Copiar y completar para cada cambio:
 
```
### [Mes Año]
 
**Archivos afectados:**
- `ruta/archivo.md` - sección afectada
 
**Cambio:**
[descripción del cambio]
 
**Motivo:**
[norma modificada / error detectado / nueva funcionalidad]
 
**Normas vigentes actualizadas:**
- [norma]: [cambio concreto]
 
**Impacto en marcadores:**
- [marcador afectado]: [cambio en comportamiento]
 
**Fuente:**
- [URL o referencia de la norma que motivó el cambio]
```
 
---
 
## Normas de alta volatilidad · estado al momento de la última revisión
 
Esta tabla recoge las normas con mayor frecuencia de cambio. Verificar antes de aconsejar.
Actualizar la columna "Última verificación" cuando se confirme la vigencia.
 
| Norma | Área | Dato volátil | Última verificación |
|---|---|---|---|
| Art. 245 LCT - tope indemnizatorio y base | Laboral | TRES regímenes según fecha del acto extintivo: (1) pre-30/12/2023: base incluye SAC; (2) 30/12/2023-5/3/2026: base excluye SAC y bonificaciones semestrales/anuales (DNU 70/2023); (3) desde 6/3/2026: base excluye además vacaciones no gozadas y horas extras; tope = 3x promedio CCT (Ley 27.802). Verificar fecha del acto extintivo antes de calcular | Mayo 2026 - verificar por CCT y fecha del acto extintivo |
| Acta CNAT - tasa de interés | Laboral | Criterio por sala; sin unificación post-Acta 2788/2024; no hay criterio único vigente; revisar pronunciamiento de cada sala | Mayo 2026 - verificar acta vigente |
| Resolución SRT - prestaciones LRT | Laboral / LRT | Montos de prestaciones | Mayo 2026 - verificar RG vigente |
| DNU 70/2023 - modificaciones LCT | Laboral | Estado judicial de cada modificación | Mayo 2026 - algunas suspendidas, verificar |
| Ley 27.430 art. 1 - umbral penal tributario | Tributario | Monto de punibilidad | Mayo 2026 - verificar si fue actualizado |
| Monto mínimo recurso TFN | Tributario | Monto habilitante | Mayo 2026 - verificar norma vigente |
| Capital mínimo IGJ/DPPJ | Societario | Monto actualizado por resolución | Mayo 2026 - verificar resolución vigente |
| Sindicatura obligatoria SA - parámetros | Societario | Parámetros de activación | Mayo 2026 - verificar resolución IGJ/DPPJ |
| Régimen cambiario BCRA | Contratos / M&A | Restricciones al giro de divisas | Mayo 2026 - verificar comunicaciones BCRA |
| Decreto 1030/16 + resoluciones ONC | Administrativo | Umbrales, procedimientos y formularios de contratación pública | Mayo 2026 - verificar ONC antes de asesorar |
| Ley 12.008 PBA - plazos CCA | Administrativo | Plazos de caducidad contencioso administrativo PBA | Mayo 2026 - verificar norma y jurisprudencia SCBA |
| Locaciones urbanas (CCCN reformado por DNU 70/2023) | Familia / Civil | Ley 27.551 derogada; rige el CCCN reformado (arts. 1198, 1199, 1221 - rescisión con indemnización del 10% del canon futuro); naturaleza supletoria o imperativa del 10% en discusión; régimen aplicable según fecha del contrato | Junio 2026 - verificar vigencia del DNU y criterio de la sala |
| Tasas de interés fueros civiles y comerciales | Civil / Comercial | Tasa activa BNA, variantes por sala | Mayo 2026 - verificar actas CNAC / CNACOM |
| Prestaciones alimentarias - fórmulas | Familia | Criterio por fuero | Mayo 2026 - verificar criterio sala actuante |
 
---
 
*Última actualización: junio 2026*
*Autor: Dr. Cristian Aboitiz · [@abogadoaboitiz](https://x.com/abogadoaboitiz)*
