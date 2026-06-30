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

El fundamento de la materia es constitucional: el art. 14 bis CN [VERIFICAR VIGENCIA] declara que las jubilaciones y pensiones son móviles, sin fijar un mecanismo. Toda la litigación de reajuste se apoya en esa garantía y en su integración con los instrumentos de derechos humanos con jerarquía constitucional (art. 75 inc. 22 CN; PIDESC art. 9 [VERIFICAR VIGENCIA]).

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
Juzgado federal con competencia previsional (interior) | ANSES | Misma materia, beneficiarios con domicilio en el interior | Ley 24.463 + CPCCN | Verificar si la alzada es la CFSS o la cámara federal de la jurisdicción [REVISIÓN NORMATIVA REQUERIDA: alzada competente en causas previsionales del interior según jurisdicción]
CSJN | - | Recurso extraordinario federal contra sentencia de la CFSS | Ley 48 [VERIFICAR VIGENCIA] | -

### Regla de competencia

El régimen general (SIPA) tramita ante el Fuero Federal de la Seguridad Social. No transpolar plazos ni institutos del fuero laboral: aunque comparten frontera fáctica (remuneraciones, antigüedad), el proceso previsional tiene su propio régimen en la Ley 24.463. Si el reclamo es contra una caja provincial no transferida (cajas de empleados públicos provinciales, profesionales), la competencia es provincial y la normativa es la de esa caja: verificar antes de cualquier análisis.

```
[REVISIÓN NORMATIVA REQUERIDA: si el reclamo es contra caja provincial o de profesionales no transferida - normativa y fuero provincial aplicable]
```

---

## Alerta normativa - normas de vigencia variable

*Última verificación de esta sección: junio 2026. Actualizar cuando cambie alguna de las normas listadas. La materia previsional es de las más volátiles del repo: la movilidad, los montos y el acceso cambian por ley, decreto y resolución con alta frecuencia. No citar ninguna cifra ni régimen vigente sin verificar contra el hub al momento de la consulta.*

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

- **UCAP** (Unidad de Cancelación de Aportes Previsionales para trabajadores en actividad, capítulo de la misma Ley 27.705): vigente. Para personas a diez años o menos de la edad jubilatoria (mujeres 50-59, varones 55-64) que regularizan de modo anticipado períodos hasta marzo de 2012. [VERIFICAR VIGENCIA]
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

La doctrina de la CSJN que sostiene la actualización de las remuneraciones para el cálculo del haber inicial y la inconstitucionalidad de los índices administrativos inferiores se identifica con los precedentes "Elliff" y "Blanco". Se citan como referencia doctrinal; en el escrito, la cita formal y su vigencia se anclan así:

```
[INSERTAR FALLO VERIFICADO: CSJN - actualización de remuneraciones del haber inicial por ISBIC - aportar carátula, Fallos y año]
[VERIFICAR PRECEDENTE: línea "Elliff" / "Blanco" sobre índice de actualización del haber inicial - confirmar que no fue dejada sin efecto ni superada antes de citar]
```

### Movilidad

El reclamo de movilidad cuestiona la actualización del haber a lo largo del tiempo, tramo por tramo, según la fórmula que rigió cada período. Es el módulo más volátil y el caso de manual para la verificación de vigencia del precedente: las doctrinas de movilidad se superan por norma posterior o por fallo posterior.

La línea jurisprudencial de la CSJN sobre la garantía de movilidad y la confiscatoriedad de los aumentos insuficientes se identifica con los precedentes "Sánchez" y "Badaro". Como referencia doctrinal: "Sánchez" sostuvo que la Ley 24.463 no derogó la garantía de movilidad del art. 14 bis; "Badaro" fijó pauta de ajuste ante la omisión y exhortó al Congreso. En el escrito:

