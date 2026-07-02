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

### Julio 2026 - README.md actualizado con las dos últimas rondas del perfil previsional

**Archivos modificados:** `README.md` (raíz) - agregadas dos bullets a la sección "Previsional" de `## Lo que podés hacer desde el día uno`: reserva de Ganancias (con la cita verificada "García, María Isabel", Fallos 342:411) y la distinción entre impugnación judicial, amparo por mora y denuncia de ilegitimidad; y tasa de interés por Sala de la CFSS más validación de datos personales en SICAM/UDAI. No requirió cambios en la tabla `## Perfiles por área` ni en `## Alertas de normas inestables`, ya actualizadas cuando se agregó la capa de escritos.

**Verificación:** no introduce citas nuevas; resume contenido ya verificado en las dos entradas anteriores de este changelog.

### Julio 2026 - Completitud operativa del perfil previsional (plazos, liquidación de sentencia, SICAM, tasa por sala)

**Motivo:** un colega revisó el perfil ya ampliado y sugirió cuatro puntos de "completitud para la práctica diaria": (1) tabla comparativa de plazos entre impugnación de denegatoria y amparo por mora; (2) alertar sobre la tasa de interés vigente al momento de aprobarse la liquidación de sentencia; (3) validación de datos personales en ANSES/UDAI antes de tramitar la moratoria vía SICAM; (4) verificar el criterio de cada Sala de la CFSS (I, II, III) sobre tasa de interés, no asumirlo uniforme. Instrucción del usuario: verificar y borrar lo que no se pudiera verificar.

Los cuatro puntos son, en su mayoría, de sistematización y método antes que de citas normativas o jurisprudenciales nuevas, así que no requirieron una nueva ronda de verificación vía conectores más allá de confirmar que el contenido de base ya estaba correcto:

- **Punto 1 (tabla de plazos):** no introduce ningún dato nuevo. Se construyó con las cuatro vías ya verificadas en la ronda anterior (impugnación judicial - art. 15 Ley 24.463 + art. 25 inc. a LNPA; amparo por mora - art. 28 LNPA texto Ley 27.742; denuncia de ilegitimidad - art. 1° bis inc. h LNPA; prescripción bienal) en una única tabla comparativa dentro de `previsional-CLAUDE.md`, sección "Impugnación de denegatoria de beneficio".
- **Punto 2 (tasa al momento de la liquidación):** no se encontró una regla fija verificable sobre qué tasa corresponde cuando hubo más de un criterio vigente durante el período reclamado (si se recalcula todo a la tasa vigente al momento de aprobar la liquidación o se respeta la tasa de cada tramo). Se incorporó como alerta de método con marcador `[VERIFICAR CRITERIO DEL FUERO]`, no como regla asentada, en `previsional-CLAUDE.md` (sección "Ejecución de sentencia contra ANSES") y en `demanda-reajuste-haberes.md`.
- **Punto 3 (SICAM y datos personales):** es una práctica operativa (UDAI), no un punto normativo verificable por los conectores de jurisprudencia o legislación. Se incorporó como paso operativo previo a la liquidación SICAM en `previsional-CLAUDE.md`, en el modelo `demanda-reajuste-haberes.md` y en el checklist del skill.
- **Punto 4 (tasa por Sala de la CFSS):** la existencia de tres salas (I, II, III) es estructura conocida del fuero, pero no se verificó -ni se afirma en el perfil- que exista hoy una divergencia concreta de criterio entre ellas sobre la tasa de interés: se incorporó como alerta de método (identificar la sala interviniente antes de fijar la tasa), no como constatación fáctica de una divergencia puntual no verificada.

**Archivos modificados:**
- `previsional-CLAUDE.md`: cuadro comparativo de las cuatro vías en la sección de impugnación; nuevo párrafo sobre tasa por Sala en "Intereses"; nuevo párrafo sobre liquidación de sentencia en "Ejecución de sentencia contra ANSES"; paso operativo de validación de datos en "Servicios mixtos y SICAM"; footer con nota de séptima tanda.
- `previsional/escritos/modelos/demanda-reajuste-haberes.md`: marcador de datos personales en el tramo SICAM; párrafo y marcador de tasa por sala y liquidación de sentencia en la sección V; Estado del escrito actualizado.
- `previsional/escritos/escritos-previsional-SKILL.md`: Paso 2 ampliado con las cuatro vías, la tasa por sala y SICAM; dos ítems nuevos en el checklist de cierre.

**Verificación:** ningún punto de esta ronda requirió una nueva búsqueda en conectores de jurisprudencia o normativa: son reorganización de contenido ya verificado (punto 1), alertas de método sin afirmación fáctica no verificada (puntos 2 y 4), y práctica operativa ajena a los conectores legales (punto 3).

### Julio 2026 - Verificación de propuestas de un colega sobre los escritos previsionales (Ganancias, LNPA, bono)

**Motivo:** un colega revisó los tres modelos de la capa de escritos recién agregada y sugirió tres incorporaciones: (A) reserva de no retención de Ganancias sobre retroactivos, con cita al fallo "García"; (B) planteo de inconstitucionalidad por exclusión del bono/refuerzo de la base de movilidad; (C) precisiones sobre el plazo de silencio administrativo, citando "Biosystem" (Fallos 337:1044) y afirmando que la Ley 27.742 modificó sustancialmente la denuncia de ilegitimidad y el amparo por mora. Instrucción del usuario: verificar cada punto y borrar lo que no se pudiera verificar.

**Punto A - verificado e incorporado.** "García, María Isabel c/ AFIP s/ acción meramente declarativa de inconstitucionalidad" (CSJN, Fallos 342:411, 26/3/2019) confirmado vía conector CSJN por carátula exacta: 10 sumarios coincidentes, con fallo destacado sobre inconstitucionalidad de la retención de Ganancias a jubilados vulnerables. Se corrige de paso la caratulación que había circulado ("s/ acción de amparo"): es "acción meramente declarativa de inconstitucionalidad". Se actualizó la cita en `previsional-CLAUDE.md` (antes con marcador `[INSERTAR FALLO VERIFICADO]`, ahora con Fallos y fecha) y se agregó la reserva sobre Ganancias, condicionada a evaluar vulnerabilidad del cliente, al petitorio de `demanda-reajuste-haberes.md` y `demanda-impugnacion-denegatoria.md`.

**Punto B - parcialmente incorporado, sin precedente.** No se encontró jurisprudencia de la CSJN ni de la CFSS sobre la exclusión del bono de la base de movilidad (0 resultados en SAIJ). Se incorporó el argumento a `previsional-CLAUDE.md` y a `demanda-reajuste-haberes.md` (sección IV.4 bis, opcional), pero marcado en todo momento como planteo autónomo sin doctrina consolidada, con `[REVISIÓN NORMATIVA REQUERIDA]` y `[VERIFICAR PRECEDENTE]`, no como aplicación de un fallo.

