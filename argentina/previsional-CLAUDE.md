# Perfil de práctica · Derecho previsional argentino

> Archivo de configuración para el sistema claude-for-legal.
> Complementa el perfil general (argentina/CLAUDE.md) con lógica específica de práctica previsional y de seguridad social.
> **Configuración inicial obligatoria:** completar las variables de la sección siguiente antes de usar.

---

## Configuración inicial - completar antes de usar

**FUERO_HABITUAL:**
Indicar dónde tramitan habitualmente tus causas previsionales. Opciones: "Juzgados Federales de la Seguridad Social (CABA)", "juzgado federal con competencia previsional - [provincia]", o combinación. El sistema usa este dato para aplicar el procedimiento y la alzada correctos sin preguntar en cada sesión.

Ejemplo: `FUERO_HABITUAL: Juzgados Federales de la Seguridad Social (CABA), alzada CFSS`

**ROL_PREDOMINANTE:**
En materia previsional el rol es casi siempre el del afiliado o beneficiario (parte actora) frente a ANSES. Indicarlo igual, porque condiciona la estrategia probatoria y el encuadre del reclamo.

Ejemplo: `ROL_PREDOMINANTE: Afiliado / beneficiario (actor)`

**AREAS_PRACTICA:**
Indicar las áreas de mayor volumen (reajuste de haberes, determinación del haber inicial, movilidad, impugnación de denegatoria de beneficio, acceso sin 30 años de aportes, pensiones derivadas, ejecución contra ANSES).

Ejemplo: `AREAS_PRACTICA: Reajuste de haberes (haber inicial + movilidad), impugnación de denegatoria`

---

## Identidad y alcance

Este perfil cubre la práctica previsional argentina del régimen general (SIPA): acceso al beneficio jubilatorio, determinación y reajuste del haber inicial, movilidad de las prestaciones, retroactivos e intereses, impugnación de denegatorias de ANSES, pensiones derivadas, y ejecución de sentencia contra el organismo. El eje de la práctica es la acción de reajuste de haberes ante el Fuero Federal de la Seguridad Social.

**Para redactar escritos** (no solo analizar o liquidar): usar `previsional/escritos/escritos-previsional-SKILL.md`, que orquesta los modelos de `previsional/escritos/modelos/` (demanda de reajuste de haberes, demanda de impugnación judicial de denegatoria, demanda de pensión derivada por conviviente) y remite a `ejemplos-previsional.md` para la liquidación numérica.

El fundamento de la materia es constitucional: el art. 14 bis CN [VERIFICAR VIGENCIA] declara que las jubilaciones y pensiones son móviles, sin fijar un mecanismo. Toda la litigación de reajuste se apoya en esa garantía y en su integración con los instrumentos de derechos humanos con jerarquía constitucional (art. 75 inc. 22 CN; PIDESC art. 9; Convención Interamericana sobre la Protección de los Derechos Humanos de las Personas Mayores, con jerarquía constitucional por Ley 27.700 [VERIFICAR VIGENCIA]).

**Fronteras con otros perfiles - no duplicar, derivar:**
- **Invalidez del SIPA** (retiro por invalidez, art. 48 Ley 24.241 [VERIFICAR VIGENCIA]): es previsional y se trata acá. La acreditación médica de la incapacidad y la pericia se rutean a `especialidades/medicina-legal-CLAUDE.md`.
- **PNC por invalidez** (Ley 13.478, Decreto 432/97, Decreto 843/2024): está cubierta en `discapacidad-CLAUDE.md`, no acá. Es una prestación no contributiva con vía de impugnación, requisitos y jurisprudencia propios. Si la consulta es de PNC por invalidez, derivar a ese perfil.
- **PUAM y moratorias** (acceso sin aportes suficientes): se tratan acá como parte del acceso al beneficio.
- **Cómputo de servicios docentes / regímenes especiales:** se mencionan; el detalle de cada régimen diferencial excede este perfil y se marca para verificación normativa.

**FUERO_HABITUAL:** ver sección de configuración inicial
**ROL_PREDOMINANTE:** ver sección de configuración inicial
**AREAS_PRACTICA:** ver sección de configuración inicial

---

## Códigos y normativa por fuero

La competencia previsional del régimen general es federal y exclusiva. El demandado típico es ANSES.

Fuero | Demandado | Naturaleza del reclamo | Procedimiento | Alzada
--- | --- | --- | --- | ---
Juzgados Federales de Primera Instancia de la Seguridad Social (CABA) | ANSES | Reajuste de haberes, determinación del haber inicial, movilidad, impugnación de denegatoria, pensiones | Ley 24.463 [VERIFICAR VIGENCIA] + CPCCN (Ley 17.454) [VERIFICAR VIGENCIA] | Cámara Federal de la Seguridad Social (CFSS), salas I, II y III
Juzgado federal con competencia previsional (interior) | ANSES | Misma materia, beneficiarios con domicilio en el interior | Ley 24.463 + CPCCN | Cámara Federal de Apelaciones de la jurisdicción respectiva (no la CFSS): doctrina "Pedraza" (CSJN, Fallos 337:530, 6/5/2014), que declaró inconstitucional el art. 18 de la Ley 24.463; ratificada por "Constantino" (339:740) y "Giménez Rosa" (344:1788) [VERIFICAR VIGENCIA]
CSJN | - | Recurso extraordinario federal contra sentencia de la CFSS | Ley 48 [VERIFICAR VIGENCIA] | -

### Regla de competencia

El régimen general (SIPA) tramita ante el Fuero Federal de la Seguridad Social. No transpolar plazos ni institutos del fuero laboral: aunque comparten frontera fáctica (remuneraciones, antigüedad), el proceso previsional tiene su propio régimen en la Ley 24.463. Si el reclamo es contra una caja provincial no transferida (cajas de empleados públicos provinciales, profesionales), la competencia es provincial y la normativa es la de esa caja: verificar antes de cualquier análisis.

```
[REVISIÓN NORMATIVA REQUERIDA: si el reclamo es contra caja provincial o de profesionales no transferida - normativa y fuero provincial aplicable]
```

---

## Alerta normativa - normas de vigencia variable

*Última verificación de esta sección: julio 2026 (precisión sobre el alcance del art. 4 Ley 27.705 a la UPDP, sin extenderlo a la UCAP). Actualizar cuando cambie alguna de las normas listadas. La materia previsional es de las más volátiles del repo: la movilidad, los montos y el acceso cambian por ley, decreto y resolución con alta frecuencia. No citar ninguna cifra ni régimen vigente sin verificar contra el hub al momento de la consulta.*

### Movilidad - régimen vigente y secuencia de regímenes

A junio de 2026, la movilidad se rige por el **DNU 274/2024** [VERIFICAR VIGENCIA], que sustituyó el art. 32 de la Ley 24.241 y dispuso la actualización **mensual de los haberes por el IPC del INDEC**, con dos meses de rezago. La primera actualización bajo esta fórmula se aplicó a las prestaciones de julio de 2024. El decreto derogó de hecho la fórmula de la Ley 27.609.

**Dato litigiosamente relevante:** el DNU 274/2024 no fue ratificado por ley. El proyecto de Presupuesto 2025 incluía un artículo que lo ratificaba y no se sancionó. La movilidad vigente es, entonces, de fuente reglamentaria, no legal. Esa naturaleza alimenta los planteos de reajuste y de inconstitucionalidad sobre el período. Verificar al momento de la consulta si una ley posterior ratificó, modificó o reemplazó el DNU:

```
[VERIFICAR VIGENCIA: DNU 274/2024 - movilidad mensual por IPC - confirmar si fue ratificado por ley, modificado o reemplazado al momento de la consulta]
```

**Secuencia histórica de regímenes de movilidad** - cada tramo rige para su período y no es intercambiable. En una demanda de reajuste por movilidad hay que identificar qué fórmula rigió cada lapso reclamado:

- Ley 24.241 (texto original) [VERIFICAR VIGENCIA]
- Ley 26.417 (movilidad 2008, ajuste semestral marzo/septiembre) [VERIFICAR VIGENCIA]
- Ley 27.426 (reforma 2017, movilidad trimestral) [VERIFICAR VIGENCIA]
- Ley 27.541 (emergencia 2019, suspensión de la movilidad y aumentos por decreto) [VERIFICAR VIGENCIA]
- Ley 27.609 (fórmula 2021, recaudación + salarios) [VERIFICAR VIGENCIA]
- DNU 274/2024 (movilidad mensual por IPC, vigente a junio 2026) [VERIFICAR VIGENCIA]

```
[REVISIÓN NORMATIVA REQUERIDA: identificar la fórmula de movilidad vigente en cada período reclamado y empalmar los tramos]
```

### Bono / refuerzo previsional

El refuerzo previsional que perciben quienes cobran el haber mínimo está congelado en términos nominales desde marzo de 2024, lo que erosiona su valor real mes a mes. Quienes cobran por encima de la mínima no lo perciben. El congelamiento es base posible de un reclamo autónomo. No citar el monto del bono ni del haber mínimo sin verificar:

```
[VERIFICAR MONTO ACTUALIZADO: haber mínimo, haber máximo y refuerzo previsional - resolución ANSES de movilidad del mes]
```

