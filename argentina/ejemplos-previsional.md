# Ejemplos de liquidación previsional - Derecho argentino

> Archivo complementario de `previsional-CLAUDE.md`.
> Cargar junto con el perfil previsional en las instrucciones del Project.
> Los montos, índices y coeficientes son orientativos y tienen fecha. El índice de actualización de remuneraciones, las fórmulas de movilidad de cada período, la tasa de interés del fuero y los montos oficiales (PBU, haber mínimo) deben verificarse contra el hub antes de aplicar en cada caso.

---

## Advertencia de uso

Estas liquidaciones son estructura de cálculo y checklist de rubros, no referencia de montos actuales. Cambian con frecuencia y deben verificarse en cada caso:

- Índice de actualización de las remuneraciones del haber inicial: ANSES aplica uno administrativo; la jurisprudencia de la CSJN fijó el ISBIC, más favorable. La diferencia es el núcleo del reclamo de haber inicial. Verificar el criterio vigente del fuero y de la Corte a la fecha del cálculo.
- Fórmula de movilidad por período: la secuencia de regímenes (Ley 24.241 / 26.417 / 27.426 / 27.541 / 27.609 / DNU 274/2024) no es intercambiable. Identificar qué fórmula rigió cada tramo reclamado.
- PBU, haber mínimo y máximo: se fijan por resolución ANSES y se actualizan mensualmente.
- Tasa de interés de los retroactivos: la fija la jurisprudencia del fuero y se modifica.
- Prescripción de los haberes devengados: confirmar la norma y el plazo aplicables antes de cortar el retroactivo.

Los valores con la marca "(hipotético - verificar)" están solo para mostrar la mecánica del cálculo.

---

## Mecánica del reajuste - leer antes de cualquier liquidación

El reajuste de haberes combina hasta dos reclamos. Determinar cuál sostiene el caso antes de calcular:

1. **Redeterminación del haber inicial:** el haber se calculó mal de origen, por aplicar a las remuneraciones históricas un índice de actualización inferior al que corresponde. Impacta el haber desde el día uno y se arrastra.
2. **Recálculo de la movilidad:** la actualización del haber a lo largo del tiempo aplicó, en uno o más tramos, una fórmula que arrojó menos de lo debido.

Pueden ir juntos o por separado. El haber inicial recalculado es la base sobre la que después se aplica la movilidad: si se reclaman ambos, primero se redetermina el inicial y sobre ese se corre la movilidad correcta.

La fecha de adquisición del beneficio determina qué normas de cálculo del haber y qué fórmulas de movilidad rigen. Identificarla antes de cualquier rubro.

---

## Ejemplo 1 - Reajuste del haber inicial (actualización de remuneraciones)

**Datos del caso:**
- Afiliado jubilado por la Ley 24.241 (régimen general). Fecha de adquisición del beneficio: hipotética, a consignar con la resolución de otorgamiento.
- 35 años de servicios con aportes. Servicios anteriores a julio de 1994: 9 años (generan PC). Servicios posteriores: 26 años (generan PAP).
- Promedio de las remuneraciones de los últimos 10 años (120 meses), sin actualizar: $300.000 (hipotético - verificar con la historia previsional).
- ANSES actualizó ese promedio por su índice administrativo y arribó a un promedio actualizado de $900.000 (hipotético).
- El reclamo pide actualizar por el índice ISBIC (línea "Elliff" / "Blanco"), que arroja un promedio actualizado mayor: $1.200.000 (hipotético).

**El núcleo del caso:** la diferencia entre el promedio actualizado por el índice administrativo y por el índice judicial. Todo lo demás es aritmética sobre esa base.

**Paso 1 - Determinar el promedio de remuneraciones actualizado**

| Concepto | Valor |
|---|---|
| Promedio sin actualizar (120 meses) | $300.000 (hipotético) |
| Promedio actualizado por índice ANSES | $900.000 (hipotético) |
| Promedio actualizado por ISBIC reclamado | $1.200.000 (hipotético) |

```
[VACÍO PROBATORIO: remuneraciones históricas del afiliado - aportar historia previsional completa para reconstruir el promedio]
[VERIFICAR CRITERIO DEL FUERO: índice de actualización de remuneraciones del haber inicial - CFSS / CSJN a la fecha del cálculo]
```

**Paso 2 - Recalcular las prestaciones del haber inicial**

El haber inicial se integra con PBU + PC + PAP. La PC y la PAP se calculan como un porcentaje por año de servicio sobre el promedio actualizado (1,5% por año, arts. 24 y 30 Ley 24.241 [VERIFICAR VIGENCIA]). La PBU es un monto fijo que se actualiza por resolución.

| Prestación | Fórmula | Con promedio ANSES ($900.000) | Con promedio ISBIC ($1.200.000) |
|---|---|---|---|
| PBU (monto fijo) | Valor de la PBU a la fecha de adquisición | [VERIFICAR MONTO ACTUALIZADO: PBU - resolución ANSES a la fecha de adquisición] | (mismo valor de PBU) |
| PC (9 años pre-7/1994) | 1,5% x 9 x promedio | $121.500 (hipotético) | $162.000 (hipotético) |
| PAP (26 años post-7/1994) | 1,5% x 26 x promedio | $351.000 (hipotético) | $468.000 (hipotético) |
| **Haber inicial (sin PBU)** | PC + PAP | **$472.500** | **$630.000** |