**Punto C - dividido: cita rechazada, contenido normativo verificado e incorporado por otra vía.** La cita "Biosystem" (Fallos 337:1044) se buscó por carátula, por texto libre y por tomo/página en el conector CSJN: 0 resultados en los tres casos. No se incorpora esa cita puntual; se dejó nota expresa en `previsional-CLAUDE.md` y en el modelo de impugnación para que no se reintroduzca sin material real. Sí se verificó, contra el texto completo de la Ley 27.742 (InfoLEG, id 401266), que la reforma modificó dos institutos generales de la LNPA no desarrollados hasta ahora en el perfil: el amparo por mora (art. 28 Ley 19.549, texto íntegramente sustituido por el art. 47 de la Ley 27.742) y la denuncia de ilegitimidad (art. 1° bis, inc. h, incorporado por el art. 25 de la Ley 27.742, con tope de 180 días desde la notificación del acto). También se verificó el art. 1° bis, inc. i) de la misma reforma: la sola presentación de un reclamo o recurso administrativo interrumpe los plazos de caducidad y prescripción, aunque esté mal calificado o se haya presentado ante órgano incompetente - dato relevante para la práctica de documentar la fecha exacta del trámite, que ya estaba recomendada en el perfil sin este respaldo normativo explícito.

**Archivos modificados:**
- `previsional-CLAUDE.md`: cita verificada de "García" (Fallos 342:411) en la sección de Ganancias; nuevo párrafo de "reserva sobre retroactivos"; ampliación de la sección de bono/refuerzo con el argumento marcado como no verificado; nuevos puntos en "Vía administrativa previa" sobre interrupción de plazos y amparo por mora; nota de rechazo de la cita "Biosystem" (Fallos 337:1044) y nuevo párrafo sobre denuncia de ilegitimidad; footer con nota de sexta tanda.
- `previsional/escritos/modelos/demanda-reajuste-haberes.md`: sección IV.4 bis (bono, opcional) y reserva sobre Ganancias en el petitorio; Estado del escrito actualizado.
- `previsional/escritos/modelos/demanda-impugnacion-denegatoria.md`: párrafos sobre amparo por mora y denuncia de ilegitimidad; reserva sobre Ganancias en el petitorio; rechazo explícito de "Fallos 337:1044"; Estado del escrito actualizado.
- `previsional/escritos/escritos-previsional-SKILL.md`: Paso 2 ampliado con los cinco puntos de esta verificación; dos racionalizaciones comunes nuevas; ítem nuevo en el checklist de cierre; footer con las normas y el fallo agregados.

**Verificación:** "García, María Isabel" confirmado vía conector CSJN (10 sumarios, Fallos 342:411). Arts. 25 y 47 de la Ley 27.742 confirmados vía InfoLEG (id 401266, texto completo leído). "Biosystem" (Fallos 337:1044) no verificado - rechazado. Argumento del bono sin precedente - incorporado solo como planteo, no como doctrina.

### Julio 2026 - Capa de escritos para el perfil previsional (nuevo)

**Motivo:** el perfil previsional tenía perfil de fondo (`previsional-CLAUDE.md`) y casos de liquidación (`ejemplos-previsional.md`), pero no la capa de escritos que sí tienen laboral, familia, consumidor, penal y civil (skill orquestador + carpeta de modelos). Se agregó siguiendo el mismo patrón.

**Archivos nuevos:**
- `previsional/escritos/escritos-previsional-SKILL.md`: skill orquestador. Define cuándo activar, el encuadre previo (fuero, reclamo identificado, fecha de adquisición del beneficio), la verificación normativa obligatoria antes de redactar (control de los tres topes sin confundirlos, plazo de impugnación 90/180 días, prescripción bienal, ISBIC, confiscatoriedad), la tabla de ruteo hacia los tres modelos, reglas de integridad, restricciones absolutas, racionalizaciones comunes, señales de alerta y checklist de cierre.
- `previsional/escritos/modelos/demanda-reajuste-haberes.md`: demanda de reajuste de haberes (haber inicial, movilidad, o ambos), con secciones condicionales para control de topes (distinguiendo expresamente art. 9 segundo párrafo Ley 24.241, art. 9 Ley 24.463 y art. 26 Ley 24.241) y confiscatoriedad, remitida a `ejemplos-previsional.md` para la liquidación numérica.
- `previsional/escritos/modelos/demanda-impugnacion-denegatoria.md`: demanda de impugnación judicial de una denegatoria de ANSES (otorgamiento, reajuste o retiro por invalidez), con el nodo de habilitación de instancia y el cálculo del plazo de caducidad (90 o 180 días según la fecha de notificación) como sección obligatoria antes del fondo.
- `previsional/escritos/modelos/demanda-pension-derivada.md`: demanda de pensión por fallecimiento para conviviente sin matrimonio, con el checklist probatorio de convivencia (plazos de 5 y 2 años, art. 53 Ley 24.241) y la regla de concurrencia con cónyuge supérstite.

**Archivos modificados:**
- `previsional-CLAUDE.md`: agregada una referencia a la nueva capa de escritos en la sección "Identidad y alcance".
- `README.md`: agregada la carpeta `previsional/escritos/` al árbol de `## Estructura`, a la columna de complementos de la tabla `## Perfiles por área`, al Paso 4 de instalación, y una nueva capacidad en `## Lo que podés hacer desde el día uno`.

**Verificación:** los tres modelos reutilizan únicamente citas y marcadores ya verificados en rondas anteriores de `previsional-CLAUDE.md` (Elliff, Blanco, Actis Caporale, Tudor, Pedraza, arts. 9, 24, 26 y 53 Ley 24.241, arts. 15 y 21 Ley 24.463, art. 25 inc. a Ley 19.549 reformado por Ley 27.742, art. 6 inc. c Ley 27.423). No se incorporó ninguna cita nueva sin verificar.

### Julio 2026 - Autoauditoría integral del perfil previsional (previsional-CLAUDE.md, ejemplos-previsional.md, README.md)

**Motivo:** después de cuatro rondas de correcciones a partir de revisiones externas, se hizo una auditoría propia de los tres archivos para detectar errores no señalados por ningún revisor externo, así como fechas o marcadores desactualizados por ediciones sucesivas.

**Hallazgo principal - previsional-CLAUDE.md:** la sección "Confiscatoriedad por aplicación de topes" describía el art. 26 Ley 24.241 como "la escala de deducciones" del tope al haber máximo. Verificado el texto contra InfoLEG, el art. 26 no es una escala de deducciones: fija el haber máximo de la prestación compensatoria en un MOPRE (ex AMPO) por cada año de servicios con aportes computados. La escala de deducciones progresiva (20%/35%/50%/70%) está en el art. 9, inc. 2, de la Ley 24.463 - una figura distinta, con texto distinto. Este error era preexistente (no había sido introducido por ninguna revisión de este año) y no había sido detectado en las cuatro rondas anteriores. Corregido con distinción expresa de los dos topes, nota de "Corrección de auditoría interna" en el cuerpo del perfil, y ajuste de los marcadores: se quitó la especificidad "inc. 3" del marcador de traslado del límite del 15% (línea "Rapisarda"/"Argento") y se agregó un `[REVISIÓN NORMATIVA REQUERIDA]` nuevo advirtiendo que no está verificada la extensión de esa doctrina al tope del art. 26.

**Otros hallazgos:**
- `previsional-CLAUDE.md`: la sección "Alerta normativa" tenía fecha de última verificación "junio 2026" pese a contener contenido editado en julio de 2026 (la precisión UPDP/UCAP del art. 4 Ley 27.705). Corregida la fecha.
- `previsional-CLAUDE.md` y `ejemplos-previsional.md`: el marcador `[ALERTA PLAZO FATAL]` de prescripción de haberes devengados no seguía el formato canónico de cuatro campos (norma - plazo - inicio del cómputo - vencimiento) de `marcadores-GLOSARIO.md` A10. Alineado en ambos archivos.
- `ejemplos-previsional.md`: revisado contra la corrección del art. 26 Ley 24.241 - el archivo no lo citaba (ya usaba correctamente art. 9 Ley 24.463 y descartaba art. 79), no requirió cambio de fondo.
- `README.md`: verificadas las siete secciones con contenido previsional agregado en la ronda anterior (estructura, "opera bajo", tabla de perfiles, alertas, instalación, capacidades, footer): sin duplicaciones, tablas y árbol de archivos íntegros.
- Se hizo un cotejo completo de todos los marcadores usados en `previsional-CLAUDE.md` contra `marcadores-GLOSARIO.md`: sin desviaciones de sintaxis fuera de las ya corregidas arriba.