**Argumento en desarrollo - no doctrina consolidada: integración del bono a la base de movilidad.** Se planteó como línea de reclamo que, al no formar parte del haber remunerativo, el bono queda fuera de la base sobre la que se calculan los incrementos por movilidad (IPC, DNU 274/2024), lo que profundizaría con cada actualización la brecha entre quienes cobran la mínima y el resto. Es un argumento razonable a partir de la garantía de movilidad del art. 14 bis CN, pero no se encontró jurisprudencia de la CSJN ni de la CFSS que lo haya resuelto (búsqueda sin resultados vía conector CSJN y SAIJ al momento de esta verificación): no presentarlo como doctrina asentada. Si se lo incorpora a un escrito, hacerlo como planteo autónomo de inconstitucionalidad por afectación de la garantía de movilidad, no como aplicación de un precedente.

```
[REVISIÓN NORMATIVA REQUERIDA: normativa que instituyó el bono/refuerzo previsional y su naturaleza jurídica (remunerativo/no remunerativo, bonificable/no bonificable) - verificar antes de fundar el planteo de integración a la base de movilidad]
[VERIFICAR PRECEDENTE: inconstitucionalidad por exclusión del bono de la base de movilidad - no se verificó precedente de la CSJN ni de la CFSS; si se invoca, confirmar antes de citar como doctrina]
```

### Determinación del haber inicial - índice de actualización de remuneraciones

El haber inicial se calcula actualizando las remuneraciones históricas del afiliado hasta la fecha de adquisición del beneficio. El índice que ANSES aplica administrativamente ha sido inferior al que la jurisprudencia de la CSJN fijó (línea de actualización por el ISBIC - índice de salarios básicos de la industria y la construcción). La diferencia entre el índice administrativo y el judicial es uno de los núcleos del reajuste del haber inicial. Verificar el criterio vigente del fuero y de la Corte al momento del cálculo:

```
[VERIFICAR CRITERIO DEL FUERO: índice de actualización de remuneraciones para el haber inicial - CFSS / CSJN a la fecha del cálculo]
```

### Tasa de interés de los retroactivos

La tasa aplicable a los retroactivos de reajuste la fija la jurisprudencia del fuero y se modifica. No citar tasa sin verificar:

```
[VERIFICAR TASA VIGENTE: fuero federal de la seguridad social - criterio de la CFSS / CSJN al período]
```

### Acceso al beneficio sin 30 años de aportes - estado de las moratorias

*Estado a junio 2026.* La moratoria amplia de la **Ley 27.705** [VERIFICAR VIGENCIA] (Plan de Pago de Deuda Previsional), en su capítulo de Unidad de Pago de Deuda Previsional - el que permitía a quien ya tenía la edad regularizar y pagar en cuotas descontadas del haber -, **venció en marzo de 2025 y no fue prorrogada**. Sobreviven:

- **UCAP** (Unidad de Cancelación de Aportes Previsionales para trabajadores en actividad, Capítulo III de la misma Ley 27.705, arts. 15 a 20): vigente. Para personas a diez años o menos de la edad jubilatoria (mujeres 50-59, varones 55-64) que regularizan de modo anticipado períodos hasta marzo de 2012. Precisión sobre el vencimiento de la UPDP: el plazo de dos años prorrogable por igual período que fija el art. 4 de la Ley 27.705 rige exclusivamente para la UPDP (Capítulo II, arts. 4 a 14); el Capítulo III (UCAP) no tiene una cláusula de vigencia temporal equivalente en el texto de la ley. No corresponde extender el vencimiento de la UPDP a la UCAP sin una norma posterior que lo disponga expresamente. [VERIFICAR VIGENCIA]
- **Ley 24.476** [VERIFICAR VIGENCIA]: moratoria de carácter permanente, regulariza períodos hasta septiembre de 1993. Para muchos solicitantes de 2026 los años disponibles ya no alcanzan a completar los 30.
- **PUAM** (Prestación Universal para el Adulto Mayor, art. 13 Ley 27.260 [VERIFICAR VIGENCIA]): principal red de contención. 65 años sin distinción de sexo, haber equivalente al 80% de la mínima, no genera pensión derivada, evaluación socioeconómica.
- **Reconocimiento de aportes por tareas de cuidado** (Decreto 475/2021 [VERIFICAR VIGENCIA]): un año de aporte por hijo nacido, con adicionales por adopción, hijo con discapacidad o percepción de AUH. Herramienta central para completar años en el caso de mujeres. Verificar vigencia, porque su continuidad puede haber sido afectada por normativa posterior.

```
[VERIFICAR VIGENCIA: estado de las moratorias previsionales (Ley 27.705 UCAP, Ley 24.476), PUAM y reconocimiento de aportes por tareas de cuidado (Decreto 475/2021) al momento de la consulta]
```

---

## Normativa de referencia

### Fundamento constitucional y supranacional

- **Art. 14 bis CN:** movilidad de jubilaciones y pensiones; integralidad e irrenunciabilidad de los beneficios de la seguridad social. [VERIFICAR VIGENCIA]
- **PIDESC (art. 9), DUDH, instrumentos del art. 75 inc. 22 CN:** derecho a la seguridad social con jerarquía constitucional. Fuente interpretativa de la garantía de movilidad y del carácter alimentario del haber.
- **Convención Interamericana sobre la Protección de los Derechos Humanos de las Personas Mayores** (aprobada por Ley 27.360; jerarquía constitucional por Ley 27.700 [VERIFICAR VIGENCIA]): consagra el derecho de la persona mayor a la seguridad social y a un nivel de vida adecuado. Junto con el **principio de progresividad y no regresividad** (art. 26 CADH; art. 2.1 PIDESC), es un argumento de peso en reajuste: el Estado no puede disminuir el grado de protección ya alcanzado. La CFSS lo aplica en esa clave.

### Régimen general - acceso y prestaciones

- **Ley 24.241 (SIJP)** y modificatorias [VERIFICAR VIGENCIA]: estructura del régimen. Prestaciones del art. 17: Prestación Básica Universal (PBU), Prestación Compensatoria (PC), Prestación Adicional por Permanencia (PAP), retiro por invalidez (art. 48), pensión por fallecimiento (art. 53).
- **Requisitos de acceso a la jubilación ordinaria:** edad (mujer 60 / varón 65) y 30 años de servicios con aportes. La mujer puede optar por continuar hasta los 65. [VERIFICAR VIGENCIA: edad y años de aportes - confirmar que no hubo reforma de los requisitos]
- **Ley 26.417** [VERIFICAR VIGENCIA]: movilidad y determinación del haber mínimo garantizado y del haber máximo del SIPA (art. 8 y 9).
- **Ley 27.260** [VERIFICAR VIGENCIA]: Reparación Histórica y creación de la PUAM (art. 13).
- **Prestación por Edad Avanzada (PEA):** 70 años con 10 años de servicios y regularidad de aportes. [VERIFICAR VIGENCIA]
- **Regímenes diferenciales y especiales** (docentes - Ley 24.016; investigadores; magistrados; insalubres): cada uno tiene requisitos y haber propios. No asumir el régimen general. [REVISIÓN NORMATIVA REQUERIDA: régimen especial o diferencial aplicable al caso]

### Moratorias y regularización de aportes

- **Ley 27.705** (Plan de Pago de Deuda Previsional): UPDP vencida marzo 2025; UCAP vigente. [VERIFICAR VIGENCIA]
- **Ley 24.476** (moratoria permanente, períodos hasta septiembre 1993). [VERIFICAR VIGENCIA]
- **Decreto 475/2021** (reconocimiento de aportes por tareas de cuidado). [VERIFICAR VIGENCIA]

### Movilidad

- Secuencia de regímenes: ver "Alerta normativa - Movilidad". Cada fórmula con su período y su [VERIFICAR VIGENCIA].

### Proceso y ejecución

- **Ley 24.463 (Solidaridad Previsional)** [VERIFICAR VIGENCIA]: impugnación judicial de las resoluciones de ANSES; ANSES como parte demandada; régimen de ejecución de sentencias de contenido previsional contra el Estado.
- **CPCCN (Ley 17.454)** [VERIFICAR VIGENCIA]: supletorio del proceso.
- **Beneficio de gratuidad** del afiliado en el proceso previsional. [VERIFICAR VIGENCIA: alcance del beneficio de gratuidad - Ley 24.463 y normas complementarias]

### Fuentes primarias

- **ANSES (anses.gob.ar):** resoluciones de movilidad, montos de haber mínimo/máximo, PUAM, moratorias, normativa operativa.
- **InfoLeg (infoleg.gob.ar):** texto oficial de leyes y decretos.
- **SAIJ (saij.gob.ar):** jurisprudencia, doctrina, normativa.
- **CSJN (csjn.gov.ar):** fallos en materia previsional.
- **CFSS - Cámara Federal de la Seguridad Social:** jurisprudencia del fuero.

---

## Institutos frecuentes y lógica de diagnóstico

### Vía administrativa previa - entorno digital de ANSES

Todo caso previsional arranca en sede administrativa, antes de cualquier análisis de fondo. Puntos operativos a relevar con el cliente desde la primera entrevista:

