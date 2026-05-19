# Skill · Cómputo de plazos procesales · Derecho argentino

> Archivo de skill para el sistema claude-for-legal Argentina.
> Complementa los perfiles de área con lógica específica de cómputo de plazos.
> Activación: cargar en el Project junto con el perfil de área correspondiente,
> o invocar directamente con el comando `/argentina:plazos`.
>
> Repo: https://github.com/cristianaboitiz-eng/claude-for-legal-argentina

---

## Alcance de esta skill

Esta skill computa plazos procesales y administrativos bajo derecho argentino. Cubre:

- Plazos en días hábiles judiciales (notificaciones, traslados, vistas, recursos)
- Plazos en días hábiles administrativos (recursos y reclamos ante la Administración)
- Plazos en días corridos (civiles y comerciales, locaciones, contratos)
- Plazos en meses o años (prescripción, caducidad, plazos sustantivos)
- Suspensiones por feria judicial ordinaria y extraordinaria
- Suspensiones por mediación y SECLO
- Alertas de plazo fatal según el marcador A10 del glosario

No calcula plazos tributarios ante AFIP/ARCA ni plazos aduaneros: esos regímenes tienen días hábiles administrativos propios que cambian por resolución general con frecuencia. Ante una consulta tributaria de plazos, emitir `[REVISIÓN NORMATIVA REQUERIDA: plazo ante AFIP/ARCA - verificar RG vigente]`.

---

## Configuración inicial - completar antes de usar

**FUERO:**
Indicar el fuero donde tramita la causa. El fuero determina el calendario de días inhábiles
y el código procesal aplicable.

Opciones principales:
- `FUERO: CPCCN - fuero nacional civil (CABA)`
- `FUERO: CPCCN - fuero nacional comercial (CABA)`
- `FUERO: CPCCN - fuero nacional del trabajo (CABA) - Ley 18.345`
- `FUERO: CPCCN - fuero contencioso administrativo federal (CABA)`
- `FUERO: CPCCBA - civil y comercial PBA - [departamento judicial]`
- `FUERO: Ley 11.653 - laboral PBA - [departamento judicial]`
- `FUERO: CCAyT CABA - contencioso administrativo local`
- `FUERO: LNPA - procedimiento administrativo nacional`

Si el fuero no está indicado: preguntar antes de calcular. Los calendarios de inhábiles
no son intercambiables entre fueros.

**TIPO_PLAZO:**
Indicar si el plazo es judicial, administrativo, o sustantivo (de fondo).

---

## Reglas de cómputo por tipo de plazo

### Días hábiles judiciales

**Norma base:**
- CPCCN: art. 156 - los plazos se cuentan por días hábiles judiciales, salvo norma expresa en contrario [VERIFICAR VIGENCIA]
- CPCCBA: art. 153 - ídem [VERIFICAR VIGENCIA]
- Ley 18.345 (laboral nacional): arts. 39-40 - plazos en días hábiles judiciales [VERIFICAR VIGENCIA]

**Regla de inicio:**
El plazo comienza a correr al día hábil siguiente al de la notificación (art. 156 CPCCN / art. 153 CPCCBA). El día de la notificación no cuenta.

**Regla de vencimiento:**
Si el último día del plazo es inhábil, el vencimiento se traslada al primer día hábil siguiente (art. 156 in fine CPCCN).

**Días inhábiles judiciales:**
- Sábados, domingos y feriados nacionales
- Días no laborables de alcance nacional o local según decreto
- Feria judicial de enero (primera y segunda quincena según año) y feria judicial de julio (primera quincena), salvo habilitación expresa
- Días de asueto judicial dispuestos por acordada de Cámara o Corte Suprema

**Alerta operativa:**
Los inhábiles por asueto, duelo oficial o feria extraordinaria son dispuestos por acordadas que pueden no estar cargadas en este perfil. Antes de confirmar un vencimiento, verificar si la Cámara o la CSJN dispuso algún inhábil en el período comprendido.

```
[VERIFICAR VIGENCIA: inhábiles judiciales del período - acordadas CSJN y Cámara competente]
```

### Días hábiles administrativos

**Norma base:**
- LNPA (Ley 19.549): art. 1 inc. e - los plazos se cuentan en días hábiles administrativos [VERIFICAR VIGENCIA]
- Decreto 1759/72 (RLNPA): arts. 25-28 [VERIFICAR VIGENCIA]
- CCAyT CABA (Ley 189): art. 79 [VERIFICAR VIGENCIA]

**Diferencia clave con los judiciales:**
Los días hábiles administrativos son los días en que funciona la Administración. Pueden diferir de los hábiles judiciales: algunos decretos declaran asueto administrativo sin afectar el calendario judicial, y viceversa. No asumir equivalencia automática.

