# bucles · Skill de bucle de fundamentación

> Skill reutilizable. Se activa al armar o fundamentar desde cero un escrito de
> fondo (demanda, contestación, recurso, alegato). Distinto de diagnostico-SKILL,
> que opera sobre un escrito ya aportado. Se apoya en fuentes.md para el ruteo de
> fuentes y en marcadores-GLOSARIO.md para los marcadores y el cierre.

---

## Función

Estructurar el armado de un escrito de fondo como un bucle con criterio de salida
verificable. No produce el escrito de una pasada: itera sobre sus piezas - hechos,
prueba, derecho, jurisprudencia, petitorio - hasta que cada una está anclada en
fuente verificada o lleva el marcador que dice qué falta para anclarla.

El skill no reemplaza al perfil de área: lo usa. La sustancia jurídica de cada rama
sale del perfil cargado (laboral-CLAUDE.md, civil-CLAUDE.md, etc.); este skill
aporta la disciplina del bucle y el criterio de cierre.

---

## Por qué un bucle legal no es un bucle de código

El problema de verificación. En un bucle de código el criterio de salida es objetivo
y externo al modelo: el test pasa o falla solo. En derecho la corrección sustantiva
no la puede autoevaluar el modelo - por eso existe el sistema de marcadores. De ahí
la regla central:

El criterio de salida de un bucle legal nunca es "el modelo juzga que terminó".
Siempre es una señal externa:

- un hit de conector contra fuente primaria (la norma o el fallo existe y dice lo
  que se le atribuye),
- un checklist completo (todas las piezas obligatorias del tipo de escrito presentes),
- una verificación aritmética (un cómputo de plazo, un cálculo de quantum).

Un bucle bien diseñado produce marcadores honestos, no cierres fabricados. Si una
pieza no se puede anclar, el bucle no "completa el hueco" con conocimiento del
modelo: emite el marcador canónico y sigue. El "Estado del escrito" es el reporte de
salida del bucle. Un escrito que cierra con marcadores pendientes es un bucle que
terminó bien - reportó lo que falta -, no uno que falló. El bucle falla cuando cierra
un hueco inventando el dato.

---

## Criterio de salida - general

El bucle cierra cuando, para cada afirmación normativa, fáctica o jurisprudencial del
escrito, se cumple una de dos:

1. está anclada en fuente verificada (conector contra fuente primaria, o material
   aportado por el abogado en la sesión), o
2. lleva el marcador canónico que dice qué falta para anclarla.

No cierra mientras quede una afirmación sin una cosa ni la otra. El último paso antes
de declarar cerrado el bucle es la autoverificación interna del CLAUDE.md: recorrer
cada norma, cifra y cita del texto producido y, ante cualquier dato no anclado,
aplicar el protocolo ante alucinación normativa - eliminar la cita, insertar el
marcador, continuar.

---

## Nodo bloqueante - antes del fondo

Antes de iterar sobre el fondo, resolver lo que puede volverlo inoficioso. Si el nodo
bloqueante cierra la vía, no tiene sentido fundamentar el resto.

- Plazo fatal: si la acción está sujeta a caducidad o prescripción, correr
  plazos-SKILL y emitir el marcador de plazo fatal antes de fundamentar. Si venció,
  el fondo es inoficioso.
- Competencia y fuero: ante duda, resolver antes. No asumir equivalencia CPCCN /
  CPCCBA ni CPPN / CPPF / CPPBA, ni equiparar jurisprudencia entre fueros.
- Agotamiento de la vía (administrativo): nodo bloqueante propio de esa rama; va antes
  del fondo.

Estos nodos se reportan al inicio del análisis, no al final.

---

## Ruteo de fuentes

Cada pieza se rutea a su fuente según la tabla "Ruteo por pieza de demanda" de
fuentes.md. Regla, repetida porque es la que se viola sola: la instrucción dice dónde
buscar; el contenido lo trae el conector verificado, nunca el modelo. Si el conector
no trae el dato, va el marcador, no una afirmación.

---

## El bucle por rama

Cada rama define su entregable, su criterio de salida verificable, los conectores del
hub que alimentan la fundamentación, y los marcadores típicos de hueco. Los conectores
se nombran por su prefijo de tool; el detalle está en fuentes.md.

### Laboral

- Entregable: demanda o liquidación.
- Nodo bloqueante: prescripción art. 258 LCT (2 años, por crédito).
- Criterio de salida: art. 245 LCT resuelto por el régimen que corresponde a la fecha
  del acto extintivo - los tres regímenes no son intercambiables (ver
  laboral-CLAUDE.md); tope del CCT verificado o marcado; cada rubro con su norma
  vigente post Ley 27.742 / Ley 27.802; intereses con la tasa del fuero marcada.
- Conectores: `infoleg__` (LCT, Ley 27.742, Ley 27.802), `juba__` y `pjnjuris__`
  (jurisprudencia del fuero), `saij__`.