1. **Clave de la Seguridad Social:** acceso indispensable a los trámites en línea (nivel 2 o 3, según el trámite). Sin ella no se puede iniciar ni seguir el expediente por vía digital. Si el cliente no la tiene o la perdió, la obtención u homologación de la clave es el primer paso, y puede requerir turno presencial.
2. **Verificación de aportes en "Mi ANSES":** antes de proyectar cualquier reclamo (haber inicial, movilidad, acceso sin 30 años), corroborar en el portal la historia laboral registrada. Las discrepancias entre lo que el cliente recuerda y lo que figura en el sistema son el punto de partida de buena parte de los reclamos de reajuste y de las gestiones de regularización de aportes.
3. **Atención Virtual vs. turno presencial:** buena parte de los trámites (consulta de expediente, presentación de documentación, algunos reclamos) se resuelven por Atención Virtual, sin turno. Otros -alta de beneficio, pensión derivada con documentación a evaluar, trámites con inconsistencias registrales- requieren turno presencial en UDAI. No asumir la vía sin confirmarla en el sitio de ANSES al momento de la gestión: la modalidad cambia con frecuencia.
4. **Constancia del trámite:** conservar el número de trámite o de expediente electrónico desde el inicio, con fecha exacta de presentación. Es el dato que permite computar después el plazo de la denegatoria o del silencio (ver nodo bloqueante de habilitación de instancia, más abajo) y también el hito de corte de la prescripción: conforme el art. 1° bis, inc. i), de la Ley 19.549 (LNPA), texto incorporado por el art. 25 de la Ley 27.742 [VERIFICAR VIGENCIA], la interposición de reclamos o recursos administrativos interrumpe el curso de todos los plazos legales y reglamentarios, incluidos los de caducidad y prescripción, aunque hubieran sido mal calificados, adolezcan de defectos formales insustanciales, o fueran deducidos ante órgano incompetente. El efecto interruptivo dura hasta que el acto que resuelve la cuestión, declara la caducidad del procedimiento, o hace lugar al desistimiento, quede firme en sede administrativa.
5. **Si ANSES demora la resolución del trámite:** además de la doctrina específica del fuero sobre el silencio en el reclamo de reajuste (ver más abajo), la LNPA prevé una vía general de apremio: el amparo por mora (art. 28 Ley 19.549, texto sustituido por el art. 47 de la Ley 27.742 [VERIFICAR VIGENCIA]), que permite solicitar judicialmente una orden de pronto despacho cuando la Administración dejó vencer los plazos fijados o demoró más de lo razonable en expedirse. Es una herramienta procesal distinta de la impugnación de una denegatoria expresa: no impugna un acto, apura su dictado.

```
[REVISIÓN NORMATIVA REQUERIDA: modalidad vigente (Atención Virtual / turno presencial) para el trámite concreto - verificar en el sitio de ANSES al momento de la gestión, porque cambia con frecuencia]
```

### Reajuste de haberes - acción insignia

Es la pieza central de la práctica. Combina dos reclamos que pueden ir juntos o por separado: la **redeterminación del haber inicial** (mal calculado de origen) y el **recálculo de la movilidad** (mal aplicada a lo largo del tiempo). Antes de redactar, definir cuál de los dos -o ambos- sostiene el caso.

Preguntas de diagnóstico:
1. ¿Se reclama el haber inicial, la movilidad, o ambos?
2. ¿Cuál es la fecha de adquisición del beneficio? Determina qué normas de cálculo y qué fórmulas de movilidad rigieron.
3. ¿Hubo reclamo administrativo previo de reajuste ante ANSES? ¿Hay denegatoria o silencio? (nodo bloqueante de habilitación de instancia - ver más abajo)
4. ¿Se cuenta con la historia previsional completa, las resoluciones de otorgamiento y los recibos de haberes? Sin ese material, el cálculo y el reclamo quedan sin respaldo.
5. ¿El beneficiario percibe el haber mínimo? Si es así, parte del reajuste puede quedar absorbido por el mínimo garantizado: evaluar el impacto antes de prometer un resultado.

Marcadores típicos:
```
[VACÍO PROBATORIO: historia previsional / resoluciones de otorgamiento / recibos de haberes - aportar para sostener el cálculo]
[VERIFICAR CRITERIO DEL FUERO: índice de actualización de remuneraciones del haber inicial - CFSS / CSJN a la fecha]
[REVISIÓN NORMATIVA REQUERIDA: fórmula de movilidad por cada período reclamado]
```

### Determinación del haber inicial

El haber se integra con la PBU más la PC (servicios anteriores a julio de 1994) y la PAP (servicios posteriores). El núcleo litigioso es la **actualización de las remuneraciones** que sirven de base: ANSES aplica un índice y la jurisprudencia de la Corte fijó otro (línea ISBIC), más favorable al afiliado.

La doctrina de la CSJN que sostiene la actualización de las remuneraciones para el cálculo del haber inicial y la inconstitucionalidad de los índices administrativos que la limitan se apoya en dos precedentes, verificados vía conector CSJN:

- **"Elliff, Alberto José c/ ANSeS s/ reajustes varios"** (Fallos 332:1914, 11/8/2009): confirmó que la actualización de las remuneraciones computables para la prestación compensatoria y la PAP debe practicarse hasta la fecha de adquisición del beneficio, sin la limitación temporal que había introducido la Res. ANSES 140/95, por exceder ésta la facultad reglamentaria delegada por el art. 24 inc. a) Ley 24.241.
- **"Blanco, Lucio Orlando c/ ANSeS s/ reajustes varios"** (Fallos 341:1924, 18/12/2018): declaró la inconstitucionalidad de la Res. ANSES 56/2018 y de la Res. SSS 1/2018, que pretendieron reemplazar el ISBIC por el RIPTE para actualizar las remuneraciones del período 1995-2008. La Corte sostuvo que la fijación del índice de actualización es de resorte exclusivo del Congreso (no de ANSES ni de la SSS por vía reglamentaria) y dispuso que, hasta que el Congreso fije un nuevo índice, la actualización siga haciéndose por ISBIC.

**Corrección a una revisión anterior:** no corresponde afirmar que "Blanco" fijó un corte temporal al 11 de agosto de 2018 para el ISBIC, ni que a partir de esa fecha rija un "índice SIPA" por una supuesta Resolución SSS N° 2/2018. Verificado el sumario oficial de "Blanco" vía conector CSJN, no hay tal límite ni tal remisión: el 11 de agosto corresponde a la fecha de "Elliff" (11/8/2009), no a un corte dentro de "Blanco" (18/12/2018). Si se pretende invocar un cambio de índice posterior a "Blanco", verificar la norma concreta antes de citarla.

```
[VERIFICAR PRECEDENTE: "Elliff" (Fallos 332:1914) y "Blanco" (Fallos 341:1924) - confirmar que la línea ISBIC no fue dejada sin efecto ni superada por norma o fallo posterior antes de citar]
```

**Tope de la base imponible (art. 9, segundo párrafo, Ley 24.241) - impacto en el promedio.** Cuando la remuneración histórica del afiliado superó, en algún mes computable, el límite máximo de la base imponible previsional (art. 9 Ley 24.241 [VERIFICAR VIGENCIA]: setenta y cinco veces el módulo previsional, hoy sujeto a las actualizaciones posteriores a la Ley 26.417), ANSES excluye el excedente del promedio por remisión expresa del art. 25 Ley 24.241 ("no se considerará... los importes que... excedan el máximo fijado... en el artículo 9"). Es una segunda causa, distinta del índice de actualización, por la que el promedio de ANSES puede resultar inferior al reclamado. Si la aplicación de ese tope de base imponible produce una merma confiscatoria sobre el haber (por analogía con el criterio del 15% de "Actis Caporale" para los topes del haber, aunque no se identificó un precedente de la CSJN que aplique ese mismo porcentaje al tope de la base imponible de aportes), corresponde plantear la inconstitucionalidad del art. 9 en ese tramo como argumento autónomo, cuantificando la quita concreta caso por caso.

```
[VERIFICAR MONTO ACTUALIZADO: base imponible máxima de aportes (art. 9 Ley 24.241) - valor vigente al período de cada remuneración computada]
[VERIFICAR PRECEDENTE: aplicación por analogía del límite de confiscatoriedad de "Actis Caporale" (15%) al tope de la base imponible de aportes del art. 9 Ley 24.241 - no verificado un precedente específico; se plantea como argumento, no como doctrina consolidada]
```

Para afiliados **autónomos**, el recálculo del haber inicial se hace sobre el promedio actualizado de las **categorías** en que revistó el afiliado (art. 24 inc. b Ley 24.241), no sobre remuneraciones; la línea aplicable se identifica con "Makler, Simón".

```
[INSERTAR FALLO VERIFICADO: CSJN "Makler, Simón" - recálculo del haber inicial de autónomos por actualización de las categorías (art. 24 inc. b Ley 24.241) - aportar carátula y Fallos]
```

### Servicios mixtos (dependencia + autónomo) y SICAM

La mayoría de los casos reales no son de un solo tipo de servicio. El art. 24 inc. c) Ley 24.241 [VERIFICAR VIGENCIA] resuelve el cálculo del haber cuando el afiliado computó servicios en relación de dependencia y autónomos, sucesiva o simultáneamente: el haber se establece sumando el que resulte para los servicios en relación de dependencia (inc. a) y el correspondiente a los servicios autónomos (inc. b), "en forma proporcional al tiempo computado para cada clase de servicios". Es un prorrateo por años de servicio de cada tipo, no un promedio simple ni la aplicación lisa y llana de una sola fórmula.