**Archivos modificados:**
- `previsional-CLAUDE.md`: corrección del art. 26 Ley 24.241, fecha de la sección de alerta normativa, marcador de prescripción, footer con nueva nota de "Ampliación julio 2026 (quinta tanda, autoauditoría)"
- `ejemplos-previsional.md`: marcador de prescripción alineado al formato canónico, footer con nueva nota de "Ampliación julio 2026 (cuarta tanda, autoauditoría)"

**Verificación:** art. 26 Ley 24.241 confirmado vía InfoLEG (texto vigente). Resto de hallazgos son de consistencia interna, no requirieron nueva verificación normativa.

### Julio 2026 - README.md sin el perfil previsional (omisión detectada y corregida)

**Archivos modificados:**
- `README.md` (raíz del repo) - el perfil previsional (`previsional-CLAUDE.md` + `ejemplos-previsional.md`), creado en junio de 2026, nunca había quedado registrado en el README: no figuraba en el árbol de `## Estructura`, ni en la tabla `## Perfiles por área`, ni en `## Alertas de normas inestables`, ni en el Paso 4 de instalación, ni en `## Lo que podés hacer desde el día uno`, ni en el bloque "Opera bajo" de `## Qué hace este sistema`. El resto de los perfiles creados en el mismo período (consumidor, familia, tránsito) sí habían quedado documentados en su momento; previsional quedó afuera por omisión. Corregido en las seis secciones:
  1. `## Estructura`: agregada la línea `previsional-CLAUDE.md` (junto a `tributario-CLAUDE.md`) y `ejemplos-previsional.md` (en el bloque de archivos de ejemplos, junto a `ejemplos-penal.md`)
  2. `## Qué hace este sistema` - "Opera bajo": agregada la línea de Ley 24.241 (SIJP) y Ley 24.463 (Solidaridad Previsional)
  3. `## Perfiles por área`: nueva fila con área, complementos (`ejemplos-previsional.md`) y alertas (movilidad post-DNU 274/2024, vencimiento UPDP/vigencia UCAP, plazo 90/180 días por Ley 27.742, tasa de interés)
  4. `## Alertas de normas inestables`: nueva fila apuntando a la sección `## Alerta normativa` del perfil, con el listado de normas de mayor volatilidad
  5. Paso 4 de instalación: agregado el ejemplo "Previsional: `argentina/previsional-CLAUDE.md` + `argentina/ejemplos-previsional.md`"
  6. `## Lo que podés hacer desde el día uno`: nueva sección "Previsional" con las capacidades vigentes a julio de 2026 (reajuste con control de topes, índice ISBIC con "Elliff"/"Blanco", confiscatoriedad con "Actis Caporale"/"Tudor", servicios mixtos y SICAM, acceso sin 30 años de aportes, pensión derivada con prueba de convivencia, nodo bloqueante de habilitación de instancia, costas y honorarios en UMA)
  - Footer de fecha actualizado a julio 2026

**Motivo:** el abogado preguntó directamente si hacía falta actualizar el README. La revisión mostró que sí, y que la omisión no era de esta sesión sino que venía arrastrándose desde la creación del perfil en junio. Corregido para que el README vuelva a ser un índice completo y confiable de los perfiles del repositorio.

---

### Julio 2026 - Tercera revisión de colega sobre el perfil previsional (UMA, topes, plazo LNPA reiterado, tasa de interés)

**Archivos modificados:**
- `argentina/previsional-CLAUDE.md` y `argentina/ejemplos-previsional.md` - cuatro observaciones adicionales, verificadas antes de incorporar:
  1. **UMA (Unidad de Medida Arancelaria) - incorporada, con corrección del link.** Se agregó a la sección "Costas y honorarios" que la Ley 27.423 (arts. 19 y 51, verificados verbatim contra InfoLEG) fija los honorarios en UMA -3% de la remuneración básica de juez federal de primera instancia, valor publicado mensualmente por la CSJN- y que el pago cancelatorio se calcula al valor de la UMA vigente al momento del pago, no al de la regulación. El link de InfoLEG aportado (id 295984) no corresponde a la Ley 27.423: es la aprobación de un convenio con Gran Bretaña sobre comercio de carnes. Se mantiene el id ya verificado en la ronda anterior (305057)
  2. **Tope de la base imponible y "control de topes" en el Ejemplo 1 - incorporado el paso, corregida la cita del tope de haber máximo.** Se agregó un "Paso 1 bis - Control de topes" en `ejemplos-previsional.md`, antes del recálculo de las prestaciones, cubriendo el tope de la base imponible de aportes (art. 9, segundo párrafo, Ley 24.241) y el tope del haber máximo. Se rechazó la cita de "art. 79 Ley 24.241" para este último: verificado el texto actualizado contra InfoLEG, ese artículo está derogado desde el 22/7/2016 por art. 35 de la Ley 27.260 y no regula haberes máximos. El tope de haber máximo sigue siendo, como ya estaba en el perfil, el art. 9 Ley 24.463. Se rechazó también el precedente "Tual": buscado vía conector CSJN y SAIJ, no arrojó resultados; el planteo de inconstitucionalidad por confiscatoriedad queda apoyado en "Actis Caporale" y "Tudor" (ya incorporados en la ronda anterior), con la extensión del 15% al tope de base imponible identificada expresamente como argumento por analogía, no como doctrina consolidada
  3. **Plazo de caducidad (art. 25 Ley 24.463) - la observación repitió un error ya corregido.** Se había corregido en la primera ronda de este ciclo (ver entrada de más abajo) que el plazo de impugnación no surge del art. 25 de la Ley 24.463 -que regula el cumplimiento de sentencias contra ANSES anteriores al 31/12/1995- sino del art. 15 de la misma ley, que remite al art. 25 inc. a) de la Ley 19.549 (LNPA), hoy con el desdoblamiento 90/180 días por la reforma de la Ley 27.742. Se agregó una nota explícita en el texto para que la confusión no se reitere en futuras revisiones
  4. **Tasa de interés diferenciada por "vulnerabilidad extrema" (fallo "García") - no incorporada.** No se pudo verificar un precedente de la CSJN o la CFSS que fije una tasa activa (o la de la Caja de Ahorro Común del BNA) para retroactivos originados en conceptos de "vulnerabilidad extrema". El único "García" con cita firme en el perfil es "García, María Isabel" (ganancias sobre el haber del jubilado vulnerable), que no trata la tasa de interés de los retroactivos de reajuste: usarlo para este punto habría sido una atribución errónea. Se dejó constancia de la no verificación y un marcador para incorporar el fallo si el abogado lo aporta
  - Footer de normativa base y versionado de ambos archivos actualizado; checklist de `ejemplos-previsional.md` ampliado con el control de topes