A cada columna se le suma la PBU (igual en ambas) para obtener el haber inicial total.

**Paso 3 - Diferencia mensual del haber inicial**

| Concepto | Valor |
|---|---|
| Haber inicial recalculado (ISBIC) | $630.000 + PBU |
| Haber inicial liquidado por ANSES | $472.500 + PBU |
| **Diferencia mensual de origen** | **$157.500 (hipotético)** |

Esta diferencia es la del día de adquisición. Para llevarla al presente hay que aplicarle la movilidad de cada período transcurrido (ver Ejemplo 2): la diferencia crece con cada aumento.

**Notas:**
- El reclamo de haber inicial no discute la movilidad; discute la base. Pero el retroactivo se calcula moviendo la diferencia de origen por la movilidad de cada año hasta hoy.
- La doctrina que sostiene la actualización por ISBIC se identifica con "Elliff" y "Blanco". En el escrito:
```
[INSERTAR FALLO VERIFICADO: CSJN - actualización de remuneraciones del haber inicial por ISBIC - aportar carátula, Fallos y año]
[VERIFICAR PRECEDENTE: línea "Elliff" / "Blanco" - confirmar que no fue dejada sin efecto ni superada antes de citar]
```
- Si el afiliado percibe el haber mínimo garantizado, parte del reajuste puede quedar absorbida por el mínimo. Verificar el impacto antes de proyectar el resultado.

---

## Ejemplo 2 - Reajuste por movilidad (recálculo de un tramo mal aplicado)

**Datos del caso:**
- Beneficiario con haber en curso de pago. Se reclama que en un período determinado la movilidad aplicada fue inferior a la que correspondía.
- Haber al inicio del tramo reclamado: $500.000 (hipotético).
- En el tramo reclamado, ANSES aplicó aumentos acumulados del 40% (hipotético). El reclamo sostiene que, por la fórmula o el criterio que correspondía a ese período, el ajuste debió ser del 60% (hipotético).

**Paso 1 - Identificar la fórmula de cada período del tramo**

La movilidad no es una sola: cada lapso tiene su norma. Antes de calcular, mapear el tramo reclamado contra la secuencia de regímenes y empalmar.

```
[REVISIÓN NORMATIVA REQUERIDA: identificar la fórmula de movilidad vigente en cada período del tramo reclamado y empalmar los tramos]
```

**Paso 2 - Recalcular el haber del tramo**

| Concepto | Valor |
|---|---|
| Haber al inicio del tramo | $500.000 (hipotético) |
| Haber con movilidad aplicada por ANSES (+40%) | $700.000 (hipotético) |
| Haber con movilidad reclamada (+60%) | $800.000 (hipotético) |
| **Diferencia mensual al cierre del tramo** | **$100.000 (hipotético)** |

**Paso 3 - Arrastre**

La diferencia no es de un solo mes: una vez que el haber quedó mal ajustado, todos los meses posteriores se liquidan sobre una base menor. La diferencia se arrastra y, además, los aumentos siguientes se aplican sobre el haber correcto (mayor), ampliando la brecha.

**Notas:**
- La movilidad es el caso típico de doctrina superada por norma o fallo posterior. La línea "Sánchez" / "Badaro" se nombra como referencia, pero la cita y su vigencia van por marcador:
```
[INSERTAR FALLO VERIFICADO: CSJN - garantía de movilidad y confiscatoriedad por movilidad insuficiente - aportar carátula, Fallos y año]
[VERIFICAR PRECEDENTE: línea "Sánchez" / "Badaro" - confirmar que no fue dejada sin efecto ni superada antes de citar]
```
- En el período de la Ley 27.541 (emergencia, suspensión de la fórmula y aumentos por decreto) y en el tramo de empalme del DNU 274/2024, la diferencia entre lo otorgado y lo que habría arrojado la fórmula anterior es uno de los focos de reclamo. Verificar la norma de cada mes.

---

## Ejemplo 3 - Retroactivo, corte de prescripción e intereses

Reconocida la diferencia mensual (de haber inicial, de movilidad, o ambas), el retroactivo es la suma de todas las diferencias devengadas, con su corte de prescripción y sus intereses.

**Datos del caso:**
- Diferencia mensual reconocida: variable mes a mes (crece con la movilidad). Para el ejemplo, promedio simplificado de $120.000 mensuales (hipotético).
- El beneficio se adquirió hace 6 años. El reclamo se interpone hoy.

**Paso 1 - Determinar el universo de diferencias devengadas**

Una diferencia por cada mes desde la adquisición del beneficio hasta la sentencia. En el ejemplo: 72 meses devengados.

**Paso 2 - Aplicar el corte de prescripción bienal**

Las diferencias devengadas más allá del plazo de prescripción bienal, contado desde el hito que lo corta, no se cobran. La acción de reajuste no prescribe (el estado de jubilado es permanente); lo que prescribe es el cobro de cada mensualidad devengada fuera del bienio.