Antes de liquidar un caso mixto:

1. Separar la historia previsional en tramos por tipo de servicio (dependencia / autónomo) y por categoría, en el caso de los autónomos.
2. **Validar antes que nada los datos personales del afiliado en ANSES:** CUIT/CUIL, nombre, fecha de nacimiento y demás datos registrales deben coincidir entre el DNI, la AFIP/ARCA y el sistema de ANSES antes de tramitar cualquier moratoria o liquidación SICAM. Es un paso operativo, no normativo, pero es la causa práctica más frecuente de que un trámite de regularización de deuda o de moratoria se trabe o se caiga: una incongruencia de datos se subsana en UDAI, presencialmente, antes de avanzar. No asumir que los datos están correctos porque el cliente los recita de memoria.
3. Para el tramo autónomo, verificar la deuda de aportes: el sistema operativo para liquidar deuda de autónomos y monotributistas es el SICAM (Sistema de Información para Contribuyentes Autónomos y Monotributistas, desarrollado en conjunto por AFIP/ARCA y ANSES). Permite consultar los pagos registrados, corregir diferencias contra comprobantes y emitir la liquidación de la deuda para su cancelación.
4. Sin la deuda autónoma cancelada o con plan de pagos vigente, esos períodos no se computan para la prestación: verificar el estado de la deuda antes de proyectar el haber.
5. Aplicar el prorrateo del art. 24 inc. c) por años de servicio de cada clase, no por un promedio ponderado informal.

```
[VACÍO PROBATORIO: consistencia de datos personales (CUIT/CUIL, nombre, fecha de nacimiento) entre DNI, ARCA y ANSES - verificar antes de iniciar moratoria o liquidación SICAM]
[VACÍO PROBATORIO: estado de deuda autónoma/monotributista (liquidación SICAM) - aportar para determinar los períodos computables del tramo autónomo]
[REVISIÓN NORMATIVA REQUERIDA: normas reglamentarias de la Secretaría de Seguridad Social sobre el procedimiento de cálculo para servicios sucesivos y simultáneos, por remisión del propio art. 24 inc. c - verificar al momento del cálculo]
```

### Movilidad

El reclamo de movilidad cuestiona la actualización del haber a lo largo del tiempo, tramo por tramo, según la fórmula que rigió cada período. Es el módulo más volátil y el caso de manual para la verificación de vigencia del precedente: las doctrinas de movilidad se superan por norma posterior o por fallo posterior.

La línea jurisprudencial de la CSJN sobre la garantía de movilidad y la confiscatoriedad de los aumentos insuficientes se identifica con los precedentes "Sánchez" y "Badaro". Como referencia doctrinal: "Sánchez" sostuvo que la Ley 24.463 no derogó la garantía de movilidad del art. 14 bis; "Badaro" fijó pauta de ajuste ante la omisión y exhortó al Congreso. En el escrito:

```
[INSERTAR FALLO VERIFICADO: CSJN - garantía de movilidad y confiscatoriedad por movilidad insuficiente - aportar carátula, Fallos y año]
[VERIFICAR PRECEDENTE: línea "Sánchez" / "Badaro" sobre movilidad - confirmar que no fue dejada sin efecto ni superada antes de citar; la doctrina de movilidad se supera por norma o fallo posterior]
```

### Confiscatoriedad por aplicación de topes

Cuando ANSES aplica el tope al haber máximo (art. 9 Ley 24.463, con las escalas de deducciones de su inc. 2 y el tope transitorio de su inc. 3) o el tope propio de la prestación compensatoria (art. 26 Ley 24.241 [VERIFICAR VIGENCIA]: un MOPRE -ex AMPO- por cada año de servicios con aportes computados), la quita sobre el haber reajustado puede tornarse confiscatoria. El criterio del fuero y de la CSJN fija el límite de confiscatoriedad en una quita superior al **15%**: por encima de ese porcentaje, el tope se declara inaplicable en la etapa de liquidación. Es un sub-reclamo frecuente del reajuste, sobre todo en haberes altos.

**Corrección de auditoría interna:** una versión anterior de este perfil describía el art. 26 Ley 24.241 como una "escala de deducciones". Verificado el texto contra InfoLEG, el art. 26 no es una escala de deducciones: fija el haber máximo de la prestación compensatoria en un MOPRE (ex AMPO) por cada año de servicios con aportes computados. La escala de deducciones progresiva (20% / 35% / 50% / 70% según tramos) está en el art. 9, inc. 2, de la Ley 24.463, ya identificado más arriba. Son dos topes distintos, con textos distintos, y no deben describirse como si fueran la misma figura.

El origen del límite del 15% es la CSJN in re "Actis Caporale, Loredano Luis Adolfo c/ INPS - Caja Nac. de Prev. de la Industria, Com. y Act. Civiles s/ reajustes por movilidad" (Fallos 323:4216, 19/8/1999, unanimidad): reconoció la legitimidad del sistema de topes (entonces el del art. 55 Ley 18.037), pero confirmó su inconstitucionalidad cuando la merma respecto del haber reajustado supera el 15%. La CFSS trasladó después ese mismo umbral al tope del art. 9 Ley 24.463 (línea "Rapisarda" y "Argento", pendientes de cita formal completa); no se verificó que la misma línea se haya trasladado también al tope de la prestación compensatoria del art. 26 Ley 24.241, y no corresponde asumirlo sin chequear. "Tudor, Enrique José c/ ANSeS" (Fallos 327:3251, 19/8/2004) reafirmó el criterio en la etapa de ejecución: resolvió que, dejada a salvo la confiscatoriedad por la sentencia de fondo, no hace falta un nuevo juicio de conocimiento para comprobarla en la liquidación.

```
[INSERTAR FALLO VERIFICADO: CFSS - línea "Rapisarda" (6/8/2015) y "Argento" (26/3/2013), traslado del límite del 15% al tope del art. 9 Ley 24.463 - aportar carátula, sala y Fallos]
[VERIFICAR PRECEDENTE: "Actis Caporale" Fallos 323:4216 y "Tudor" Fallos 327:3251 - confirmar que la doctrina del 15% no fue dejada sin efecto ni superada antes de citar en el escrito]
[REVISIÓN NORMATIVA REQUERIDA: si el tope aplicado es el del art. 26 Ley 24.241 (prestación compensatoria) y no el del art. 9 Ley 24.463, verificar si existe línea jurisprudencial propia que extienda el límite de confiscatoriedad del 15% a esa figura antes de invocarla]
```

**Corrección a una revisión: no citar "art. 79 Ley 24.241" para el tope del haber máximo, ni el precedente "Tual".** El tope del haber máximo se rige por el art. 9 Ley 24.463 (ya citado más arriba), no por el art. 79 Ley 24.241: verificado el texto actualizado de la Ley 24.241 contra InfoLEG, ese artículo está derogado desde 2016 (art. 35 Ley 27.260, BO 22/7/2016) y no regula haberes máximos en su redacción vigente. Sobre "Tual" como supuesto precedente adicional de confiscatoriedad: se buscó vía conector CSJN y no arrojó resultados; no se pudo verificar como fallo real y no se incorpora. La doctrina de la confiscatoriedad de topes sigue apoyada en "Actis Caporale" y "Tudor" (arriba) más la línea CFSS pendiente de cita formal.

```
[REVISIÓN NORMATIVA REQUERIDA: no usar "art. 79 Ley 24.241" para el tope del haber máximo - artículo derogado por art. 35 Ley 27.260 desde 2016; el tope vigente surge del art. 9 Ley 24.463]
```

### Retroactivos y prescripción

El reajuste reconocido genera un retroactivo. Sobre él pesa la **prescripción bienal de los haberes devengados**: las diferencias se reclaman hacia atrás con ese límite, y cada mensualidad prescribe en forma independiente desde que fue exigible. La acción de reajuste en sí no prescribe (el estado de jubilado es permanente); lo que prescribe es el cobro de las diferencias devengadas más allá del plazo.

```
[REVISIÓN NORMATIVA REQUERIDA: prescripción bienal de los haberes devengados (art. 82 Ley 18.037, sostenida por reenvío en el SIPA) - confirmar el artículo y el plazo vigentes antes de cortar el retroactivo]
[ALERTA PLAZO FATAL: prescripción bienal de haberes devengados (art. 82 Ley 18.037, por reenvío) - 2 años - desde que cada mensualidad fue exigible - vencimiento: calcular el corte del retroactivo por período]
```

### Intereses

Los retroactivos devengan intereses desde que cada diferencia fue exigible. La tasa la fija la jurisprudencia del fuero y se modifica; a título de referencia general (no como tasa cerrada), buena parte de los pronunciamientos del fuero remite a la tasa pasiva promedio que publica mensualmente el BCRA, pero el criterio cambia y debe verificarse al período.

**No asumir un criterio uniforme entre las Salas de la CFSS.** La Cámara Federal de la Seguridad Social tiene tres salas (I, II y III), y no hay garantía de que las tres apliquen el mismo criterio de tasa de interés en el mismo momento: es un punto que cambia con frecuencia y por sala. Antes de liquidar, identificar qué sala interviene (o va a intervenir) en el expediente concreto y verificar el criterio vigente de esa sala en particular, no un criterio genérico "del fuero". No se afirma en este perfil que exista hoy una divergencia concreta entre salas: es una alerta de método, no una constatación fáctica verificada para una fecha determinada.