**Verificación (InfoLEG y conectores, julio 2026):**
- Ley 27.423 (idNorma 305057), arts. 19 y 51: texto verbatim de la UMA y de la regla de pago cancelatorio
- Art. 79 Ley 24.241 (idNorma 639, texto actualizado): "(Artículo derogado por art. 35 de la Ley N° 27.260 B.O. 22/7/2016)" - confirmado verbatim
- idNorma 295984 (InfoLEG): confirmado que corresponde a la aprobación de un convenio con Gran Bretaña sobre comercio de carnes, no a la Ley 27.423
- "Tual" (autos, conector CSJN) y búsqueda en SAIJ: 0 resultados en ambos
- Búsqueda de un fallo "García" sobre tasa de interés diferenciada por vulnerabilidad: sin resultado verificable: el único "García" con cita firme sigue siendo el de ganancias, ya incorporado en un módulo distinto del perfil

**Motivo:** cuarta ronda de revisión externa sobre el mismo perfil. De las cuatro observaciones, dos procedieron sin objeciones (UMA) o con corrección de cita (control de topes, corrigiendo "art. 79" por "art. 9 Ley 24.463" y descartando "Tual"), una repitió un error de cita ya corregido antes en este mismo ciclo (art. 25 Ley 24.463 para el plazo de caducidad) y una no pudo verificarse y no se incorporó (tasa diferenciada por vulnerabilidad, fallo "García"). Se mantiene el mismo criterio: verificar antes de escribir, e incorporar solo lo que resiste la verificación contra fuente primaria o conector.

---

### Julio 2026 - Segunda revisión de colega sobre el perfil previsional (índice ISBIC, tope de base imponible, pensión derivada)

**Archivos modificados:**
- `argentina/previsional-CLAUDE.md` y `argentina/ejemplos-previsional.md` - tres observaciones de un colega sobre la ampliación anterior, verificadas una por una vía conector CSJN/SAIJ antes de incorporar:
  1. **"Blanco" (CSJN) - incorporado, pero corrigiendo el dato que lo acompañaba.** El colega afirmó que "Blanco" (2018) fija un corte del índice ISBIC al 11 de agosto de 2018, reemplazado desde esa fecha por un "índice SIPA" según una "Resolución SSS N° 2/2018". Verificado el sumario oficial de "Blanco, Lucio Orlando c/ ANSeS s/ reajustes varios" (Fallos 341:1924, 18/12/2018) vía conector CSJN: el fallo declaró la inconstitucionalidad de la Res. ANSES 56/2018 y la Res. SSS 1/2018 -que pretendían reemplazar el ISBIC por el RIPTE- y sostuvo que la fijación del índice es resorte exclusivo del Congreso, ordenando que el ISBIC siga aplicándose hasta que el Congreso legisle. No hay corte al 11/8/2018 ni "índice SIPA": esa fecha corresponde a "Elliff" (Fallos 332:1914), decidido el 11/8/2009 -no 2018-, lo que sugiere una confusión entre ambos precedentes. Se incorporaron ambos fallos con cita verificada y se dejó constancia expresa de la corrección
  2. **Tope del art. 9 Ley 24.241 (base imponible máxima) - incorporado con matiz.** Se agregó la advertencia de que ANSES excluye del promedio las remuneraciones que superaron la base imponible máxima (art. 9, segundo párrafo, por remisión del art. 25), como segunda causa -distinta del índice- de un promedio más bajo. Precisión de cita: la ley no subdivide el art. 9 en incisos numerados como sugería la observación ("inc. 2"); son dos párrafos de un mismo artículo (mínimo y máximo de la base imponible). El argumento de inconstitucionalidad por confiscatoriedad se incorporó planteado como argumento por analogía con "Actis Caporale", no como doctrina consolidada: no se verificó un precedente de la CSJN que aplique el límite del 15% a este tope en particular
  3. **Pensión derivada, cónyuge separado de hecho - la regla ya estaba cubierta; no se incorporó jurisprudencia.** El colega pidió reforzar el punto con "Avila, María" y "Deidda" (CSJN). Ambos se buscaron vía conector CSJN (autos y texto libre) y vía SAIJ: cero resultados para "Deidda"; "Avila" devolvió 95 resultados sin ningún caso de pensión derivada o convivencia. No se pudieron verificar como precedentes reales y no se incorporaron. Se dejó una nota aclarando que la regla de concurrencia por partes iguales entre cónyuge y conviviente en caso de separación de hecho sin culpa surge directamente del texto del art. 53 Ley 24.241 y no requiere apoyo jurisprudencial adicional
  - Footer de normativa base y versionado de ambos archivos actualizado

**Verificación (conector CSJN, julio 2026):**
- "Elliff, Alberto José c/ ANSeS s/ reajustes varios", Fallos 332:1914, 11/8/2009, expte. E.131.XLIV.REX
- "Blanco, Lucio Orlando c/ ANSeS s/ reajustes varios", Fallos 341:1924, 18/12/2018, expte. CSS 042272/2012/CS001 (corroborado además contra comentarios de doctrina de acceso público, que confirman el mismo objeto: Res. ANSES 56/2018 y Res. SSS 1/2018 vs. RIPTE, mantenimiento del ISBIC hasta que el Congreso legisle)
- Art. 9 Ley 24.241 (InfoLEG, idNorma 639, texto actualizado): confirmado verbatim - base imponible mínima (3 MOPRE) y máxima (75 MOPRE) en un solo artículo de dos párrafos, sin incisos numerados
- "Avila" (autos, conector CSJN): 95 resultados, ninguno de materia previsional/pensión derivada en la muestra revisada. "Deidda" (autos, conector CSJN) y "Deidda pensión conviviente" (SAIJ): 0 resultados en ambos

**Motivo:** una segunda ronda de revisión externa aportó dos observaciones que enriquecieron el perfil (Blanco/Elliff con cita verificada; tope del art. 9 como causa adicional de diferencia en el promedio) y una que no resistió la verificación (Avila/Deidda). Se corrigió además, de oficio, un dato erróneo que acompañaba la primera observación (el supuesto corte del ISBIC al 11/8/2018), en vez de transcribirlo sin chequear. Se sigue el mismo criterio de las rondas anteriores: incorporar lo que se verifica, señalar lo que no, y dejar registro de por qué.

---

### Julio 2026 - Corrección del perfil previsional a partir de una revisión de colega (plazo LNPA, silencio, confiscatoriedad, UCAP)

**Archivos modificados:**
- `argentina/previsional-CLAUDE.md` - correcciones y ampliaciones a partir de tres observaciones de un colega sobre la ampliación de julio 2026:
  1. **Plazo de impugnación de denegatoria - corregido.** El perfil citaba únicamente 90 días hábiles judiciales (art. 15 Ley 24.463 + art. 25 inc. a LNPA). Se corrigió: la Ley 27.742 (Bases, BO 9/7/2024) reformó el art. 25 LNPA y duplicó el plazo a 180 días hábiles judiciales para actos notificados desde esa fecha; 90 días para actos anteriores. Se agregó remisión a `administrativo-CLAUDE.md`, que ya tenía esta reforma documentada, y una nota sobre el silencio positivo del art. 10 LNPA (Decreto 971/2024) para que no se asuma sin verificar que reemplaza la doctrina específica del fuero ("Biosystem"/"Villarreal Clara")
  2. **Confiscatoriedad de topes - jurisprudencia de la CSJN incorporada.** El perfil solo tenía la línea de la CFSS ("Rapisarda", "Argento") sin fallo de la Corte. Se agregó, verificado vía conector CSJN, "Actis Caporale, Loredano Luis Adolfo c/ INPS..." (Fallos 323:4216, 19/8/1999, unanimidad - origen del límite del 15%, entonces sobre el tope del art. 55 Ley 18.037) y "Tudor, Enrique José c/ ANSeS" (Fallos 327:3251, 19/8/2004 - aplicación del criterio en la etapa de ejecución de sentencia). "Rapisarda"/"Argento" quedan como estaban, sin verificar (marcador B1), porque no se verificaron en esta sesión
  3. **UCAP (Ley 27.705) - la sugerencia de marcarla "vencida" no procedió.** El colega planteó que el art. 4 de la Ley 27.705 fija un plazo de dos años (prorrogable) para todo el "Plan de Pago de Deuda Previsional", y que por lo tanto la UCAP también habría caducado junto con la UPDP en marzo de 2025. Verificado el texto de la ley contra InfoLEG: el art. 4 está en el Capítulo II (arts. 4 a 14), exclusivo de la UPDP; el Capítulo III (UCAP, arts. 15 a 20) no tiene cláusula de vigencia temporal equivalente. Se agregó una precisión en el perfil explicando la distinción por capítulos y se descartó el cambio de estatus, sin perjuicio de dejar el `[VERIFICAR VIGENCIA]` existente
  - Footer de normativa base y versionado actualizados con las tres correcciones