```
[REVISIÓN NORMATIVA REQUERIDA: norma, plazo y hito de cómputo de la prescripción de los haberes devengados - confirmar artículo vigente antes de cortar el retroactivo]
[ALERTA PLAZO FATAL: prescripción de haberes devengados - cómputo bienal por mensualidad - calcular el corte del retroactivo por período]
```

Esquema del corte (con el bienio a modo ilustrativo; confirmar el hito real):

| Tramo | Mensualidades | Estado |
|---|---|---|
| Diferencias dentro del bienio anterior al reclamo | 24 meses (hipotético) | Se cobran |
| Diferencias anteriores al bienio | 48 meses (hipotético) | Prescriptas - no se cobran |

**Paso 3 - Liquidar el retroactivo no prescripto**

| Concepto | Cálculo | Resultado |
|---|---|---|
| Diferencias no prescriptas | $120.000 x 24 meses (hipotético) | $2.880.000 (hipotético) |
| Intereses sobre cada diferencia | desde la exigibilidad de cada mensualidad hasta el pago, a la tasa del fuero | [CALCULAR con la tasa marcada] |

```
[VERIFICAR TASA VIGENTE: fuero federal de la seguridad social - criterio de la CFSS / CSJN al período]
```

**Notas:**
- El interés se calcula mensualidad por mensualidad desde que cada una fue exigible, no en bloque desde el reclamo. Cada diferencia tiene su propio período de devengamiento de intereses.
- El monto reclamado en la demanda se compone de tres capas: diferencia de origen (haber inicial) + arrastre por movilidad + intereses. Mantenerlas separadas en la liquidación facilita la ejecución.
- La sentencia se ejecuta contra ANSES bajo el régimen de la Ley 24.463, con sus particularidades de pago y previsión presupuestaria. Verificar el procedimiento de ejecución vigente.
```
[REVISIÓN NORMATIVA REQUERIDA: régimen de ejecución y pago de sentencias previsionales contra ANSES - Ley 24.463 y normas presupuestarias vigentes]
```

---

## Checklist de rubros - liquidación de reajuste

Usar como control antes de cerrar cualquier liquidación. Marcar cada ítem: aplica / no aplica / a verificar.

**PRIMER PASO OBLIGATORIO: identificar la fecha de adquisición del beneficio. Determina las normas de cálculo del haber y las fórmulas de movilidad aplicables.**

**Definición del reclamo:**
- [ ] ¿Se reclama haber inicial, movilidad, o ambos?
- [ ] Nodo bloqueante resuelto: habilitación de instancia (si hay denegatoria) y prescripción del retroactivo, antes del fondo.

**Haber inicial (si se reclama):**
- [ ] Historia previsional completa aportada (remuneraciones históricas)
- [ ] Promedio de las remuneraciones reconstruido
- [ ] Índice de actualización: criterio del fuero marcado (administrativo vs. ISBIC judicial)
- [ ] PBU verificada a la fecha de adquisición
- [ ] PC y PAP recalculadas sobre el promedio actualizado
- [ ] Diferencia mensual de origen determinada
- [ ] Precedente de haber inicial con marcador de vigencia (B5)

**Movilidad (si se reclama):**
- [ ] Tramo reclamado mapeado contra la secuencia de regímenes
- [ ] Fórmula de cada período identificada y verificada
- [ ] Haber recalculado por tramo
- [ ] Arrastre computado (la diferencia se traslada a los meses siguientes)
- [ ] Precedente de movilidad con marcador de vigencia (B5)

**Retroactivo e intereses:**
- [ ] Universo de diferencias devengadas determinado (mes a mes)
- [ ] Corte de prescripción aplicado (norma e hito confirmados)
- [ ] Diferencias no prescriptas liquidadas
- [ ] Intereses calculados mensualidad por mensualidad, con la tasa del fuero marcada
- [ ] Las tres capas (haber inicial / movilidad / intereses) separadas en la liquidación

**Verificaciones obligatorias antes de cerrar:**
- [ ] Fecha de adquisición del beneficio consignada
- [ ] Haber mínimo garantizado: verificar si absorbe parte del reajuste
- [ ] Régimen de ejecución contra ANSES (Ley 24.463) verificado
- [ ] Ningún monto, índice, coeficiente ni tasa citado sin marcador de verificación

---

*Última actualización: junio 2026*
*Los montos, índices y coeficientes de estos ejemplos son orientativos e hipotéticos. Verificar el índice de actualización del haber inicial (criterio del fuero), las fórmulas de movilidad de cada período, la PBU, el haber mínimo y la tasa de interés antes de usar en cada caso concreto.*
*Normativa base: art. 14 bis CN; Ley 24.241 (SIJP), Ley 24.463 (Solidaridad Previsional), Ley 26.417, leyes y DNU de movilidad (secuencia 24.241 / 26.417 / 27.426 / 27.541 / 27.609 / DNU 274/2024)*
*Autor: Dr. Cristian Aboitiz · [@abogadoaboitiz](https://x.com/abogadoaboitiz)*