```
[INSERTAR FALLO VERIFICADO: CSJN - garantía de movilidad y confiscatoriedad por movilidad insuficiente - aportar carátula, Fallos y año]
[VERIFICAR PRECEDENTE: línea "Sánchez" / "Badaro" sobre movilidad - confirmar que no fue dejada sin efecto ni superada antes de citar; la doctrina de movilidad se supera por norma o fallo posterior]
```

### Retroactivos y prescripción

El reajuste reconocido genera un retroactivo. Sobre él pesa la **prescripción bienal de los haberes devengados**: las diferencias se reclaman hacia atrás con ese límite, y cada mensualidad prescribe en forma independiente desde que fue exigible. La acción de reajuste en sí no prescribe (el estado de jubilado es permanente); lo que prescribe es el cobro de las diferencias devengadas más allá del plazo.

```
[REVISIÓN NORMATIVA REQUERIDA: norma y plazo de prescripción de los haberes devengados aplicable al período - confirmar artículo vigente antes de citar]
[ALERTA PLAZO FATAL: prescripción de haberes devengados - cómputo bienal por mensualidad - calcular el corte del retroactivo por período]
```

### Intereses

Los retroactivos devengan intereses desde que cada diferencia fue exigible. La tasa la fija la jurisprudencia del fuero y se modifica.

```
[VERIFICAR TASA VIGENTE: fuero federal de la seguridad social - criterio de la CFSS / CSJN al período]
```

### Impugnación de denegatoria de beneficio - nodo bloqueante de habilitación de instancia

Cuando ANSES deniega el otorgamiento de un beneficio (jubilación, pensión, retiro por invalidez), la vía es la impugnación judicial de la resolución bajo la Ley 24.463. Antes de entrar al fondo:

1. **Agotamiento / habilitación de instancia:** verificar si se requiere reclamo o recurso administrativo previo y si está cumplido. Sin instancia habilitada, la demanda se rechaza in limine.
2. **Plazo para impugnar:** el plazo de caducidad para impugnar la resolución denegatoria es de cómputo estricto y su determinación exacta depende de la norma aplicable. No asumir un número; verificar y, si está próximo, alertar antes de cualquier otra cosa.

```
[ALERTA PLAZO FATAL: plazo de impugnación judicial de la resolución denegatoria de ANSES - confirmar norma y cómputo aplicables - vencimiento: calcular]
[REVISIÓN NORMATIVA REQUERIDA: plazo y vía de impugnación de la denegatoria - Ley 24.463 y normas complementarias vigentes]
```

### Retiro por invalidez (art. 48 Ley 24.241)

Requiere acreditar la incapacidad en los términos del régimen (porcentaje y carácter). La determinación médica se rutea a la pericia: ver `especialidades/medicina-legal-CLAUDE.md` para la prueba de la invalidez. La denegatoria por dictamen de comisión médica se impugna por la vía previsional.

```
[VACÍO PROBATORIO: dictamen de incapacidad / pericia médica - aportar para acreditar la invalidez en el porcentaje requerido]
```

### Acceso sin 30 años de aportes

Diagnóstico obligatorio antes de aconsejar, porque el escenario cambió con el vencimiento de la moratoria amplia (ver "Alerta normativa"):

1. ¿La persona ya tiene la edad jubilatoria o le faltan años?
2. ¿Cuántos años de aportes reales tiene acreditados en la historia previsional?
3. Si es mujer: ¿corresponde reconocimiento de aportes por tareas de cuidado (Decreto 475/2021)?
4. ¿Los períodos a regularizar caen dentro de las ventanas de las moratorias vigentes (UCAP hasta marzo 2012; Ley 24.476 hasta septiembre 1993)?
5. Si no llega por moratoria: ¿reúne los 65 años para la PUAM? Advertir sus límites (80% de la mínima, sin pensión derivada, evaluación socioeconómica).

No prometer una jubilación ordinaria por moratoria sin verificar que los períodos disponibles completan los 30 años. Honestidad sobre el cambio de régimen: la moratoria que permitía jubilarse y pagar en cuotas al cumplir la edad ya no está vigente.