**Verificación (julio 2026):**
- Art. 25 LNPA reformado por Ley 27.742 (90 → 180 días hábiles judiciales desde el 9/7/2024): ya documentado y verificado en `argentina/administrativo-CLAUDE.md` (secciones "Plazo de caducidad" y "Silencio administrativo - regla reformada"); reutilizado por remisión, no reverificado de cero
- "Actis Caporale" (CSJN, Fallos 323:4216, 19/8/1999, expte. A.403.XXXII.REX) y "Tudor, Enrique José c/ ANSeS" (CSJN, Fallos 327:3251, 19/8/2004, expte. T.198.XXXVII): carátula, cita y sumario obtenidos vía conector `csjn__buscar_sumarios`
- Ley 27.705 (idNorma InfoLEG 380615), texto actualizado: arts. 1 a 24 leídos íntegros; confirmado que el plazo de dos años del art. 4 está circunscripto al Capítulo II (UPDP)

**Discrepancia con los links aportados por el colega:** de los cinco links de InfoLEG que acompañaban la revisión, dos coinciden con los IDs verificados de forma independiente en esta sesión (Ley 27.705 id 380615; DNU 274/2024 id 397577) y tres no: el link dado para "Ley 24.463" (id 25372) corresponde en realidad a la Ley 25.372 (la que incorporó el art. 7 bis a la Ley 24.463, mencionada como nota al pie en su propio texto), no a la Ley 24.463 misma (id correcto: 16102); el link de "Ley 24.241" (id 2764) no coincide con el id confirmado por búsqueda oficial (639); el de "Ley 27.423" (id 305055) difiere en dos dígitos del id confirmado (305057). No se usaron esos links como fuente: todas las citas de este perfil surgen de los IDs verificados de forma independiente vía el conector `infoleg__` contra argentina.gob.ar/normativa.

**Motivo:** incorporar una revisión externa de calidad sin comprometer la regla de integridad normativa. De las tres observaciones, dos procedían con matices (plazo LNPA sí estaba desactualizado; confiscatoriedad ganó respaldo de la CSJN) y una no procedía tal como estaba formulada (UCAP no vence junto con la UPDP, según el texto vigente de la ley). Se corrigió lo que ameritaba corrección y se dejó constancia de por qué no se adoptó el resto, en vez de aceptar la sugerencia sin verificar.

---

### Julio 2026 - Ampliación del perfil previsional (costas/honorarios, convivencia, servicios mixtos, vía administrativa)

**Archivos modificados:**
- `argentina/previsional-CLAUDE.md` - cuatro secciones nuevas a partir de un dictamen de auditor:
  1. **Costas y honorarios:** costas por su orden en el proceso de impugnación (art. 21 Ley 24.463 - "en todos los casos las costas serán por su orden"), por lo que ANSES no afronta el honorario del letrado del actor. Corrección al dictamen: no existe un tope legal del 20% para el pacto de cuota litis en materia previsional. El art. 6 inc. c) de la Ley 27.423 directamente **prohíbe** el pacto de cuota litis en asuntos previsionales; un convenio informal con el mismo efecto es nulo de nulidad absoluta por el art. 5 de la misma ley. El honorario se fija por regulación judicial y lo paga el cliente
  2. **Pensión derivada - prueba de la convivencia:** checklist probatorio (domicilio, información sumaria, servicios, obra social, estado civil del causante) con los plazos legales del art. 53 Ley 24.241: cinco años de convivencia pública en aparente matrimonio, reducidos a dos años si hay descendencia reconocida por ambos convivientes
  3. **Servicios mixtos (dependencia + autónomo) y SICAM:** prorrateo por años de servicio de cada clase (art. 24 inc. c Ley 24.241, remisión reglamentaria), distinto de un promedio informal; referencia operativa al SICAM (AFIP/ARCA + ANSES) para verificar la deuda autónoma antes de dar por computables esos períodos
  4. **Vía administrativa previa - entorno digital de ANSES:** Clave de la Seguridad Social, verificación de aportes en "Mi ANSES", distinción Atención Virtual / turno presencial en UDAI, y conservación del número de trámite como dato de cómputo del nodo bloqueante
  - "Instrucciones operativas específicas" ampliadas con las cuatro reglas (sin cuota litis, checklist de convivencia obligatorio, prorrateo de servicios mixtos, punto de partida digital) y "Estado del escrito" extendido de 8 a 10 ítems (prueba de convivencia y régimen de honorarios advertido)
  - Bucle de fundamentación (rama Previsional): nodo bloqueante propio de pensión derivada (prueba de convivencia) y criterio de salida ampliado (prorrateo de servicios mixtos, honorarios advertidos); conector `infoleg__` sumó Ley 27.423
  - Footer de normativa base y versionado actualizados

**Verificación (InfoLEG, texto actualizado, julio 2026):**
- Art. 21 Ley 24.463 (idNorma 16102): "En todos los casos las costas serán por su orden" - verbatim
- Art. 53 Ley 24.241 (idNorma 639): plazo de convivencia de cinco años, reducido a dos años con descendencia reconocida por ambos convivientes - verbatim
- Art. 24 inc. c) Ley 24.241 (idNorma 639): prorrateo proporcional al tiempo computado para servicios en relación de dependencia y autónomos, sucesivos o simultáneos - verbatim
- Arts. 5 y 6 Ley 27.423 (idNorma 305057): nulidad absoluta de pactos que reduzcan el arancel (art. 5) y prohibición de cuota litis en asuntos previsionales, alimentarios o con intervención de menores con representante legal (art. 6 inc. c) - verbatim
- SICAM (AFIP/ARCA): confirmado como sistema operativo de liquidación de deuda de autónomos y monotributistas vía fuentes públicas (AFIP, CPACF); no es una norma, se referencia como herramienta operativa sin marcador de vigencia normativa

**Corrección al dictamen del auditor:** la nota de trabajo asumía un "límite legal consuetudinario, generalmente el 20% del retroactivo" para el pacto de cuota litis. El texto vigente del art. 6 inc. c) Ley 27.423 no fija un tope: prohíbe directamente el pacto de cuota litis en materia previsional. El 20% que circula en la práctica del fuero es una referencia empírica a la regulación judicial de honorarios, no un porcentaje pactable con el cliente. El perfil quedó corregido en ese punto y advierte contra ofrecer o redactar cuota litis en esta materia.

---

### Junio 2026 - Auditoría y ampliación del perfil previsional