**Regla de inicio:**
El plazo corre desde el día siguiente hábil administrativo al de la notificación del acto.

**Regla de vencimiento:**
Si el último día es inhábil administrativo, el vencimiento se traslada al primer día hábil administrativo siguiente.

### Días corridos

**Norma base:**
- CCCN: art. 6 - los plazos en días son de días completos y continuos; el cómputo se inicia al día siguiente [VERIFICAR VIGENCIA]
- CPCCN: art. 155 - las partes pueden acordar plazos en días corridos; también se computan así los plazos fijados en días sin calificación en algunos contratos [VERIFICAR VIGENCIA]

**Regla de inicio:**
El día del hecho o notificación no cuenta. El cómputo empieza al día siguiente, sea hábil o inhábil.

**Regla de vencimiento:**
No hay traslado por vencimiento en día inhábil, salvo disposición expresa de la norma que establece el plazo.

**Excepción relevante:**
Plazos procesales del CPCCN fijados en días: son hábiles judiciales salvo que la norma diga "días corridos". Verificar la norma habilitante antes de clasificar el plazo.

### Plazos en meses o años

**Norma base:**
- CCCN: arts. 6-7 - los plazos de meses o años se computan de fecha a fecha; si el mes de vencimiento no tiene el día equivalente, vence el último día de ese mes [VERIFICAR VIGENCIA]

**Regla de inicio:**
El plazo corre desde el día del hecho o acto generador, salvo disposición expresa en contrario.

**Regla de vencimiento:**
El vencimiento opera a la medianoche del día que corresponde, sin traslado automático por día inhábil, salvo norma que lo prevea expresamente.

**Prescripción y caducidad:**
Ver sección "Plazos fatales y prescripción" más adelante.

---

## Ferias judiciales y suspensiones

### Feria judicial ordinaria - fueros nacionales (CABA)

Los plazos procesales que corren ante los fueros nacionales se suspenden durante las ferias judiciales, salvo habilitación de feria por el juzgado.

**Feria de enero:**
Dispuesta anualmente por acordada de la CSJN. Históricamente comprende las dos primeras semanas de enero, pero la fecha exacta varía cada año.
```
[VERIFICAR VIGENCIA: fechas exactas de feria judicial de enero - acordada CSJN del año en curso]
```

**Feria de julio:**
Históricamente la primera quincena de julio, con variaciones anuales.
```
[VERIFICAR VIGENCIA: fechas exactas de feria judicial de julio - acordada CSJN del año en curso]
```

**Habilitación de feria:**
Durante la feria, los plazos están suspendidos. Si hay urgencia, el litigante puede pedir habilitación al juzgado de turno. La habilitación no es automática.

### Feria judicial ordinaria - PBA

Las ferias del fuero provincial son dispuestas por acordadas de la SCBA. Las fechas no coinciden necesariamente con las del fuero nacional.
```
[VERIFICAR VIGENCIA: fechas exactas de feria judicial - acordada SCBA del año en curso]
```

### Suspensión por mediación prejudicial (CPCCN)

- La presentación de la mediación prejudicial suspende el plazo de prescripción (art. 18 Ley 26.589) [VERIFICAR VIGENCIA]
- La suspensión dura hasta 20 días desde que el mediador expide el acta de cierre o desde que se notifica el desistimiento
- Regla operativa: computar siempre los días de suspensión por mediación al calcular prescripción en el fuero civil o comercial nacional

### Suspensión por SECLO (fuero laboral nacional)

- La presentación ante el SECLO suspende la prescripción (art. 7 Ley 24.635) [VERIFICAR VIGENCIA]
- La suspensión se extiende hasta 30 días después de notificada la clausura del procedimiento conciliatorio
- Regla operativa: verificar fecha de presentación ante SECLO y fecha del acta de cierre antes de calcular prescripción laboral

---

## Plazos fatales y prescripción - tabla de referencia rápida

Esta tabla es orientativa. Antes de aconsejar sobre prescripción, verificar el plazo aplicable
al caso concreto con la norma vigente y emitir el marcador A10 del glosario.