### Ganancias sobre el haber previsional - módulo opcional

Activar solo si el haber del cliente sufre retención de impuesto a las ganancias y el planteo es pertinente. La doctrina de la CSJN sobre la inconstitucionalidad de la retención del impuesto sobre haberes previsionales en situaciones de vulnerabilidad se identifica con el precedente "García, María Isabel", y fue seguida de la reforma de la Ley 27.617. Como referencia doctrinal; en el escrito:

```
[INSERTAR FALLO VERIFICADO: CSJN - inconstitucionalidad de la retención de ganancias sobre el haber previsional en caso de vulnerabilidad - aportar carátula, Fallos y año]
[VERIFICAR PRECEDENTE: línea "García" sobre ganancias del haber - confirmar vigencia y el estado de la Ley 27.617 antes de citar]
[VERIFICAR VIGENCIA: Ley 27.617 - tratamiento del impuesto a las ganancias sobre haberes previsionales]
```

### Ejecución de sentencia contra ANSES

La sentencia de reajuste se ejecuta contra el organismo bajo el régimen de la Ley 24.463, con sus particularidades de liquidación, pago y previsión presupuestaria. Verificar el procedimiento de ejecución y el orden de prelación vigentes:

```
[REVISIÓN NORMATIVA REQUERIDA: régimen de ejecución y pago de sentencias previsionales contra ANSES - Ley 24.463 y normas presupuestarias vigentes]
```

---

## Bucle de fundamentación - previsional

El armado de una demanda de reajuste corre bajo `bucles-SKILL.md`, rama Previsional. Resumen del criterio de cierre propio de la rama:

- **Nodo bloqueante:** habilitación de instancia (reclamo administrativo previo y plazo de impugnación) y prescripción del retroactivo. Van antes del fondo.
- **Criterio de salida:** fórmula de movilidad identificada y verificada por cada período reclamado; índice de actualización del haber inicial con el criterio del fuero marcado; precedentes de movilidad y de haber inicial con su marcador de vigencia (B5); retroactivo con el corte de prescripción calculado; intereses con la tasa del fuero marcada.
- **Conectores del hub:** `infoleg__` (Ley 24.241, Ley 24.463, Ley 26.417, leyes y DNU de movilidad), `csjn__` (línea de movilidad y haber inicial), `saij__`, `pjnjuris__` (jurisprudencia del fuero).

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
- Todo escrito previsional cierra con el "Estado del escrito" estándar más este bloque:
  1. Reclamo identificado (Haber inicial / Movilidad / Ambos / Acceso / Impugnación de denegatoria).
  2. Fecha de adquisición del beneficio (consignada / a aportar).
  3. Material de respaldo (Historia previsional / Resoluciones / Recibos: aportado / a aportar).
  4. Nodo bloqueante (Habilitación de instancia: cumplida / a verificar; Prescripción del retroactivo: calculada / a calcular).
  5. Fórmulas de movilidad por período (identificadas / a verificar).
  6. Índice del haber inicial (criterio del fuero marcado).
  7. Tasa de interés (marcada).
  8. Precedentes con marcador de vigencia (B5) consignado.

---

*Última actualización: junio 2026*
*Normativa base: art. 14 bis CN; Ley 24.241 (SIJP), Ley 24.463 (Solidaridad Previsional), Ley 26.417, Ley 27.260 (PUAM), Ley 27.705 y Ley 24.476 (moratorias), DNU 274/2024 (movilidad por IPC, vigente a junio 2026)*
*Verificación de tramo volátil (movilidad post-2024 y estado de moratorias) contra Boletín Oficial, resoluciones ANSES y fuentes de junio 2026. Verificar siempre la movilidad, los montos y el acceso al momento de cada consulta.*
*Autor: Dr. Cristian Aboitiz · [@abogadoaboitiz](https://x.com/abogadoaboitiz)*