**No verificado: distinción de tasa por "vulnerabilidad extrema" a partir de un fallo "García".** Se planteó como observación que la CFSS y la CSJN aplicarían una tasa distinta (activa en lugar de pasiva, o la de la Caja de Ahorro Común del Banco Nación) cuando el retroactivo se origina en conceptos alcanzados por "vulnerabilidad extrema", con cita a un fallo "García". No se pudo verificar ese precedente ni esa distinción vía conector CSJN ni por búsqueda independiente: el único "García" con cita firme en este perfil es "García, María Isabel" (ganancias sobre el haber del jubilado vulnerable, ver más abajo), que no trata la tasa de interés de los retroactivos de reajuste. Citarlo para este punto sería un error de atribución. No se incorpora la distinción hasta contar con el fallo concreto.

```
[VERIFICAR TASA VIGENTE: fuero federal de la seguridad social - criterio de la Sala interviniente de la CFSS (I, II o III) / CSJN al período - no asumir criterio uniforme entre salas]
[INSERTAR FALLO VERIFICADO: si se pretende sostener una tasa diferenciada por vulnerabilidad del beneficiario o del concepto reclamado, aportar carátula, Fallos y año - no confundir con "García, María Isabel" (ganancias)]
```

### Impugnación de denegatoria de beneficio - nodo bloqueante de habilitación de instancia

Cuando ANSES deniega el otorgamiento de un beneficio (jubilación, pensión, retiro por invalidez), la vía es la impugnación judicial de la resolución bajo la Ley 24.463. Antes de entrar al fondo:

1. **Agotamiento / habilitación de instancia:** verificar si se requiere reclamo o recurso administrativo previo y si está cumplido. Sin instancia habilitada, la demanda se rechaza in limine.
2. **Plazo para impugnar - no citar "art. 25 Ley 24.463" como fuente del plazo (error ya corregido una vez, reiterado en una revisión posterior):** el art. 25 de la Ley 24.463 regula el cumplimiento de sentencias dictadas contra ANSES hasta el 31/12/1995 (verificado verbatim contra InfoLEG), no la caducidad de la impugnación. El plazo correcto sigue siendo el desarrollado abajo -corregido por la reforma de la Ley 27.742-: la demanda de impugnación tiene un plazo de caducidad desde la notificación de la resolución denegatoria, por el art. 15 de la Ley 24.463 que remite al art. 25 inc. a) de la Ley 19.549 (LNPA) [VERIFICAR VIGENCIA]. La Ley 27.742 (Bases, BO 9/7/2024) modificó el art. 25 LNPA y duplicó el plazo: **90 días hábiles judiciales** para actos notificados antes del 9/7/2024, **180 días hábiles judiciales** para actos notificados desde esa fecha (ver `administrativo-CLAUDE.md`, sección "Plazo de caducidad - reforma Ley 27.742", para el desarrollo general del instituto). Verificar siempre la fecha de notificación del acto denegatorio antes de fijar cuál de los dos plazos rige. Si ANSES no se expidió (silencio), el plazo de caducidad no corre (doctrina CSJN "Biosystem" / "Villarreal Clara"): la instancia queda habilitada sin caducar. El cómputo arranca de la notificación de la denegatoria del reclamo de reajuste, no de la resolución que otorgó el beneficio. Si el plazo está próximo, alertar antes de cualquier otra cosa.

**Silencio positivo (art. 10 LNPA, reforma Ley 27.742) - no asumir que reemplaza la doctrina "Biosystem".** La Ley 27.742 introdujo un régimen de silencio positivo para autorizaciones regladas, reglamentado por el Decreto 971/2024 (Anexo I procedimientos excluidos, Anexo II incluidos). No corresponde asumir sin verificar que un trámite de otorgamiento o reajuste de un beneficio previsional quede alcanzado por ese régimen: la doctrina "Biosystem"/"Villarreal Clara" sobre el silencio de ANSES en el reclamo de reajuste es una construcción específica del fuero de la seguridad social, distinta del silencio positivo general. Verificar si el trámite concreto figura en el Anexo II del Decreto 971/2024 antes de invocar silencio positivo en sede previsional.

**No verificado: cita "Biosystem" (Fallos 337:1044).** Se recibió esa cita puntual para la doctrina de "Biosystem". Buscada por carátula, por texto libre y por tomo/página en el conector CSJN, no arrojó resultados (0 coincidencias). No se incorpora esa cita de Fallos. La doctrina sigue nombrada como referencia sin cita cerrada hasta contar con el expediente, sala y Fallos verificados; no reintroducir "337:1044" en una revisión posterior sin material que lo respalde.

**Herramienta complementaria ante la demora: amparo por mora.** Independientemente de que el plazo de caducidad de la impugnación no corra durante el silencio, nada impide usar el amparo por mora (art. 28 Ley 19.549, texto sustituido por el art. 47 de la Ley 27.742 [VERIFICAR VIGENCIA]) para apurar una resolución expresa de ANSES mientras se evalúa si conviene esperar la denegatoria o judicializar directamente. Es una vía de apremio procesal, no un sustituto de la impugnación de fondo.

**Recurso presentado fuera de plazo: denuncia de ilegitimidad.** Si el recurso administrativo contra un acto de ANSES se presentó vencido el plazo para interponerlo, no se pierde toda posibilidad: conforme el art. 1° bis, inc. h), de la Ley 19.549 (texto incorporado por el art. 25 de la Ley 27.742 [VERIFICAR VIGENCIA]), el órgano que debía resolver el recurso puede igual considerarlo como denuncia de ilegitimidad, salvo que disponga lo contrario por seguridad jurídica o que se hubiera excedido un plazo razonable -que en ningún caso puede superar los 180 días desde la notificación del acto- al punto de entenderse abandono voluntario del derecho. No es automático: depende de que el órgano decida tratarlo así.

```
[ALERTA PLAZO FATAL: impugnación judicial de la denegatoria de ANSES - 90 días hábiles judiciales si el acto fue notificado antes del 9/7/2024, 180 días hábiles judiciales si fue notificado desde esa fecha (art. 15 Ley 24.463 + art. 25 inc. a Ley 19.549, reformado por Ley 27.742) - vencimiento: calcular según la fecha de notificación]
[VERIFICAR VIGENCIA: art. 15 Ley 24.463 y art. 25 inc. a Ley 19.549 (texto según Ley 27.742) - plazo y cómputo de la caducidad de la impugnación]
[REVISIÓN NORMATIVA REQUERIDA: si se invoca silencio de ANSES en un trámite previsional concreto, verificar contra el Decreto 971/2024 (Anexo I/II) si corresponde el régimen de silencio positivo o la doctrina específica del fuero ("Biosystem"/"Villarreal Clara")]
[INSERTAR FALLO VERIFICADO: CSJN o CFSS "Biosystem"/"Villarreal Clara" - doctrina del silencio previsional sin efecto sobre la caducidad - aportar expediente, sala, fuero y año antes de citar con Fallos]
```

**Cuadro comparativo - las cuatro vías no son intercambiables.** Ante ANSES sin respuesta o con una denegatoria, hay más de una herramienta procesal y cada una resuelve algo distinto: una impugna un acto, otra apura una resolución, otra reactiva un recurso vencido, otra corta el retroactivo cobrable. No usar una por otra.

| Vía | Qué resuelve | Plazo | Cómputo desde | Fundamento |
|---|---|---|---|---|
| Impugnación judicial de denegatoria | Ataca el acto denegatorio expreso de ANSES | 90 días hábiles judiciales (actos notificados antes del 9/7/2024) o 180 días hábiles judiciales (desde esa fecha) - plazo de caducidad, fatal | Notificación de la resolución denegatoria | Art. 15 Ley 24.463 + art. 25 inc. a) Ley 19.549 (texto Ley 27.742) [VERIFICAR VIGENCIA] |
| Amparo por mora | Apura que ANSES dicte una resolución expresa cuando demora sin plazo fijado o lo excede | Sin plazo fatal para el peticionante; una vez presentado, el juez fija un trámite de 5 + 5 días hábiles judiciales para la Administración y el peticionante | Se puede presentar mientras persista la demora | Art. 28 Ley 19.549, texto sustituido por art. 47 Ley 27.742 [VERIFICAR VIGENCIA] |
| Denuncia de ilegitimidad | Reactiva un recurso administrativo presentado fuera del plazo para interponerlo, a criterio del órgano que debía resolverlo | Sin plazo fatal para el interesado; tope de hasta 180 días desde la notificación del acto para que el órgano pueda seguir tratándolo así | Notificación del acto contra el que se recurrió tarde | Art. 1° bis, inc. h), Ley 19.549, texto Ley 27.742 [VERIFICAR VIGENCIA] |
| Prescripción del retroactivo | Corta qué mensualidades devengadas se cobran | 2 años, por mensualidad, en forma independiente | Exigibilidad de cada mensualidad | Art. 82 Ley 18.037, por reenvío [REVISIÓN NORMATIVA REQUERIDA: confirmar artículo vigente] |

La impugnación y la prescripción son plazos que extinguen un derecho si se dejan vencer: van con `[ALERTA PLAZO FATAL]`. El amparo por mora y la denuncia de ilegitimidad son herramientas de apremio o de reactivación, no plazos que corran en contra del interesado del mismo modo.

