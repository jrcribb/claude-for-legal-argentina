---
name: escritos-previsional
description: Redacta escritos previsionales argentinos ante el Fuero Federal de la Seguridad Social (demanda de reajuste de haberes - haber inicial y/o movilidad -, demanda de impugnación judicial de denegatoria de ANSES, demanda de pensión derivada por conviviente). Activar ante cualquier pedido de redacción de un escrito previsional, aunque el usuario no nombre el modelo. Trabaja junto con el perfil previsional-CLAUDE.md y los casos de liquidación de ejemplos-previsional.md.
---

# Escritos de derecho previsional

> Parte del repositorio claude-for-legal-argentina.
> Autor: Dr. Cristian Aboitiz · [@abogadoaboitiz](https://x.com/abogadoaboitiz)

---

## Descripción

Redacta escritos previsionales para abogados matriculados. El abogado firma y asume la
responsabilidad profesional de cada pieza. Este skill redacta; el abogado revisa y decide.
Opera siempre junto con el perfil `previsional-CLAUDE.md`, que aporta la lógica de fondo
(fueros, institutos, plazos de caducidad, control de topes, marcadores), y con
`ejemplos-previsional.md`, que aporta la mecánica de liquidación (haber inicial, movilidad,
retroactivo e intereses) que estos modelos remiten a completar en la sección de liquidación.

---

## Cuándo usar

Activar cuando el usuario pida redactar o preparar un escrito previsional: demanda de
reajuste de haberes (haber inicial, movilidad, o ambos), demanda de impugnación judicial de
una denegatoria de ANSES (otorgamiento, reajuste, retiro por invalidez), o demanda de pensión
derivada por conviviente. No es necesario que nombre el modelo.

No activar:
- Para el solo análisis estratégico o de viabilidad sin redacción: alcanza
  `previsional-CLAUDE.md`.
- Para la liquidación numérica del retroactivo sin redactar el escrito: usar directamente
  `ejemplos-previsional.md`.
- Para la acreditación médica de una incapacidad o pericia: derivar a
  `especialidades/medicina-legal-CLAUDE.md`.
- Para PNC por invalidez: es una prestación no contributiva con vía propia; derivar a
  `discapacidad-CLAUDE.md`.
- Para reclamos contra cajas provinciales o de profesionales no transferidas al SIPA: el
  fuero y la normativa aplicable son otros; alcanza con marcar
  `[REVISIÓN NORMATIVA REQUERIDA: normativa y fuero provincial aplicable]` y no forzar el
  modelo federal.

---

## Proceso

### Paso 1 - Encuadre y datos

Antes de redactar, definir con el usuario (si falta rama, tipo y jurisdicción, preguntarlos):

- Fuero y competencia: Juzgados Federales de Primera Instancia de la Seguridad Social (CABA),
  con alzada en la Cámara Federal de la Seguridad Social (CFSS); o juzgado federal con
  competencia previsional del interior, con alzada en la Cámara Federal de Apelaciones de la
  jurisdicción respectiva (no la CFSS), por la doctrina "Pedraza" (CSJN, Fallos 337:530).
- Reclamo identificado: haber inicial, movilidad, ambos, impugnación de denegatoria, o pensión
  derivada. Cada uno tiene un modelo distinto (ver Paso 3); no mezclar la estructura de uno
  con el objeto de otro.
- Fecha de adquisición del beneficio (o de fallecimiento del causante, en pensión derivada):
  determina qué normas de cálculo del haber y qué fórmulas de movilidad rigen. Sin esa fecha,
  no se puede fijar el derecho aplicable.
- Material disponible: historia previsional, resoluciones de ANSES (otorgamiento,
  denegatoria), recibos de haberes, partidas. Sin material, los hechos van con marcador; no
  se asumen.

### Paso 2 - Verificación normativa (no opcional)

Antes de incluir cualquier cita, leer la sección `## Alerta normativa - normas de vigencia
variable` de `previsional-CLAUDE.md` y aplicar sus reglas. Puntos críticos:

- Control de topes antes de cualquier planteo de confiscatoriedad: distinguir el tope de la
  base imponible de aportes (art. 9, segundo párrafo, Ley 24.241), el tope del haber máximo
  (art. 9 Ley 24.463, con su escala de deducciones del inc. 2) y el tope propio de la
  prestación compensatoria (art. 26 Ley 24.241, un MOPRE -ex AMPO- por año de servicios). Son
  tres figuras distintas; no atribuir a una el texto o el fundamento de otra.
- Plazo de impugnación de denegatoria: 90 días hábiles judiciales si el acto fue notificado
  antes del 9/7/2024, 180 días si fue notificado desde esa fecha (art. 15 Ley 24.463 + art. 25
  inc. a Ley 19.549, reformado por Ley 27.742). No citar el art. 25 de la Ley 24.463 como
  fuente de ese plazo: regula el cumplimiento de sentencias contra ANSES hasta el 31/12/1995,
  no la caducidad de la impugnación.
- Prescripción bienal del retroactivo: cada mensualidad prescribe en forma independiente desde
  que fue exigible. La acción de reajuste en sí no prescribe.
- Índice del haber inicial: ISBIC (línea "Elliff", Fallos 332:1914; "Blanco", Fallos 341:1924)
  contra el índice administrativo que aplica ANSES.
- Confiscatoriedad: quita superior al 15% ("Actis Caporale", Fallos 323:4216; "Tudor", Fallos
  327:3251). No asumir sin verificar que esa misma doctrina se extiende al tope del art. 26
  Ley 24.241: no está confirmado un precedente propio para esa figura.
- Costas por su orden (art. 21 Ley 24.463) y prohibición absoluta de cuota litis en materia
  previsional (art. 6 inc. c Ley 27.423): advertir siempre al cliente antes de tomar el caso.
- Reserva sobre Ganancias: en demandas de reajuste o de impugnación con retroactivo, si el
  cliente está en situación de vulnerabilidad por edad o enfermedad, incluir en el petitorio
  la reserva de que ANSES no retenga Impuesto a las Ganancias sobre el retroactivo, con
  fundamento en "García, María Isabel c/ AFIP" (CSJN, Fallos 342:411, 26/3/2019, verificado
  vía conector CSJN). No asumir la vulnerabilidad sin evaluarla con el cliente.
- Constancia del trámite e interrupción de plazos: la fecha de inicio del reclamo o recurso
  administrativo no solo permite computar después el plazo de la denegatoria o del silencio;
  también interrumpe la caducidad y la prescripción (art. 1° bis, inc. i, Ley 19.549, texto
  Ley 27.742), aunque el trámite hubiera sido mal calificado o presentado ante órgano
  incompetente. Documentarla siempre desde la primera entrevista.
- Herramientas ante la demora de ANSES: amparo por mora (art. 28 Ley 19.549, texto sustituido
  por el art. 47 de la Ley 27.742) para apurar una resolución expresa; denuncia de ilegitimidad
  (art. 1° bis, inc. h, Ley 19.549, texto Ley 27.742) si un recurso se presentó fuera de plazo,
  sujeta a que el órgano decida tratarlo así y a que no hayan pasado más de 180 días desde la
  notificación del acto.
- No citar "Biosystem"/"Villarreal Clara" con la cita "Fallos 337:1044": verificada contra el
  conector CSJN por carátula, texto libre y tomo/página, no arrojó resultado. La doctrina se
  nombra sin cita cerrada hasta contar con expediente, sala y Fallos verificados.
- Bono/refuerzo previsional excluido de la base de movilidad: es un argumento en desarrollo,
  no doctrina consolidada. No se verificó precedente de la CSJN ni de la CFSS. Si se incluye
  en un escrito, presentarlo como planteo autónomo de inconstitucionalidad, no como aplicación
  de un fallo.
- Cuatro vías, no intercambiables: impugnación judicial de denegatoria (plazo de caducidad
  fatal), amparo por mora (apremio sin plazo fatal para el interesado), denuncia de
  ilegitimidad (reactivación de un recurso tardío, a criterio del órgano) y prescripción del
  retroactivo (corte de cobro). Ver el cuadro comparativo en `previsional-CLAUDE.md`, sección
  "Impugnación de denegatoria de beneficio", antes de redactar cualquiera de las cuatro.
- Tasa de interés por Sala, no por "el fuero" en general: la CFSS tiene Salas I, II y III, y
  no hay garantía de un criterio uniforme entre ellas. Identificar la sala interviniente antes
  de fijar la tasa, tanto al calcular el retroactivo como al practicar la liquidación de
  sentencia (la tasa vigente al momento de liquidar puede no coincidir con la que regía al
  dictarse la sentencia de fondo).
- SICAM: antes de tramitar una moratoria o una liquidación de deuda autónoma, validar que los
  datos personales del afiliado (CUIT/CUIL, nombre, fecha de nacimiento) sean consistentes
  entre el DNI, ARCA y ANSES. Es la causa práctica más frecuente de que el trámite se trabe;
  se subsana en UDAI, no es un punto normativo sino operativo.

### Paso 3 - Elegir el modelo

Leer el modelo que corresponda y redactar sobre su estructura:

| Situación | Modelo |
|---|---|
| Reajuste de haber inicial (índice de actualización), de movilidad (fórmula por tramo), o ambos, con o sin planteo de confiscatoriedad por topes | `modelos/demanda-reajuste-haberes.md` |
| ANSES denegó el otorgamiento, el reajuste o el retiro por invalidez y hay que impugnar judicialmente esa resolución | `modelos/demanda-impugnacion-denegatoria.md` |
| Pensión por fallecimiento reclamada por conviviente sin matrimonio, con o sin denegatoria previa de ANSES | `modelos/demanda-pension-derivada.md` |

Para la liquidación numérica del retroactivo (haber inicial, movilidad, corte de prescripción,
intereses) dentro de cualquiera de los tres modelos: seguir la mecánica de
`ejemplos-previsional.md` y completar sus tablas con los datos reales del caso, sin arrastrar
los valores hipotéticos de esos ejemplos.

---

## Reglas de integridad (inmodificables)

- Jurisprudencia: prohibido citar carátula, sala, año o expediente sin material aportado o sin
  verificación vía conector. Los precedentes con cita cerrada en `previsional-CLAUDE.md`
  ("Elliff", "Blanco", "Actis Caporale", "Tudor") pueden invocarse verificando el texto íntegro
  contra la fuente oficial antes de transcribir. Para el resto: `[INSERTAR FALLO VERIFICADO:
  doctrina requerida - aportar expediente, sala, fuero y año]`. Todo precedente lleva además
  `[VERIFICAR PRECEDENTE]` (B5) para confirmar que sigue vigente al momento de citarlo.
- Hechos: no asumir nada que no figure en el material. Usar
  `[VACÍO PROBATORIO: descripción]`.
- Normas: en la primera mención, `[VERIFICAR VIGENCIA]`. Si se sabe modificada o derogada,
  informarlo y proponer la vigente (caso testigo: no usar "art. 79 Ley 24.241" para el tope
  del haber máximo, derogado desde 2016 por art. 35 Ley 27.260; el tope vigente es el art. 9
  Ley 24.463).
- Montos: `[VERIFICAR MONTO ACTUALIZADO: concepto - fuente]`. Tasa de interés del retroactivo:
  `[VERIFICAR TASA VIGENTE: fuero federal de la seguridad social - criterio de la CFSS/CSJN al
  período]`.

---

## Restricciones absolutas

- No confundir el tope del haber máximo (art. 9 Ley 24.463) con el tope de la prestación
  compensatoria (art. 26 Ley 24.241): son normas distintas, con textos distintos y quitas
  distintas.
- No citar el art. 25 de la Ley 24.463 como fuente del plazo de caducidad de la impugnación:
  regula otra cosa (cumplimiento de sentencias pre-31/12/1995).
- No usar el art. 79 de la Ley 24.241 para el tope del haber máximo: está derogado desde 2016.
- No prometer una jubilación ordinaria por moratoria sin verificar que los períodos
  disponibles completan los 30 años, atento al vencimiento de la UPDP (Ley 27.705) en marzo
  de 2025.
- No ofrecer ni redactar un pacto de cuota litis en materia previsional: está prohibido, no
  limitado a un porcentaje (art. 6 inc. c Ley 27.423).
- No omitir la alerta del plazo de caducidad de la impugnación ni de la prescripción bienal
  del retroactivo antes de analizar el fondo de cualquier reclamo.

---

## Racionalizaciones comunes

| Racionalización | Realidad |
|---|---|
| "El tope de la Ley 24.241 y el de la Ley 24.463 son la misma cosa" | Son dos figuras distintas: el art. 26 Ley 24.241 fija el haber máximo de la prestación compensatoria en un MOPRE por año de servicio; el art. 9 Ley 24.463 fija el tope general al haber máximo con su escala de deducciones. |
| "El plazo para impugnar la denegatoria está en el art. 25 Ley 24.463" | Ese artículo regula el cumplimiento de sentencias contra ANSES hasta el 31/12/1995. El plazo de impugnación sale del art. 15 Ley 24.463 en remisión al art. 25 inc. a) Ley 19.549, hoy 90 o 180 días según la reforma de la Ley 27.742. |
| "Si ANSES no contestó, ya está: hay silencio positivo" | El silencio positivo general de la Ley 27.742 (Decreto 971/2024) no se superpone automáticamente con la doctrina específica del fuero sobre el silencio de ANSES en el reclamo de reajuste. Verificar si el trámite está en el Anexo II del decreto antes de invocarlo. |
| "Con el 20% de cuota litis se cubre el riesgo del caso" | No hay tope de cuota litis en previsional: está prohibida cualquier proporción (art. 6 inc. c Ley 27.423). El honorario se fija por regulación judicial en UMA. |
| "La moratoria sigue permitiendo jubilarse sin los 30 años" | La UPDP (Ley 27.705) venció en marzo de 2025 y no fue prorrogada. Sobreviven la UCAP, la Ley 24.476 (hasta septiembre de 1993) y el reconocimiento de tareas de cuidado, pero para muchos casos ya no alcanzan a completar los 30 años. |
| "El bono está excluido de la movilidad, así que directamente se declara inconstitucional" | Es un argumento razonable a partir del art. 14 bis CN, pero no hay precedente de la CSJN ni de la CFSS que lo haya resuelto. Presentarlo como planteo autónomo, no como aplicación de doctrina asentada. |
| "Ya tengo la cita de 'Biosystem', Fallos 337:1044" | Verificada contra el conector CSJN por carátula, texto libre y tomo/página: no arrojó resultado. No usar esa cita hasta contar con el fallo real. |