**Archivos modificados:**
- `argentina/previsional-CLAUDE.md` - auditoría contra dictamen de auditor y Boletín de Jurisprudencia CFSS Nro. 82:
  1. Alzada del interior: cerrado el nodo abierto. La apelación de los juzgados federales del interior va a la Cámara Federal de Apelaciones de la jurisdicción respectiva, no a la CFSS (doctrina "Pedraza", CSJN Fallos 337:530, 6/5/2014, inconstitucionalidad del art. 18 Ley 24.463; ratificada por "Constantino" 339:740 y "Giménez Rosa" 344:1788)
  2. Convención Interamericana sobre la Protección de los Derechos Humanos de las Personas Mayores (Ley 27.360, jerarquía constitucional Ley 27.700) y principio de progresividad / no regresividad agregados al fundamento constitucional y supranacional
  3. Ganancias: actualizada la secuencia. Ley 27.617 (2021) / Ley 27.725 (2023, impuesto cedular) / Ley 27.743 (Ley de Bases 2024, art. 75: derogó el cedular y restableció el IG general, deducción específica de 8 haberes mínimos, Decreto 652/2024); "García" sobre el jubilado vulnerable subsiste pretorianamente
  4. Plazos de nodos bloqueantes nombrados: caducidad de la impugnación de 90 días hábiles judiciales (art. 15 Ley 24.463 que remite al art. 25 inc. a Ley 19.549; el silencio de ANSES no hace correr el plazo, doctrina "Biosystem" / "Villarreal Clara"); prescripción bienal de haberes (art. 82 Ley 18.037 por reenvío)
  5. Nuevo sub-módulo de confiscatoriedad por aplicación de topes (art. 9 inc. 3 Ley 24.463; art. 26 Ley 24.241; límite del 15%; línea CFSS "Rapisarda" 6/8/2015 y "Argento" 26/3/2013)
  6. Haber inicial de autónomos: nota sobre el recálculo por categorías (art. 24 inc. b Ley 24.241) con la línea "Makler, Simón"
  - Footer de normativa base actualizado

**Verificación (fuentes oficiales, junio 2026):**
- "Pedraza, Héctor Hugo c/ ANSeS", CSJN, Fallos 337:530, 6/5/2014 (CIJ/CSJN; Acordada 14/2014)
- Ley 27.743 art. 75 (derogación del cedular) y Decreto 652/2024 (Boletín Oficial / InfoLeg)
- Art. 15 Ley 24.463 con remisión al art. 25 inc. a Ley 19.549, 90 días hábiles judiciales (texto de InfoLeg; doctrina "Biosystem" sobre el silencio)
- Convención de las Personas Mayores con jerarquía constitucional por Ley 27.700, confiscatoriedad de topes y "Makler" (Boletín de Jurisprudencia CFSS Nro. 82)

**Corrección al dictamen del auditor:** el plazo de caducidad de la impugnación no surge del "art. 25 de la Ley 24.463" sino del art. 15 de la Ley 24.463 que remite al art. 25 inc. a) de la Ley 19.549 (LNPA). El art. 25 de la Ley 24.463 regula el cumplimiento de sentencias anteriores al 31/12/1995.

**Sin cambios:** `argentina/ejemplos-previsional.md` - auditado y consistente (mecánica de cálculo con marcadores; no requería modificación).

---

### Junio 2026 - Ampliación de jurisprudencia del perfil penal (juvenil, recursos, consumo)

**Archivos modificados:**
- `argentina/penal-DOCTRINA.md` - incorporación de cuatro leading cases verificados contra fuente oficial:
  - Sección nueva 10 (Derecho penal juvenil): CSJN "Maldonado" (Fallos 328:4343, 7/12/2005) -reproche disminuido y fin resocializador de la pena al menor- y Corte IDH "Mendoza y otros (Prisión y reclusión perpetua de adolescentes) vs. Argentina" (Serie C No. 260, 14/5/2013) -inconvencionalidad de la perpetua a menores; deber de no reimponerla, revisar las impuestas y adecuar el régimen-. Son el respaldo del núcleo de la Ley 27.801 (art. 19). Marcador dejado para la jurisprudencia sobre la 27.801 en sí, pendiente hasta su entrada en vigencia
  - Recursos (sección 3): CSJN "Duarte, Felicia" (Fallos 337:901, 5/8/2014) -doble conforme / casación horizontal cuando la condena nace en casación; sigue "Mohamed vs. Argentina" de la Corte IDH; extendido en "P., S. M." (Fallos 342:2389)-. Complementa "Casal"
  - Consumo (sección 2): antecedente "Bazterrica" (Fallos 308:1392, 29/8/1986), precedente que "Arriola" retoma
  - Footer actualizado con la ampliación
- `argentina/penal-CLAUDE.md` - el módulo de derecho penal juvenil ahora remite a la sección 10 del DOCTRINA (Maldonado + Mendoza) como fundamento convencional del art. 19 de la Ley 27.801

**Verificación (fuentes oficiales, junio 2026):**
- "Maldonado, Daniel Enrique y otro", Fallos 328:4343, 7/12/2005 (CSJN / SAIJ)
- Corte IDH "Mendoza y otros vs. Argentina", Serie C No. 260, 14/5/2013 (corteidh.or.cr)
- "Duarte, Felicia s/ recurso de casación", Fallos 337:901, 5/8/2014 (CSJN, Tomo 337; con "P., S. M." Fallos 342:2389)
- "Bazterrica, Gustavo Mario", Fallos 308:1392, 29/8/1986 (citado por el propio "Arriola")

**Motivo:** dotar de respaldo jurisprudencial al módulo juvenil reescrito, que había quedado sin doctrina, y reforzar los módulos de recursos y consumo. Todas las citas verificadas una por una antes de la carga.

---

### Junio 2026 - Auditoría de archivos complementarios de penal (doctrina, ejemplos, escritos)

**Archivos modificados:**
- `argentina/penal-DOCTRINA.md`, `argentina/penal-CLAUDE.md`, `argentina/ejemplos-penal.md`, `argentina/penal/escritos/escritos-penal-SKILL.md`, `argentina/penal/escritos/modelos/excarcelacion-cese-prision-preventiva.md` - corrección de una cita de jurisprudencia propagada en los cinco archivos: reemplazo de "Nánez" (Fallos 327:2403) por "Estévez, José Luis" (Fallos 320:2105, 3/10/1997, causa 33.769) en la sección de prisión preventiva. No se pudo confirmar la carátula ni el tomo:página de "Nánez" en ninguna fuente oficial; el holding atribuido (la libertad es la regla; la denegatoria de excarcelación no puede fundarse en la sola gravedad ni en afirmaciones dogmáticas, sino en la verificación concreta del peligro procesal) corresponde al leading case "Estévez". Corregido en DOCTRINA (sección 5 y footer), CLAUDE.md (prisión preventiva y footer), ejemplos (Caso 3), skill de escritos (reglas de integridad) y modelo de excarcelación (fundamentos y estado del escrito)
- `argentina/penal-DOCTRINA.md` - además, fecha de "Arriola" (Fallos 332:1963) corregida de 5/8/2009 a 25/8/2009 (dos lugares), para alinear con la corrección ya aplicada en penal-CLAUDE.md

**Verificación (fuentes oficiales, junio 2026):**
- "Estévez, José Luis s/ solicitud de excarcelación", Fallos 320:2105, 3/10/1997 (SAIJ y texto del fallo)
- "Arriola", Fallos 332:1963, 25/8/2009 (SAIJ, CSJN, carátula A.891.XLIV)