### Retiro por invalidez (art. 48 Ley 24.241)

Requiere acreditar la incapacidad en los términos del régimen (porcentaje y carácter). La determinación médica se rutea a la pericia: ver `especialidades/medicina-legal-CLAUDE.md` para la prueba de la invalidez. La denegatoria por dictamen de comisión médica se impugna por la vía previsional.

```
[VACÍO PROBATORIO: dictamen de incapacidad / pericia médica - aportar para acreditar la invalidez en el porcentaje requerido]
```

### Pensión derivada - prueba de la convivencia

Cuando el reclamo es una pensión por fallecimiento (art. 53 Ley 24.241 [VERIFICAR VIGENCIA]) y no hay matrimonio, el punto crítico no es el cálculo del haber sino la acreditación del vínculo. El art. 53 exige que el o la conviviente supérstite pruebe haber convivido públicamente en aparente matrimonio con el causante durante:

- Cinco (5) años inmediatamente anteriores al fallecimiento, como regla general; o
- Dos (2) años, si existe descendencia reconocida por ambos convivientes.

Además, el causante debe haberse hallado separado de hecho o legalmente, o haber sido soltero, viudo o divorciado. La regla de concurrencia surge directamente del texto del art. 53 y no depende de una construcción jurisprudencial adicional: el o la conviviente excluye al cónyuge supérstite solo cuando éste fue declarado culpable de la separación personal o el divorcio; en caso contrario -incluido el supuesto de separación de hecho sin culpa declarada- y cuando el causante hubiera estado pagando alimentos, se los hubieran demandado judicialmente, o el causante hubiera dado causa a la separación o al divorcio, la pensión se otorga por partes iguales entre cónyuge y conviviente. No se identificó jurisprudencia de la CSJN que sea necesaria para sostener este punto: la regla de reparto es de fuente legal directa.

```
[VERIFICAR VIGENCIA: art. 53 Ley 24.241 - regla de concurrencia cónyuge/conviviente en caso de separación de hecho o culpa en la separación/divorcio]
```

Checklist probatorio a reunir antes de iniciar el trámite o la demanda:

1. Domicilio: mismo domicilio en el DNI de ambos, o certificado de domicilio con antigüedad suficiente para cubrir el plazo legal.
2. Información sumaria de convivencia (testigos), tramitada preferentemente antes del fallecimiento o, si no fue posible, inmediatamente después.
3. Servicios a nombre de ambos o del domicilio común (luz, gas, ABL, expensas) que acrediten la convivencia efectiva durante el período.
4. Obra social: inclusión como conviviente a cargo, con fecha de alta anterior al inicio del plazo legal.
5. Descendencia reconocida por ambos convivientes, si se invoca para reducir el plazo a dos años (partida de nacimiento con reconocimiento de los dos).
6. Estado civil del causante al momento del fallecimiento (soltero, viudo, divorciado, separado de hecho o legalmente): partida y, si corresponde, sentencia de divorcio o constancia de separación de hecho.

```
[VACÍO PROBATORIO: prueba de convivencia (domicilio, información sumaria, servicios, obra social) por el plazo legal de cinco años, o dos años con descendencia común - aportar antes de iniciar el trámite]
[VACÍO PROBATORIO: estado civil del causante al fallecer (soltero/viudo/divorciado/separado de hecho o legalmente) - aportar partida y documentación de respaldo]
```

Si ANSES deniega la pensión por insuficiencia de prueba de convivencia, la vía es la impugnación judicial de la denegatoria (ver nodo bloqueante de habilitación de instancia, más abajo), no un reclamo administrativo repetido.

### Acceso sin 30 años de aportes

Diagnóstico obligatorio antes de aconsejar, porque el escenario cambió con el vencimiento de la moratoria amplia (ver "Alerta normativa"):

1. ¿La persona ya tiene la edad jubilatoria o le faltan años?
2. ¿Cuántos años de aportes reales tiene acreditados en la historia previsional?
3. Si es mujer: ¿corresponde reconocimiento de aportes por tareas de cuidado (Decreto 475/2021)?
4. ¿Los períodos a regularizar caen dentro de las ventanas de las moratorias vigentes (UCAP hasta marzo 2012; Ley 24.476 hasta septiembre 1993)?
5. Si no llega por moratoria: ¿reúne los 65 años para la PUAM? Advertir sus límites (80% de la mínima, sin pensión derivada, evaluación socioeconómica).

No prometer una jubilación ordinaria por moratoria sin verificar que los períodos disponibles completan los 30 años. Honestidad sobre el cambio de régimen: la moratoria que permitía jubilarse y pagar en cuotas al cumplir la edad ya no está vigente.

### Ganancias sobre el haber previsional - módulo opcional

Activar solo si el haber del cliente sufre retención de impuesto a las ganancias y el planteo es pertinente. La doctrina de la CSJN sobre la inconstitucionalidad de la retención del impuesto sobre el haber previsional del jubilado en situación de vulnerabilidad se identifica con el precedente "García, María Isabel c/ AFIP s/ acción meramente declarativa de inconstitucionalidad" (CSJN, Fallos 342:411, 26/3/2019, verificado vía conector CSJN), que declaró la inconstitucionalidad de las normas cuestionadas de la Ley de Impuesto a las Ganancias frente al colectivo de jubilados en situación de vulnerabilidad por ancianidad o enfermedad, con disidencia del juez Rosenkrantz. El régimen legal del impuesto sobre los haberes se modificó varias veces y hay que ubicarse en la norma vigente al período: la Ley 27.617 (2021) reformó la deducción específica; la Ley 27.725 (2023) creó el impuesto cedular sobre los mayores ingresos, que en los hechos sacó del gravamen a la mayoría de los jubilados; y la Ley 27.743 (Ley de Bases / Medidas Fiscales Paliativas y Relevantes, 2024) derogó el cedular (art. 75) y restableció el impuesto general sobre los haberes, con una deducción específica equivalente a ocho haberes mínimos (Decreto 652/2024). La doctrina "García" sobre el jubilado vulnerable sigue en pie pretorianamente; los mínimos no imponibles y las deducciones se actualizan y deben verificarse al período.

**Reserva sobre retroactivos.** Cuando el objeto principal del escrito es un reajuste o una impugnación de denegatoria con retroactivo, y el cliente está en situación de vulnerabilidad por edad o enfermedad, corresponde incluir en el petitorio la reserva o el pedido expreso de que ANSES no practique retención de Impuesto a las Ganancias sobre los importes retroactivos que se liquiden, con fundamento en "García, María Isabel". No corresponde asumir automáticamente la vulnerabilidad: verificar edad, entorno socioeconómico y estado de salud del cliente antes de incluir el pedido.

```
[VERIFICAR PRECEDENTE: "García, María Isabel" (Fallos 342:411) - confirmar que la doctrina sigue vigente al período del reclamo]
[VERIFICAR VIGENCIA: régimen del impuesto a las ganancias sobre haberes al período - secuencia Ley 27.617 / Ley 27.725 (cedular) / Ley 27.743 (Ley de Bases, restablecimiento) y Decreto 652/2024]
[VERIFICAR MONTO ACTUALIZADO: deducción específica (ocho haberes mínimos) y mínimo no imponible del período]
```

### Ejecución de sentencia contra ANSES

La sentencia de reajuste se ejecuta contra el organismo bajo el régimen de la Ley 24.463, con sus particularidades de liquidación, pago y previsión presupuestaria. Verificar el procedimiento de ejecución y el orden de prelación vigentes:

```
[REVISIÓN NORMATIVA REQUERIDA: régimen de ejecución y pago de sentencias previsionales contra ANSES - Ley 24.463 y normas presupuestarias vigentes]
```

**Liquidación de sentencia: presentarla en el sistema electrónico del fuero y cerrar la tasa antes de que la apruebe el juzgado.** La sentencia fija el derecho; la liquidación de sentencia es el paso donde ese derecho se traduce en un monto concreto, y es un cuello de botella práctico habitual en la ejecución contra ANSES. Antes de presentarla: confirmar la tasa de interés que la Sala interviniente de la CFSS esté aplicando al momento de practicar la liquidación (no necesariamente la misma que regía cuando se dictó la sentencia de fondo, si hubo un cambio de criterio en el medio), para no exponer al cliente a una quita por aplicación de una tasa desactualizada o a una impugnación de ANSES por el motivo inverso. No se afirma en este perfil una regla fija sobre qué tasa corresponde aplicar en la liquidación cuando hubo más de un criterio vigente durante el período reclamado (si corresponde la tasa de cada tramo o la vigente al momento de liquidar): es un punto a verificar caso por caso contra el criterio actual de la sala.

```
[VERIFICAR CRITERIO DEL FUERO: tasa de interés a aplicar en la liquidación de sentencia cuando hubo más de un criterio vigente durante el período reclamado - Sala interviniente de la CFSS al momento de practicar la liquidación]
```

### Costas y honorarios

Dos reglas condicionan de entrada la rentabilidad del caso y hay que transmitírselas al cliente antes de tomarlo.