---

## Señales de alerta

Indicadores de que el borrador está mal antes de entregarlo:

- Fundar la confiscatoriedad de un tope sin haber identificado primero cuál de las tres
  figuras (base imponible, haber máximo, prestación compensatoria) fue la que ANSES aplicó.
- Citar "art. 25 Ley 24.463" o "art. 79 Ley 24.241" para institutos que no regulan.
- Redactar una demanda de impugnación sin calcular ni alertar el plazo de caducidad según la
  fecha de notificación del acto (90 o 180 días).
- Liquidar un retroactivo sin cortar por la prescripción bienal, o sin separar las tres capas
  (haber inicial, movilidad, intereses).
- Redactar una pensión derivada sin el checklist de prueba de convivencia (domicilio,
  información sumaria, servicios, obra social) por el plazo legal correspondiente.
- Citar un fallo con carátula y Fallos sin material ni verificación, fuera de los precedentes
  ya anclados en `previsional-CLAUDE.md`.
- Insinuar, mencionar o redactar un pacto de cuota litis.

---

## Verificación al cierre

Antes de entregar el borrador:

- [ ] Fuero y competencia determinados (CFSS o alzada del interior según "Pedraza")
- [ ] Reclamo identificado (haber inicial / movilidad / ambos / impugnación / pensión derivada)
- [ ] Fecha de adquisición del beneficio o de fallecimiento del causante consignada
- [ ] Sección de alerta normativa de `previsional-CLAUDE.md` consultada (Paso 2)
- [ ] Modelo correspondiente leído (Paso 3)
- [ ] Control de topes hecho antes de cualquier planteo de confiscatoriedad (los tres, no dos)
- [ ] Nodo bloqueante resuelto: habilitación de instancia y plazo de caducidad, si corresponde
- [ ] Prescripción bienal del retroactivo calculada
- [ ] Liquidación remitida a la mecánica de `ejemplos-previsional.md` con datos reales del caso
- [ ] Costas por su orden y prohibición de cuota litis advertidas al cliente
- [ ] Reserva sobre Ganancias evaluada (situación de vulnerabilidad del cliente) - incluida o
      descartada expresamente, no omitida sin evaluar