**Cita de "Nápoli" corregida:** de Fallos 321:3633 a Fallos 321:3630 ("Nápoli, Erika Elizabeth y otros", CSJN, 22/12/1998), en los mismos cinco archivos. Confirmado contra el repositorio del MPD (2015.08 Prisión Preventiva, repositorio.mpd.gov.ar) y la colección oficial de Fallos de la Secretaría de Jurisprudencia de la CSJN.

**Motivo:** auditoría de los archivos complementarios del perfil penal a partir del Código Penal y del CPPF aportados. El resto resultó consistente; los cinco modelos de escritos usan el articulado procesal como placeholder, sin números horneados.

---

### Junio 2026 - Auditoría y corrección del perfil penal (régimen juvenil, prescripción)

**Archivos modificados:**
- `argentina/penal-CLAUDE.md` - auditoría de errores normativos con las siguientes correcciones:
  - Régimen penal juvenil reescrito en clave de transición. La Ley 27.801 (nuevo Régimen Penal Juvenil, BO 9/3/2026) deroga el Decreto-Ley 22.278 y baja la edad de imputabilidad de 16 a 14 años, pero su art. 52 difiere la entrada en vigencia a los 180 días de la publicación (aproximadamente principios de septiembre de 2026). El perfil afirmaba que no había habido reforma. Se reescribió la sección con el régimen saliente (DL 22.278, operativo hasta la vigencia de la 27.801) y el entrante (Ley 27.801: ámbito 14-18, catálogo de penas del art. 12, sustitución del art. 11, tope de 15 años y prohibición de perpetua del art. 19, criterio de oportunidad / mediación / probation de los arts. 41-43, inimputables de los arts. 24-26, especialización, proceso CPPF), más la regla de ley penal más benigna en el tránsito. Texto cotejado contra el Boletín Oficial; alerta normativa agregada en la sección de normas de vigencia variable
  - Art. 62 CP (prescripción) completado: perpetua 15 años; privativas temporales el máximo de la pena con tope 12 y piso 2; inhabilitación perpetua 5, temporal 1; multa 2. Antes consignaba "2 años para multa o inhabilitación" y omitía la perpetua
  - Art. 67 CP actualizado al texto de la Ley 25.990 (2005): los actos interruptivos son taxativos (comisión de otro delito, primer llamado a indagatoria, requerimiento de elevación a juicio, citación a juicio, sentencia condenatoria), no la "secuela de juicio" derogada. Lead jurisprudencial reformulado
  - Fecha de "Arriola" (Fallos 332:1963) corregida de 5/8/2009 a 25/8/2009
  - Libertad condicional: removida la atribución incorrecta de la modificación del art. 13 CP a la Ley 27.375 (esa ley reformó el art. 14 CP y el art. 56 bis Ley 24.660; los 35 años del art. 13 provienen de la Ley 25.892)
  - Citas del CPPF confirmadas contra el texto ordenado (Decreto 118/2019, edición SAIJ aportada por la titular): suspensión del proceso a prueba en el art. 35 (el perfil indicaba "arts. 34 inc. e y 295"; el art. 34 es Conciliación); procedimientos abreviados -acuerdo pleno, parcial y juicio directo- en los arts. 323 a 327 (indicaba "arts. 288 y ss."); actividad procesal defectuosa/nulidades en los arts. 129 a 133 (indicaba "arts. 114 y ss."). Advertencia general de numeración agregada para el resto de las citas del CPPF

**Verificación normativa (Boletín Oficial, junio 2026):**
- Ley 27.801 (Régimen Penal Juvenil) confirmada contra el BO: sancionada 27/2/2026, publicada 9/3/2026, deroga el DL 22.278 (art. 48), imputabilidad desde los 14, máximo de 15 años de privación de libertad y prohibición de perpetua para adolescentes (art. 19), vigencia a los 180 días (art. 52). A junio 2026 sigue operativo el DL 22.278
- Ley 27.799 (Inocencia Fiscal, BO 2/1/2026): se cotejaron los umbrales del régimen penal tributario contra el articulado del BO; el perfil ya los transcribía correctamente (evasión simple $100.000.000; agravada inc. a $1.000.000.000; incs. b y c $200.000.000), más precisos que varias fuentes secundarias que consignaban $800.000.000. Sin cambios en ese módulo

**Motivo:** auditoría de errores del perfil penal. El hallazgo principal -la reforma juvenil dada por inexistente- mostró que el sello "última verificación junio 2026" no garantizaba un barrido completo; corregido y documentado. Los demás son errores de derecho de fondo estable (prescripción) y de cita.

---

### Junio 2026 - Nuevo perfil previsional (SIPA) + ejemplos de reajuste

**Archivos nuevos:**
- `argentina/previsional-CLAUDE.md` - perfil de práctica previsional del régimen general (SIPA) ante el Fuero Federal de la Seguridad Social. Cubre acceso al beneficio, determinación y reajuste del haber inicial, movilidad, retroactivos e intereses, impugnación de denegatorias de ANSES, pensiones derivadas y ejecución de sentencia contra el organismo. Acción insignia: reajuste de haberes (haber inicial + movilidad). Fronteras explícitas anti-duplicación: la PNC por invalidez se deriva a `discapacidad-CLAUDE.md`; el retiro por invalidez del SIPA (art. 48 Ley 24.241) se trata acá, con la pericia ruteada a `especialidades/medicina-legal-CLAUDE.md`. Ganancias sobre el haber como módulo opcional. Secuencia de regímenes de movilidad (24.241 / 26.417 / 27.426 / 27.541 / 27.609 / DNU 274/2024), cada tramo a [VERIFICAR VIGENCIA]; precedentes (Sánchez/Badaro en movilidad, Elliff/Blanco en haber inicial, García en ganancias) nombrados como referencia doctrinal pero citados vía B1 [INSERTAR FALLO VERIFICADO] y con vigencia por B5 [VERIFICAR PRECEDENTE]. Nodo bloqueante doble (habilitación de instancia en denegatorias + prescripción bienal del retroactivo). Sin montos, índices ni tasas horneados: todo a marcador
- `argentina/ejemplos-previsional.md` - casos modelo de liquidación de reajuste, en la línea de `ejemplos-laboral.md`: Ejemplo 1 haber inicial (actualización de remuneraciones, índice administrativo vs. ISBIC judicial, recálculo de PC/PAP), Ejemplo 2 movilidad (recálculo de un tramo mal aplicado + arrastre), Ejemplo 3 retroactivo con corte de prescripción bienal e intereses mensualidad por mensualidad. Montos y coeficientes hipotéticos marcados "(hipotético - verificar)"; valores verificables (índice, tasa, PBU) a marcador canónico. Checklist de rubros por reclamo

**Archivos modificados:**
- `argentina/bucles-SKILL.md` - agregada la rama Previsional (la décima): entregable demanda de reajuste; nodo bloqueante doble (habilitación de instancia + prescripción bienal del retroactivo); criterio de salida por fórmula de movilidad por período (secuencia no intercambiable), índice del haber inicial con criterio del fuero, y precedentes con B5; conectores `infoleg__` / `csjn__` / `saij__` / `pjnjuris__`. El skill pasó de nueve a diez bucles por rama
- `argentina/CLAUDE.md` - routing de área (fila `previsional-CLAUDE.md + ejemplos-previsional.md`) y árbol de estructura con la línea del perfil y del archivo de ejemplos. Además, completado el bloque de ejemplos del árbol que estaba desactualizado: agregadas las líneas de `ejemplos-laboral.md`, `ejemplos-discapacidad.md`, `ejemplos-familia.md` y `ejemplos-penal.md`, que ya existían en el repo pero no figuraban en el árbol
- `argentina/fuentes.md` - nueva combinación recomendada "InfoLeg + CSJN + SAIJ + previsional-CLAUDE.md" para la demanda de reajuste ante el FSS: InfoLeg verifica la fórmula de movilidad de cada período y la Ley 24.463; CSJN aporta la línea de movilidad y de haber inicial; SAIJ y PJN Jurisprudencia la jurisprudencia del fuero (CFSS); la vigencia del precedente de movilidad se verifica a mano (B5)