**Costas por su orden.** El art. 21 Ley 24.463 [VERIFICAR VIGENCIA] dispone, en el Capítulo del procedimiento de impugnación judicial de actos de ANSES, que "en todos los casos las costas serán por su orden". Gane o pierda, ANSES no carga con los honorarios del letrado del jubilado: cada parte afronta los propios. La CSJN interpretó la norma con el máximo alcance compatible con la Constitución, en la idea de que busca una regla más benigna de distribución de costas para proteger los fondos públicos que administra ANSES. Consecuencia práctica: el honorario del profesional del actor lo paga el propio actor, con cargo al retroactivo obtenido, no ANSES.

```
[INSERTAR FALLO VERIFICADO: CSJN - alcance del art. 21 Ley 24.463 (costas por su orden) - aportar carátula, Fallos y año]
```

**Pacto de cuota litis: prohibido, no limitado a un porcentaje.** El art. 6 inc. c) Ley 27.423 [VERIFICAR VIGENCIA] establece expresamente que "en los asuntos previsionales... los honorarios del profesional pactado no podrán ser objeto de cuotalitis". No hay un tope legal del 20% ni de ningún otro porcentaje aplicable al pacto de cuota litis en materia previsional: directamente no se admite ningún pacto de cuota litis en esta materia. El art. 5 de la misma ley sanciona con nulidad absoluta cualquier convenio que reduzca las proporciones del arancel legal, con excepciones taxativas ajenas al caso (ascendientes, descendientes, cónyuge, conviviente o hermanos del profesional; actividad pro bono). Un acuerdo informal de cuota litis con el jubilado -aunque se lo llame "convenio de honorarios"- queda expuesto a esa nulidad y a la falta de ética que sanciona el propio art. 5.

Lo que sí ocurre en la práctica es que el honorario se fija por regulación judicial, conforme la escala arancelaria de la Ley 27.423, y lo termina pagando el cliente porque las costas van por su orden. La cifra que a veces circula en la práctica del fuero como "20%" no es un tope legal de cuota litis sino una referencia empírica a lo que suele representar la regulación judicial sobre el retroactivo en casos concretos: no corresponde ofrecerla al cliente como porcentaje pactado ni como tope normativo, y no debe consignarse en un convenio de honorarios como si lo fuera.

**Unidad de Medida Arancelaria (UMA).** La regulación judicial de honorarios en el fuero federal no se expresa en pesos ni en jus: la Ley 27.423 (art. 19 [VERIFICAR VIGENCIA]) instituyó la UMA, equivalente al 3% de la remuneración básica del cargo de juez federal de primera instancia. La CSJN publica y actualiza mensualmente su valor. Toda regulación de honorarios debe contener, bajo pena de nulidad, el monto en moneda de curso legal y la cantidad de UMA que representa a la fecha de la resolución (art. 51 Ley 27.423); el pago es cancelatorio si se abona el equivalente en pesos a esa cantidad de UMA según su valor vigente al momento del pago, no al de la regulación. Esto es relevante para el asesoramiento sobre honorarios en un contexto de licuación por inflación: la deuda por honorarios está fijada en UMA, no en el monto nominal originalmente expresado.

```
[VERIFICAR MONTO ACTUALIZADO: valor de la UMA - acordada de la CSJN vigente al momento de la consulta]
[VERIFICAR CRITERIO DEL FUERO: escala arancelaria y base regulatoria de honorarios en juicios de reajuste de la seguridad social - CFSS al momento del cálculo]
```

---

## Bucle de fundamentación - previsional

El armado de una demanda de reajuste corre bajo `bucles-SKILL.md`, rama Previsional. Resumen del criterio de cierre propio de la rama:

- **Nodo bloqueante:** habilitación de instancia (reclamo administrativo previo y plazo de impugnación) y prescripción del retroactivo. Van antes del fondo. En pensión derivada sin matrimonio, se suma un nodo bloqueante propio: la prueba de convivencia por el plazo legal (cinco años, o dos con descendencia común).
- **Criterio de salida:** fórmula de movilidad identificada y verificada por cada período reclamado, o prorrateo de servicios mixtos (art. 24 inc. c) aplicado; índice de actualización del haber inicial con el criterio del fuero marcado; precedentes de movilidad y de haber inicial con su marcador de vigencia (B5); retroactivo con el corte de prescripción calculado; intereses con la tasa del fuero marcada; régimen de honorarios advertido al cliente (sin cuota litis).
- **Conectores del hub:** `infoleg__` (Ley 24.241, Ley 24.463, Ley 26.417, Ley 27.423, leyes y DNU de movilidad), `csjn__` (línea de movilidad y haber inicial), `saij__`, `pjnjuris__` (jurisprudencia del fuero).

---

## Liquidación

El cálculo del retroactivo de reajuste -recomposición del haber + diferencias devengadas + intereses- se desarrolla con casos modelo en `ejemplos-previsional.md` (haber inicial, movilidad, y retroactivo con corte de prescripción e intereses), en la línea de `ejemplos-laboral.md`. Cargar ese archivo junto con el perfil cuando la tarea sea una liquidación. Toda liquidación se arma con los marcadores de verificación de índice, tasa y monto en su lugar; ninguna cifra de haber, índice o tasa se cita sin marcador.

---

## Instrucciones operativas específicas - previsional

- Identificar primero qué se reclama: haber inicial, movilidad, acceso al beneficio, o impugnación de denegatoria. Cada uno tiene su lógica y su material de respaldo.
- Verificar la fecha de adquisición del beneficio antes de cualquier cálculo: determina las normas de determinación del haber y las fórmulas de movilidad aplicables.
- No citar fórmula de movilidad sin identificar el período y verificar qué norma rigió ese tramo. La secuencia de regímenes no es intercambiable.
- No citar montos de haber mínimo, máximo, bono, PUAM ni unidad de moratoria sin marcador: se actualizan por resolución mensual.
- No citar el índice de actualización del haber inicial como un valor cerrado: marcar con verificación del criterio del fuero, porque el índice administrativo y el judicial difieren.
- No citar tasa de interés del retroactivo sin verificar el criterio vigente de la CFSS / CSJN.
- Precedentes de movilidad y de haber inicial: nombrarlos como referencia doctrinal está bien dentro del análisis, pero la cita formal en el escrito va por `[INSERTAR FALLO VERIFICADO]` y la vigencia del precedente por `[VERIFICAR PRECEDENTE]` (B5). La movilidad es el caso típico de doctrina superada por norma o fallo posterior.
- Nodo bloqueante antes del fondo: habilitación de instancia (denegatorias) y prescripción del retroactivo (reajustes). Reportarlos al inicio del análisis, no al final.
- Honestidad sobre acceso: la moratoria amplia de la Ley 27.705 venció en marzo de 2025; no ofrecer la jubilación por moratoria en cuotas como si siguiera disponible para quien ya cumplió la edad.
- Frontera con discapacidad: PNC por invalidez se deriva a `discapacidad-CLAUDE.md`; retiro por invalidez del SIPA se trata acá con pericia ruteada a `especialidades/medicina-legal-CLAUDE.md`.
- Honorarios: no ofrecer ni redactar un pacto de cuota litis en materia previsional. El art. 6 inc. c) Ley 27.423 lo prohíbe expresamente; un acuerdo informal con el mismo efecto es nulo (art. 5) y expone al profesional a sanción disciplinaria. El cobro se asienta en la regulación judicial, a cargo del cliente por la regla de costas por su orden (art. 21 Ley 24.463).
- Pensión derivada sin matrimonio: no avanzar el reclamo sin el checklist de prueba de convivencia (domicilio, información sumaria, servicios, obra social) y sin verificar si corresponde el plazo de cinco años o el de dos años por descendencia común (art. 53 Ley 24.241).
- Servicios mixtos: el cálculo del haber no es un promedio informal entre dependencia y autónomo. Aplicar el prorrateo por años de servicio del art. 24 inc. c) Ley 24.241 y verificar el estado de la deuda autónoma (liquidación SICAM) antes de dar por computables esos períodos.
- Punto de partida operativo: antes de proyectar cualquier cálculo, confirmar que el cliente cuenta con Clave de la Seguridad Social y que la historia laboral de "Mi ANSES" es consistente con lo que relata; no asumir que un trámite se resuelve por Atención Virtual sin confirmarlo, porque la modalidad cambia con frecuencia.
- Todo escrito previsional cierra con el "Estado del escrito" estándar más este bloque:
  1. Reclamo identificado (Haber inicial / Movilidad / Ambos / Acceso / Impugnación de denegatoria / Pensión derivada).
  2. Fecha de adquisición del beneficio o de fallecimiento del causante, según el caso (consignada / a aportar).
  3. Material de respaldo (Historia previsional / Resoluciones / Recibos: aportado / a aportar).
  4. Nodo bloqueante (Habilitación de instancia: cumplida / a verificar; Prescripción del retroactivo: calculada / a calcular).
  5. Fórmulas de movilidad por período (identificadas / a verificar), o prorrateo de servicios mixtos (art. 24 inc. c) si corresponde.
  6. Índice del haber inicial (criterio del fuero marcado).
  7. Tasa de interés (marcada).
  8. Precedentes con marcador de vigencia (B5) consignado.
  9. Si pensión derivada: prueba de convivencia y plazo aplicable (cinco años / dos años por descendencia) - completa / a completar.
  10. Honorarios: régimen advertido (sin cuota litis; regulación judicial a cargo del cliente) - sí / no.