- Marcadores típicos: `[VERIFICAR MONTO ACTUALIZADO: tope art. 245 - CCT, promedio
  INDEC]`, `[VERIFICAR CCT APLICABLE: actividad del empleador - dato que falta]`,
  `[VERIFICAR TASA VIGENTE: CNAT - acta vigente al período]`, `[VACÍO PROBATORIO:
  fecha de ingreso real / remuneración real - aportar recibos o testigos]`.

### Civil y daños

- Entregable: demanda de daños.
- Nodo bloqueante: prescripción (art. 2561 CCCN y concordantes según el daño).
- Criterio de salida: cada rubro con la norma del CCCN que lo habilita; nexo causal
  acreditado o marcado; cuantificación con el criterio del fuero marcado.
- Conectores: `infoleg__` (CCCN, ley especial), `juba__` / `pjnjuris__` / `csjn__`,
  `saij__`.
- Marcadores típicos: `[ARG SIN NORMA: paráfrasis - norma que correspondería]`,
  `[VACÍO PROBATORIO: nexo causal / entidad del daño - prueba necesaria]`,
  `[VERIFICAR CRITERIO DEL FUERO: fórmula de cuantificación de incapacidad - sala]`,
  `[VERIFICAR TASA VIGENTE: fuero - acordada]`.

### Revisión de contratos

- Entregable: informe de red-flags. Este bucle ya está codificado en el CLAUDE.md
  general ("Regla de disparo - revisión de contratos"); el skill solo lo encuadra
  como loop.
- Criterio de salida: los seis pasos del análisis corridos, todas las cláusulas
  pasadas por los red-flags, cada norma citada con verificación de vigencia.
- Conectores: `infoleg__` (CCCN, LDC).
- Marcadores típicos: `[RED FLAG - NULIDAD ABSOLUTA: ...]`, `[RED FLAG - RIESGO ALTO:
  ...]`, `[RED FLAG - RIESGO MEDIO: ...]`.

### Societario / due diligence

- Entregable: informe de due diligence.
- Criterio de salida: checklist de DD completo (constitución, autoridades vigentes,
  objeto, gravámenes, cumplimiento registral); cada punto verificado contra el BORA o
  marcado.
- Conectores: `bora__` (acto constitutivo y modificaciones, sociedades), `infoleg__`
  (LGS), `saij__`.
- Marcadores típicos: `[VERIFICAR RESOLUCIÓN REGISTRAL VIGENTE: IGJ / DPPJ - materia]`,
  `[VACÍO PROBATORIO: documento societario - aportar]`.

### Tributario (TFN)

- Entregable: recurso ante el TFN.
- Nodo bloqueante: plazo para recurrir; competencia del TFN por monto.
- Criterio de salida: norma tributaria vigente con alícuotas y montos marcados (no
  citados de memoria); antecedentes del TFN sobre el instituto traídos por conector;
  competencia por monto verificada o marcada.
- Conectores: `infoleg__` (Ley 11.683, ley del tributo), `tfn__`, `csjn__` (doctrina
  tributaria de la Corte).
- Marcadores típicos: `[VERIFICAR MONTO ACTUALIZADO: alícuotas y montos - RG ARCA
  vigente]`, `[VERIFICAR MONTO ACTUALIZADO: monto mínimo TFN - ley o decreto vigente]`,
  `[INSERTAR FALLO VERIFICADO: TFN - sala, doctrina requerida]`.

### Administrativo

- Entregable: recurso administrativo o demanda contencioso administrativa.
- Nodo bloqueante (doble): agotamiento de la vía + plazo de caducidad (art. 25 LNPA
  nacional; norma local según jurisdicción). Va antes del fondo, sin excepción.
- Criterio de salida: vía agotada acreditada o marcada; plazo no vencido; acto
  impugnado aportado o marcado; cada agravio con su norma.
- Conectores: `infoleg__` (LNPA, Ley 26.944), `ptn__` (dictámenes), `saij__` /
  `pjnjuris__`.
- Marcadores típicos: `[ALERTA PLAZO FATAL: art. 25 LNPA - 90 días hábiles judiciales
  - notificación del acto que agota la vía - vencimiento: calcular]`, `[VACÍO
  PROBATORIO: acto administrativo impugnado - aportar copia del acto]`.

### Penal

- Entregable: escrito o planteo penal.
- Criterio de salida: precisión hora a hora - el equivalente más cercano a un test
  duro en derecho. Plazos del código procesal de la jurisdicción correcta computados;
  cada instituto con el artículo del código que rige (no asumir CPPN = CPPF = CPPBA).
- Conectores: `infoleg__` (CP, CPPF / código procesal local), `pjnjuris__` / `csjn__`.
- Marcadores típicos: `[VERIFICAR PLAZO: acto procesal - código de la jurisdicción]`,
  `[REVISIÓN NORMATIVA REQUERIDA: artículo del código procesal local]`.

### Familia

- Entregable: demanda de familia.
- Nodo bloqueante: competencia por centro de vida.
- Criterio de salida: cada pretensión con su norma del CCCN; base de cuantificación de
  alimentos acreditada o marcada.
- Conectores: `infoleg__` (CCCN), `juba__` / `pjnjuris__` / `saij__`.
- Marcadores típicos: `[VACÍO PROBATORIO: ingresos del alimentante - aportar]`,
  `[ARG SIN NORMA: paráfrasis - norma que correspondería]`.