- [ ] Tasa de interés identificada por Sala interviniente de la CFSS, no por "el fuero" en
      general - tanto para el retroactivo como, llegado el caso, para la liquidación de
      sentencia
- [ ] SICAM: si hay tramo autónomo, datos personales (CUIT/CUIL, nombre, fecha de nacimiento)
      validados como consistentes entre DNI, ARCA y ANSES antes de tramitar la deuda
- [ ] Marcadores de integridad colocados (fallos, hechos, normas, montos, tasas)
- [ ] Cierre con "Estado del escrito"

---

*Última actualización: julio 2026*
*Normativa base: art. 14 bis CN; Ley 24.241 (SIJP, arts. 9, 17, 24, 26, 48, 53); Ley 24.463
(Solidaridad Previsional, arts. 15, 21); Ley 19.549 (LNPA, art. 25 inc. a y art. 1° bis incs.
h e i, reformados por Ley 27.742; art. 28, texto sustituido por art. 47 Ley 27.742); Ley 27.705
(Plan de Pago de Deuda Previsional); Ley 27.423 (honorarios, art. 6 inc. c); Ley 20.628
(Impuesto a las Ganancias, arts. 23 inc. c, 79 inc. c, 81, 90); Ganancias sobre haber
previsional: "García, María Isabel c/ AFIP" (Fallos 342:411, 26/3/2019);
CPCCN (Ley 17.454); competencia de alzada del interior: "Pedraza" (Fallos 337:530); haber
inicial: "Elliff" (Fallos 332:1914), "Blanco" (Fallos 341:1924); confiscatoriedad de topes:
"Actis Caporale" (Fallos 323:4216), "Tudor" (Fallos 327:3251). Perfil de fondo en
previsional-CLAUDE.md; liquidaciones en ejemplos-previsional.md.*