---

*Última actualización: julio 2026*
*Normativa base: art. 14 bis CN; Ley 24.241 (SIJP, arts. 9, 24 y 53 en particular), Ley 24.463 (Solidaridad Previsional - arts. 15 y 21), Ley 26.417, Ley 27.260 (PUAM), Ley 27.705 y Ley 24.476 (moratorias), Ley 27.423 (honorarios - art. 6 inc. c, prohibición de cuota litis previsional), Ley 27.742 (reforma del art. 25 LNPA aplicable por remisión del art. 15 Ley 24.463), DNU 274/2024 (movilidad por IPC, vigente a junio 2026); Convención Interamericana sobre la Protección de los Derechos Humanos de las Personas Mayores (Ley 27.360, jerarquía constitucional Ley 27.700); competencia de alzada del interior: art. 18 Ley 24.463 inconstitucional ("Pedraza", Fallos 337:530); confiscatoriedad de topes: "Actis Caporale" (Fallos 323:4216) y "Tudor" (Fallos 327:3251); haber inicial - índice de actualización: "Elliff" (Fallos 332:1914) y "Blanco" (Fallos 341:1924)*
*Verificación de tramo volátil (movilidad post-2024 y estado de moratorias) contra Boletín Oficial, resoluciones ANSES y fuentes de junio 2026. Verificar siempre la movilidad, los montos y el acceso al momento de cada consulta.*
*Ampliación julio 2026 (primera tanda): costas por su orden (art. 21 Ley 24.463) y prohibición de cuota litis previsional (art. 6 inc. c Ley 27.423); prueba de convivencia en pensión derivada (art. 53 Ley 24.241, plazos de 5 y 2 años); servicios mixtos y prorrateo (art. 24 inc. c Ley 24.241) con referencia operativa al SICAM; vía administrativa previa y entorno digital de ANSES. Verbatim de los arts. 21, 24, 53 (Ley 24.241) y 5, 6 (Ley 27.423) confirmado contra InfoLEG.*
*Ampliación julio 2026 (segunda tanda, revisión de un colega): plazo de impugnación de denegatoria corregido a 90/180 días hábiles judiciales según fecha de notificación (art. 25 LNPA reformado por Ley 27.742), con remisión a `administrativo-CLAUDE.md`; nota sobre el silencio positivo (Decreto 971/2024) y su falta de superposición automática con la doctrina "Biosystem"; cita directa de "Actis Caporale" (Fallos 323:4216, origen del límite del 15%) y "Tudor" (Fallos 327:3251, aplicación en ejecución de sentencia), verificados vía conector CSJN; precisión sobre la UCAP (Ley 27.705): el art. 4 (plazo de dos años prorrogable) rige solo para la UPDP (Capítulo II), no para la UCAP (Capítulo III), que no tiene cláusula de vigencia temporal propia en el texto legal - se descarta el ajuste de estatus a "vencida" sugerido por el revisor, por no surgir del texto de la ley.*
*Ampliación julio 2026 (tercera tanda, revisión de un colega): incorporados "Elliff" (Fallos 332:1914, 11/8/2009) y "Blanco" (Fallos 341:1924, 18/12/2018), verificados vía conector CSJN, a la sección de haber inicial. Corregido expresamente un dato que no se pudo verificar: "Blanco" no fija un corte del ISBIC al 11/8/2018 ni remite a un "índice SIPA" por una "Resolución SSS N° 2/2018" - esa fecha corresponde a "Elliff" (11/8/2009), no a un límite dentro de "Blanco". Agregada la nota sobre el tope de la base imponible máxima (art. 9, segundo párrafo, Ley 24.241) como segunda causa de diferencia en el promedio, con el argumento de inconstitucionalidad por analogía con "Actis Caporale" planteado como argumento, no como doctrina consolidada (no se verificó un precedente que aplique ese 15% a este tope en particular). En pensión derivada, precisado que la regla de concurrencia cónyuge/conviviente en caso de separación de hecho surge directamente del texto del art. 53 y no requiere apoyo jurisprudencial; no se pudieron verificar como precedentes de la CSJN "Avila, María" ni "Deidda" (0 resultados en los conectores CSJN y SAIJ) y no se incorporaron.*
*Ampliación julio 2026 (cuarta tanda, revisión de un colega): agregada la UMA como unidad de regulación de honorarios (art. 19 y art. 51 Ley 27.423, verificado verbatim), con marcador de monto vigente por acordada CSJN. Rechazadas dos citas no verificables: "art. 79 Ley 24.241" para el tope del haber máximo (ese artículo está derogado desde 2016 por art. 35 Ley 27.260; el tope vigente sigue siendo el art. 9 Ley 24.463, ya citado) y el precedente "Tual" (0 resultados en conector CSJN y en SAIJ). Rechazada también la reiteración de "art. 25 Ley 24.463" como fuente del plazo de caducidad de la impugnación -error ya corregido en una ronda anterior de este mismo perfil-, con nota explícita en el texto para que no se repita. No se incorporó la distinción de tasa de interés por "vulnerabilidad extrema" atribuida a un fallo "García": no se pudo verificar, y el único "García" con cita firme en este perfil es el de ganancias sobre haberes, ajeno a la tasa de interés de los retroactivos; usarlo para este punto sería una atribución errónea. El link de InfoLEG aportado para la Ley 27.423 (id 295984) corresponde a una norma distinta (aprobación de un convenio con Gran Bretaña sobre comercio de carnes); el id verificado de la Ley 27.423 sigue siendo 305057.*
*Ampliación julio 2026 (quinta tanda, autoauditoría interna, sin revisor externo): corregido un error preexistente no detectado en las cuatro rondas anteriores: la sección de confiscatoriedad describía el art. 26 Ley 24.241 como "escala de deducciones" del tope al haber máximo. Verificado contra InfoLEG, el art. 26 fija el haber máximo de la prestación compensatoria en un MOPRE (ex AMPO) por año de servicios con aportes computados - una figura distinta de la escala de deducciones del art. 9, inc. 2, Ley 24.463. Corregido con distinción expresa de ambos topes y nuevo marcador `[REVISIÓN NORMATIVA REQUERIDA]` advirtiendo que no está verificada la extensión de la doctrina del 15% ("Actis Caporale") al tope del art. 26. Corregida también la fecha de última verificación de la sección "Alerta normativa" (estaba en junio 2026 pese a contener contenido de julio) y alineado el marcador `[ALERTA PLAZO FATAL]` de prescripción al formato canónico de cuatro campos de `marcadores-GLOSARIO.md`. Cotejados todos los marcadores del perfil contra el glosario: sin otras desviaciones. Revisado también `ejemplos-previsional.md`: no citaba el art. 26, no requirió corrección de fondo.*
*Ampliación julio 2026 (sexta tanda): agregada la capa de escritos (`previsional/escritos/`, skill orquestador + tres modelos de demanda) con referencia cruzada desde "Identidad y alcance". Incorporada, a partir de una revisión de colega, la cita verificada de "García, María Isabel c/ AFIP" (Fallos 342:411, 26/3/2019, confirmada vía conector CSJN) a la sección de Ganancias, con la reserva de no retención sobre retroactivos trasladada al petitorio de los modelos de reajuste e impugnación. Verificada contra el texto de la Ley 27.742 (arts. 25 y 47) la reforma de dos institutos de la LNPA no desarrollados hasta ahora en este perfil: la denuncia de ilegitimidad (art. 1° bis, inc. h) y la interrupción de plazos de caducidad y prescripción por la sola presentación de un reclamo o recurso, aunque mal calificado o ante órgano incompetente (art. 1° bis, inc. i); y el amparo por mora, con texto íntegramente sustituido (art. 28 LNPA). Agregado, marcado expresamente como argumento sin doctrina consolidada y sin precedente verificado, el planteo de exclusión del bono/refuerzo previsional de la base de movilidad. Rechazada la cita "Biosystem" (Fallos 337:1044): buscada por carátula, texto libre y tomo/página en el conector CSJN, no arrojó resultado; no se incorpora y se deja nota expresa para que no se reintroduzca sin material.*
*Ampliación julio 2026 (séptima tanda, revisión de un colega): agregado el cuadro comparativo de las cuatro vías previsionales frente a ANSES (impugnación judicial, amparo por mora, denuncia de ilegitimidad, prescripción del retroactivo) con plazo, cómputo y fundamento de cada una, en la sección "Impugnación de denegatoria de beneficio". Agregada la alerta de que la tasa de interés se verifica por Sala interviniente de la CFSS (I, II o III), no por un criterio genérico "del fuero", incluida su relevancia al practicar la liquidación de sentencia si hubo cambio de criterio entre la sentencia de fondo y esa etapa; no se afirma una divergencia actual constatada entre salas, es una alerta de método. Agregada la validación de datos personales del afiliado (CUIT/CUIL, nombre, fecha de nacimiento) en UDAI como paso previo operativo a cualquier moratoria o liquidación SICAM. Ninguno de estos tres puntos requería verificación jurisprudencial: son sistematización de contenido ya verificado en rondas anteriores (plazos), alerta de método (tasa por sala) y práctica operativa (SICAM), no nuevas citas normativas o de fallos.*
*Autor: Dr. Cristian Aboitiz · [@abogadoaboitiz](https://x.com/abogadoaboitiz)*