### Concursos

- Entregable: pedido de verificación o escrito concursal.
- Nodo bloqueante: tempestividad (plazo de verificación).
- Criterio de salida: plazos concursales computados; checklist de recaudos; cada
  crédito con causa y monto acreditados.
- Conectores: `infoleg__` (LCQ, Ley 24.522), `pjnjuris__` / `csjn__`.
- Marcadores típicos: `[ALERTA PLAZO FATAL: plazo de verificación tempestiva - LCQ -
  fecha límite del edicto - vencimiento: calcular]`, `[VACÍO PROBATORIO: causa y monto
  del crédito - aportar]`.

### Previsional

- Entregable: demanda de reajuste de haberes ante el Fuero Federal de la Seguridad
  Social (haber inicial, movilidad, o ambos).
- Nodo bloqueante (doble): habilitación de instancia en la impugnación de denegatorias
  (reclamo administrativo previo + plazo de impugnación de la resolución de ANSES) y
  prescripción bienal de los haberes devengados en los reajustes. La acción de reajuste
  no prescribe; lo que prescribe es el cobro del retroactivo más allá del bienio. Va
  antes del fondo.
- Criterio de salida: fórmula de movilidad identificada y verificada por cada período
  reclamado - la secuencia de regímenes (24.241 / 26.417 / 27.426 / 27.541 / 27.609 /
  DNU 274/2024) no es intercambiable (ver previsional-CLAUDE.md); índice de
  actualización de remuneraciones del haber inicial con el criterio del fuero marcado
  (administrativo vs. ISBIC judicial); retroactivo con el corte de prescripción
  calculado; intereses con la tasa del fuero marcada; precedentes de movilidad y de
  haber inicial con marcador de vigencia (B5), porque la doctrina de movilidad se supera
  por norma o fallo posterior.
- Conectores: `infoleg__` (Ley 24.241, Ley 24.463, Ley 26.417, leyes y DNU de
  movilidad), `csjn__` (línea de movilidad y haber inicial), `saij__`, `pjnjuris__`
  (jurisprudencia del fuero).
- Marcadores típicos: `[REVISIÓN NORMATIVA REQUERIDA: fórmula de movilidad por cada
  período reclamado]`, `[VERIFICAR CRITERIO DEL FUERO: índice de actualización del haber
  inicial - CFSS / CSJN a la fecha]`, `[VERIFICAR TASA VIGENTE: fuero federal de la
  seguridad social - criterio de la CFSS / CSJN al período]`, `[VERIFICAR PRECEDENTE:
  línea "Sánchez" / "Badaro" o "Elliff" / "Blanco" - confirmar que no fue dejada sin
  efecto ni superada antes de citar]`, `[VACÍO PROBATORIO: historia previsional /
  resoluciones / recibos - aportar]`.

---

## Vigencia del precedente - límite del bucle

Ningún conector del hub confirma si un fallo citado sigue siendo buen derecho (citados
/ citantes no implementado). El bucle puede traer el precedente y verificar su holding,
pero no que no haya sido dejado sin efecto o superado. Esa verificación es manual.
Mientras no esté hecha, el precedente lleva:

```
[VERIFICAR PRECEDENTE: "carátula" o Fallos T:P - confirmar que no fue dejado sin efecto ni superado antes de citar]
```

Es el marcador B5 del glosario (vigencia del precedente, verificación manual).

---

## Integración con otros skills y perfiles

- Perfil de área: el bucle corre con el perfil cargado. Si no hay perfil de la rama,
  opera con el CLAUDE.md general y marca `[SIN PERFIL DE ÁREA CARGADO]`.
- diagnostico-SKILL: es el bucle inverso. Diagnóstico audita un escrito aportado;
  bucles arma uno desde cero. Si el abogado aporta un borrador y pide completarlo,
  correr diagnóstico primero, después bucles sobre lo que quede abierto.
- plazos-SKILL: es el nodo bloqueante de plazo de varias ramas. El cómputo lo hace
  plazos-SKILL; el bucle solo lo invoca antes del fondo.

---

## Interacción con la regla de integridad

Las reglas de citación del CLAUDE.md general no pueden suspenderse desde este skill. Si
el bucle no puede anclar una pieza, el cierre correcto es el marcador, no el relleno.
Si el abogado pide "cerrar el hueco" inventando el dato, el sistema informa que no
puede y ofrece el escrito con el marcador en su lugar. Un bucle que cierra inventando
no terminó: falló.

---

## Cierre del bucle - Estado del escrito

El bucle cierra con el "Estado del escrito" del CLAUDE.md general, que es su reporte de
salida:

1. Marcadores pendientes: dato concreto que falta para resolver cada uno.
2. Normas con [VERIFICAR VIGENCIA]: listado.
3. Decisiones estructurales por defecto.
4. Si no hay items en alguna categoría: "Ninguno".

---

*Última actualización: junio 2026*
*Autor: Dr. Cristian Aboitiz · [@abogadoaboitiz](https://x.com/abogadoaboitiz)*