**Verificación normativa del tramo volátil (Boletín Oficial + resoluciones ANSES + fuentes, junio 2026):**
- Movilidad: el DNU 274/2024 sustituyó el art. 32 de la Ley 24.241 y fijó la movilidad mensual por IPC del INDEC con dos meses de rezago, primera aplicación julio 2024; vigente a junio 2026 (Resol. ANSES 38/2026 y 139/2026). Derogó de hecho la fórmula de la Ley 27.609. No fue ratificado por ley: el artículo del proyecto de Presupuesto 2025 que lo ratificaba no se sancionó, de modo que la movilidad vigente es de fuente reglamentaria, no legal -dato que alimenta la litigiosidad de reajuste-. Registrado en la "Alerta normativa" del perfil con su marcador de verificación
- Acceso sin 30 años de aportes: la moratoria amplia de la Ley 27.705 (Unidad de Pago de Deuda Previsional, para quien ya tiene la edad) venció en marzo 2025 y no fue prorrogada. Sobreviven la UCAP (trabajadores en actividad, capítulo de la misma ley) y la Ley 24.476 (períodos hasta septiembre 1993). PUAM (art. 13 Ley 27.260) como red de contención: 65 años sin distinción de sexo, 80% de la mínima, sin pensión derivada, evaluación socioeconómica. Reconocimiento de aportes por tareas de cuidado (Decreto 475/2021) vigente. El perfil es explícito en no ofrecer la moratoria en cuotas como si siguiera disponible para quien ya cumplió la edad

**Motivo:** incorporar el área previsional -alto volumen, escrito templado de reajuste, adversario único (ANSES), jurisprudencia recurrente- con verificación del tramo volátil (movilidad post-2024 y estado de moratorias) y registro completo en routing, bucle, fuentes y ejemplos, alineado con la regla de integridad (sin montos ni precedentes horneados; todo a marcador). De paso, corregido el árbol de `CLAUDE.md`, que omitía cuatro archivos de ejemplos ya existentes.

---

### Junio 2026 - fuentes.md reescrito hub-centric (mcp-legal-ar) + nuevo skill de bucle de fundamentación

**Archivos nuevos:**
- `argentina/bucles-SKILL.md` - skill de bucle de fundamentación para armar escritos de fondo desde cero (demanda, contestación, recurso, alegato). Distinto de `diagnostico-SKILL.md`, que audita un escrito aportado: bucles arma uno nuevo. Núcleo de diseño: el criterio de salida de un bucle legal es siempre una señal externa (hit de conector contra fuente primaria, checklist completo, verificación aritmética), nunca el juicio del modelo; un bucle bien diseñado produce marcadores honestos, no cierres fabricados, y el "Estado del escrito" es su reporte de salida. Incluye nodo bloqueante antes del fondo (plazo fatal / competencia / agotamiento de la vía), ruteo de fuentes contra `fuentes.md`, y nueve bucles por rama (laboral, civil y daños, contratos, societario/DD, tributario-TFN, administrativo, penal, familia, concursos) con entregable + criterio de salida verificable + conectores del hub + marcadores típicos de hueco. Marca el límite de vigencia del precedente (citados/citantes no implementado en ningún conector). Usa los marcadores del glosario, incluido el nuevo B5 [VERIFICAR PRECEDENTE]

**Archivos modificados:**
- `argentina/fuentes.md` - reescrito hub-centric: la capa de conectores pasa a ser el hub `mcp-legal-ar` (instalación única, 14 conectores con su prefijo de tool: `bora__`, `bopba__`, `infoleg__`, `normativapba__`, `juba__`, `ptn__`, `tfn__`, `scba__`, `pjn__`, `saij__`, `pjnjuris__`, `portalpjn__`, `juscaba__`, `csjn__`), reemplazando el catálogo de conectores sueltos de la comunidad. Motivo del reemplazo documentado: el hub reúne y reensambla esos mismos conectores (voftec, FacundoEmanuel, Joaquín Escalante) más desarrollos propios (Portal PJN, JusCABA, CSJN, reescrituras de PJN), y los repos originales de voftec están despublicados, con lo que las URLs sueltas que el archivo listaba quedaron en riesgo de link muerto. Tabla de decisión re-cableada a las tools del hub. Secciones nuevas: "Ruteo por pieza de demanda" (mapea cada parte del escrito a su tool, con regla de ruteo-no-contenido) y "Verificación de vigencia - dos cosas distintas" (separa vigencia de la norma, que el hub resuelve, de vigencia del precedente, que no). Conservadas: fuentes primarias oficiales, marcador de discrepancia, combinaciones. Crédito de los conectores de la comunidad movido a nota final con remisión a `THIRD_PARTY_NOTICES.md` del hub. Instalación delegada al README del hub (se eliminó la boilerplate de las tres vías URL/uvx/npx). Backup del original conservado como `fuentes.OLD.md`
- `argentina/CLAUDE.md` - puntero a `fuentes.md` reforzado: ahora remite también al ruteo por pieza de demanda y a la verificación de vigencia de norma y de precedente, no solo a "conectores de fuentes primarias". Routing de área con la fila de `bucles-SKILL.md` (armar/fundamentar escrito de fondo desde cero) y árbol de estructura con la línea del nuevo skill
- `argentina/marcadores-GLOSARIO.md` - nueva entrada canónica B5 · VERIFICAR PRECEDENTE (vigencia del precedente: confirmar que no fue dejado sin efecto ni superado; verificación manual, citados/citantes no implementado en el hub). Distinta de B1 (sin fallo verificado) y B4 (holding verificado, cita formal pendiente). Versión 1.3
- `README.md` (raíz) - en el Paso 4 (flujo de Project en Claude.ai), nota de que los archivos transversales referenciados por `CLAUDE.md` (`fuentes.md`, `bucles-SKILL.md`, `marcadores-GLOSARIO.md`, `diagnostico-SKILL.md`, `plazos-SKILL.md`) deben subirse como conocimiento del Project: en un Project no hay acceso al disco y los punteros no resuelven solos. Además, sección "Conectores MCP" alineada al hub: MCP LEGAL AR pasa de 11 a 14 conectores (agregados CSJN, JusCABA y Portal PJN, reagrupados en Normativa / Jurisprudencia / Organismos / Expedientes y gestión) y los conectores de la comunidad reencuadrados como alternativas opcionales (el hub ya cubre SAIJ/CSJN/JusCABA con implementación propia)

**Motivo:** unificar la capa de conectores en el hub `mcp-legal-ar` -una sola instalación, mantenida y viva, frente a conectores sueltos de repos despublicados- y dar al armado de escritos de fondo un bucle con criterio de salida verificable, alineado con la regla de integridad: el bucle cierra con marcadores honestos cuando no puede anclar una pieza, nunca rellenando con conocimiento del modelo.

---

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