| Materia | Plazo | Norma | Inicio del cómputo |
|---|---|---|---|
| Prescripción genérica civil | 5 años | Art. 2560 CCCN | Desde que puede ejercerse la acción |
| Daños civiles y accidentes de tránsito | 3 años | Art. 2561 CCCN | Desde el hecho dañoso |
| Acción directa contra asegurador (Ley 17.418) | 1 año | Art. 58 Ley 17.418 | Verificar inicio según tipo de acción |
| Acción de nulidad relativa | 2 años | Art. 2562 CCCN | Desde que el vicio fue conocido o pudo conocerse |
| Prescripción laboral (LCT) | 2 años | Art. 256 LCT | Desde que cada crédito fue exigible |
| Responsabilidad del Estado nacional | 3 años | Art. 7 Ley 26.944 | Desde que el daño fue conocido |
| Recurso contencioso administrativo federal (demanda) | 90 días hábiles judiciales | Art. 25 LNPA | Desde notificación del acto que agota la vía |
| Amparo federal | 15 días hábiles | Art. 2 inc. e Ley 16.986 | Desde el acto u omisión lesiva |
| Amparo CABA | 90 días | Art. 6 Ley 2145 CABA | Desde el acto u omisión lesiva |
| Recurso de apelación (CPCCN) | 5 días hábiles | Art. 244 CPCCN | Desde la notificación de la sentencia |
| Recurso de apelación (CPCCBA) | 5 días hábiles | Art. 244 CPCCBA | Desde la notificación de la sentencia |
| Recurso de apelación laboral (Ley 18.345) | 6 días hábiles | Art. 116 Ley 18.345 | Desde la notificación de la sentencia |
| Contestación de demanda laboral nacional | 10 días hábiles | Art. 71 Ley 18.345 | Desde la notificación de la demanda |
| Recurso extraordinario federal | 10 días hábiles | Art. 257 CPCCN | Desde la notificación del fallo |
| Queja por denegación del REF | 5 días hábiles | Art. 285 CPCCN | Desde la notificación de la denegatoria |

**Nota sobre todos los plazos de esta tabla:**
Los plazos normativos están sujetos a modificación. Verificar la norma vigente antes de aconsejar.
Los plazos procesales dependen además de la acordada del tribunal y del calendario de inhábiles del período.

---

## Protocolo de cómputo

Ante cualquier consulta de plazo, el sistema sigue estos pasos en orden:

**Paso 1 - Identificar fuero y tipo de plazo.**
Si no están indicados, preguntar antes de calcular. Los errores de fuero en el cómputo son fatales.

**Paso 2 - Emitir alerta si el plazo es fatal.**
Si el plazo cuyo vencimiento cierra la vía, emitir antes de cualquier cálculo:
```
[ALERTA PLAZO FATAL: norma - plazo - fecha de inicio del cómputo - vencimiento estimado]
```

**Paso 3 - Identificar la fecha de inicio.**
Precisar el hecho o acto que dispara el cómputo (notificación, hecho dañoso, extinción del contrato, etc.). Si la fecha exacta no está en el material, emitir:
```
[VACÍO PROBATORIO: fecha de inicio del cómputo - aportar constancia de notificación o fecha del hecho]
```

**Paso 4 - Identificar y descontar inhábiles.**
Listar los inhábiles del período (feriados, ferias, asuetos conocidos). Para ferias del año en curso, siempre agregar la alerta de verificación de acordada.

**Paso 5 - Calcular el vencimiento.**
Indicar:
- Fecha de inicio del plazo (día siguiente al hecho o notificación)
- Días inhábiles descontados (con detalle de cuáles)
- Fecha de vencimiento

**Paso 6 - Verificar traslado por inhábil.**
Si el día de vencimiento calculado es inhábil, indicar el traslado al primer hábil siguiente.

**Paso 7 - Agregar alertas de verificación.**
Para cualquier inhábil del período que pueda haber sido dispuesto por acordada posterior a la fecha de actualización de este perfil:
```
[VERIFICAR VIGENCIA: inhábiles del período - acordadas CSJN / Cámara competente]
```

---

## Formato de output del cómputo

El sistema entrega el cómputo en el siguiente formato estándar:

```
CÓMPUTO DE PLAZO

Fuero: [fuero]
Tipo de plazo: [días hábiles judiciales / días hábiles administrativos / días corridos / meses / años]
Norma: [norma que fija el plazo] [VERIFICAR VIGENCIA]
Evento que dispara el cómputo: [descripción]
Fecha del evento: [fecha]
Inicio del cómputo: [día siguiente hábil al evento, o fecha de inicio según la norma]

Días corridos del período: [N]
Inhábiles descontados:
- [fecha]: [motivo]
- [fecha]: [motivo]
[VERIFICAR VIGENCIA: inhábiles del período - acordadas del fuero]

Días hábiles computados: [N]
Fecha de vencimiento: [fecha]
¿El día de vencimiento es hábil?: [sí / no - traslado a: fecha]

[ALERTA PLAZO FATAL: norma - plazo - fecha de inicio - vencimiento: fecha] (si aplica)
```

Si hay suspensiones (mediación, SECLO, feria), se detallan con sus propias fechas
de inicio y fin dentro del mismo bloque.

---

## Integración con el marcador A10 del glosario

Esta skill es la herramienta de implementación del marcador A10 definido en
`argentina/marcadores-GLOSARIO.md`. Todo cómputo que involucre un plazo cuyo
vencimiento cierra definitivamente la vía activa el marcador A10 antes del cálculo,
siguiendo la sintaxis canónica:

```
[ALERTA PLAZO FATAL: norma - plazo - fecha de inicio del cómputo - vencimiento estimado]
```

El marcador va antes del desarrollo del cómputo, no al final.

---

## Interacción con otros perfiles del sistema

Esta skill lee la configuración de fuero del CLAUDE.md personalizado del abogado.
Si el CLAUDE.md indica `FUERO_HABITUAL`, lo usa como fuero por defecto sin preguntar.

Interacción por área:

- **civil-CLAUDE.md:** plazos de prescripción del CCCN, plazos procesales CPCCN/CPCCBA,
  suspensión por mediación prejudicial. En daños civiles, verificar siempre plazo de
  prescripción de 3 años desde el hecho (art. 2561 CCCN) antes de analizar el fondo.

- **laboral-CLAUDE.md:** prescripción bienal del art. 256 LCT (crédito a crédito),
  suspensión por SECLO, plazo de contestación de demanda (10 días hábiles). Verificar
  siempre el estado del SECLO antes de computar prescripción laboral.

- **administrativo-CLAUDE.md:** plazo de 90 días hábiles judiciales del art. 25 LNPA
  para la demanda contencioso administrativa. Es el plazo de caducidad más crítico de
  ese fuero. La regla operativa de ese perfil ya lo alerta; esta skill provee el cómputo.

- **penal-CLAUDE.md:** plazos de prescripción de la acción penal (CP) y plazos
  procesales del CPPN o código provincial según fuero.

- **familia-CLAUDE.md:** plazos específicos del CCCN (alimentos, filiación, adopción).

---

## Alertas normativas de esta skill

*Última verificación de esta sección: mayo 2026. Actualizar cuando cambie alguna de las normas.*

### Inhábiles del año en curso

Los feriados nacionales fijos (1° de enero, 24 de marzo, 2 de abril, 25 de mayo,
20 de junio, 9 de julio, 17 de agosto, 12 de octubre, 20 de noviembre, 8 de diciembre,
25 de diciembre) son conocidos. Los feriados "puente" son declarados por decreto
anualmente y no están consolidados en este perfil.

```
[VERIFICAR VIGENCIA: feriados puente del año en curso - decretos del PEN]
```

### Ferias judiciales del año en curso

Las fechas exactas de feria de enero y julio son acordadas por la CSJN (fueros nacionales)
o por la SCBA (PBA) cada año. No están consolidadas en este perfil.

```
[VERIFICAR VIGENCIA: fechas de feria judicial - acordada CSJN o SCBA del año en curso]
```

### DNU 70/2023 y plazos laborales

El DNU 70/2023 modificó algunos plazos de la LCT. El estado judicial de esas modificaciones
puede estar en disputa al momento de la consulta. Ante cualquier cómputo de plazo laboral,
agregar la alerta del laboral-CLAUDE.md sobre este DNU.

---

## Instrucciones operativas específicas - plazos

- Nunca calcular un plazo sin identificar fuero y tipo de plazo primero.
- Nunca asumir que los inhábiles judiciales y administrativos coinciden.
- Nunca asumir que el calendario del fuero nacional y el provincial coinciden.
- Para cualquier plazo del año en curso: emitir alerta de verificación de feriados
  puente y ferias judiciales.
- Para plazos fatales: emitir marcador A10 antes del cálculo, no después.
- Si la fecha de notificación no está en el material: emitir B3 y no calcular vencimiento
  hasta que el abogado la aporte. Un cómputo sin fecha de inicio es un dato inútil o peor.
- Prescripción: calcular crédito a crédito en materia laboral. No usar un único punto
  de inicio para todos los rubros.
- Si el plazo ya venció o está a menos de 5 días de vencer: indicarlo en negrita como
  primera línea del output, antes del detalle del cómputo.

---

*Última actualización: mayo 2026*
*Normativa base: CPCCN (Ley 17.454), CPCCBA (Ley 7425), Ley 18.345, Ley 19.549 (LNPA),
CCCN (Ley 26.994), Ley 26.589 (mediación), Ley 24.635 (SECLO), Ley 16.986 (amparo federal),
Ley 2145 CABA (amparo local)*
*Autor: archivo generado para https://github.com/cristianaboitiz-eng/claude-for-legal-argentina*
*Basado en la arquitectura del repo de Dr. Cristian Aboitiz · [@abogadoaboitiz](https://x.com/abogadoaboitiz)*
