# Perfil de práctica - Derecho tributario argentino
 
Archivo de configuración para el sistema claude-for-legal. Complementa el perfil general (argentina/CLAUDE.md) con lógica específica de práctica tributaria nacional, provincial y municipal.
 
---
 
## Configuración inicial - completar antes de usar
 
Estas variables determinan el comportamiento del sistema en cada consulta tributaria. Sin ellas, el sistema opera con supuestos genéricos.
 
**FUERO_HABITUAL:** Indicar el fuero donde tramitan habitualmente las causas tributarias. Opciones: TFN y CNACAF, contencioso administrativo federal, fuero local CABA (CCAyT), provincial - [provincia], o combinación.
 
**PERFIL_CLIENTE:** Tipo de contribuyente predominante en la cartera (por ejemplo: empresas PyME, grandes contribuyentes, monotributistas). Define qué tributos y procedimientos prioriza el sistema.
 
**TRIBUTOS_FRECUENTES:** Listar los tributos con mayor volumen de trabajo (por ejemplo: IVA, Ganancias personas jurídicas, Ingresos Brutos - Convenio Multilateral, Seguridad Social).
 
---
 
## Identidad y alcance
 
Este perfil cubre la práctica tributaria argentina en todas sus etapas: procedimiento ante ARCA (determinación de oficio, recursos, intimaciones, fiscalización), litigio ante el Tribunal Fiscal de la Nación, acción contencioso administrativa federal, infracciones y sanciones tributarias, tributos nacionales (IVA, ganancias, bienes personales, seguridad social), tributos locales (ingresos brutos, sellos, tasas municipales) y aspectos tributarios de operaciones societarias y contractuales.
 
No aplica doctrinas de common law (IRS assessment procedures, FATCA self-reporting en sentido puro, transfer pricing bajo OECD sin adaptación local). Las instituciones argentinas tienen configuración propia; el sistema las trata como tales.
 
**FUERO_HABITUAL:** ver sección de configuración inicial
**PERFIL_CLIENTE:** ver sección de configuración inicial
**TRIBUTOS_FRECUENTES:** ver sección de configuración inicial
 
---
 
## Estructura del sistema tributario argentino
 
### Niveles normativos
 
1. CN (arts. 4, 17, 52, 75 incs. 1 y 2): legalidad, igualdad, no confiscatoriedad, razonabilidad
2. Leyes del Congreso: IVA (Ley 23.349), Ganancias (Ley 20.628), Bienes Personales (Ley 23.966), débitos y créditos bancarios (Ley 25.413), Régimen Penal Tributario (Ley 27.430 y modificaciones), seguridad social
3. Decretos reglamentarios del Poder Ejecutivo
4. Resoluciones Generales ARCA: procedimiento, formularios, regímenes de retención y percepción
5. Normativa provincial: código fiscal de cada provincia, leyes impositivas anuales
6. Normativa municipal: ordenanzas tarifarias, tasas de seguridad e higiene
Ante contradicción entre niveles, aplicar jerarquía normativa. Alertar al abogado cuando una RG de ARCA exceda o contradiga la ley que reglamenta.
 
### Organismo recaudador nacional
 
Por Decreto 953/2024 (octubre 2024), la AFIP fue reorganizada bajo la denominación ARCA (Agencia de Recaudación y Control Aduanero). El cambio es nominal pero tiene impacto directo en escritos: un escrito que cite "AFIP" en lugar de "ARCA" en trámites posteriores a esa fecha puede generar observaciones formales. Este archivo mantiene la sigla AFIP solo para referencias históricas o normativas anteriores (por ejemplo: "RG AFIP 3XXX"); en toda actuación procesal o presentación ante el organismo usar la denominación vigente ARCA.
 
ARCA divide sus competencias en tres direcciones:
- **DGI** (Dirección General Impositiva): tributos internos nacionales (IVA, ganancias, bienes personales, etc.)
- **DGA** (Dirección General de Aduanas): tributos aduaneros, derechos de exportación e importación
- **DGRSS** (Dirección General de los Recursos de la Seguridad Social): aportes y contribuciones patronales
Identificar qué dependencia tiene competencia antes de analizar el procedimiento. DGI y DGA manejan regímenes de fiscalización, recursos y sanciones con lógicas parcialmente distintas.
 
---
 
## Alerta normativa - normas de vigencia variable
 
*Última verificación de esta sección: mayo 2026. Actualizar cuando cambie alguna de las normas listadas.*
 
En materia tributaria, la regla general del CLAUDE.md (verificar vigencia en toda norma citada) aplica con especial intensidad. Las alícuotas, mínimos no imponibles, umbrales de punibilidad y montos de corte se actualizan frecuentemente por ley, decreto o resolución general.
 
### Puntos críticos - marcar siempre
 
- **Ganancias (Ley 20.628):** las escalas y el MNI se ajustan semestralmente por IPC según Decreto 652/2024 (desde 2025). No citar valores sin `[VERIFICAR MONTO ACTUALIZADO: monto habilitante - norma vigente]`.
- **Bienes Personales (Ley 23.966):** la Ley 27.743 elevó el MNI e introdujo alícuotas escalonadas para 2023-2026. Verificar siempre si el contribuyente adhirió al REIBP, lo que modifica por completo su situación hasta 2027. `[VERIFICAR VIGENCIA: MNI, alícuota y situación REIBP del contribuyente]`
- **Régimen penal tributario (Ley 27.430, Título IX):** la Ley 27.743 (julio 2024) reformó sustancialmente los umbrales de punibilidad y eliminó algunas figuras. Nunca emitir opinión sobre evasión simple o agravada sin compulsar el texto actualizado y los montos vigentes. `[VERIFICAR MONTO ACTUALIZADO: umbral de punibilidad - texto vigente Ley 27.743]`
- **TFN - monto mínimo de competencia:** se actualiza por resoluciones de la Secretaría de Hacienda. Si el ajuste de ARCA no supera ese piso, la vía recursiva administrativa queda vedada y corresponde la judicial directa. `[VERIFICAR MONTO ACTUALIZADO: monto mínimo TFN - resolución vigente]`
- **Ingresos brutos - alícuotas:** varían por provincia y se actualizan en la ley impositiva anual de cada jurisdicción. En actividad multijurisdiccional, las resoluciones de la Comisión Arbitral y la Comisión Plenaria (COMARB) definen el encuadre. `[VERIFICAR ALÍCUOTA VIGENTE: provincia y actividad correspondientes]`
- **Convenio Multilateral:** las instrucciones del organismo de aplicación (COMARB) se actualizan. `[VERIFICAR CRITERIO VIGENTE COMARB si aplica]`
Regla operativa: en toda consulta tributaria, agregar al cierre:
```
[VERIFICAR VIGENCIA] [VERIFICAR MONTO ACTUALIZADO: los valores citados corresponden
a la normativa conocida al momento de la consulta. Confirmar con ARCA/organismo
provincial antes de aconsejar o presentar]
```
 
---
 
## Normativa de referencia
 
### Procedimiento tributario nacional
 
- **Ley 11.683 (LPT)** [VERIFICAR VIGENCIA] y modificatorias: determinación de oficio, recursos, sanciones, prescripción, ejecución fiscal.
- **Decreto 1397/79 (Reglamento de la LPT)** y modificatorias
- **Resoluciones Generales ARCA** por materia: verificar la vigente antes de citar número. Las RG son frecuentemente reemplazadas; no citar número sin agregar [VERIFICAR VIGENCIA].
### Tributos nacionales - normas principales
 
| Tributo | Norma |
|---|---|
| IVA | Ley 23.349 y DR Decreto 692/98 modificado por Decreto 658/2024 (efectos desde 1° enero 2025) [VERIFICAR VIGENCIA] |
| Ganancias (personas humanas) | Ley 20.628 y DR Decreto 862/19 modificado por Decretos 608/2024 (reglamentación Ley 27.743) y 652/2024 (actualización semestral IPC desde 2025) [VERIFICAR VIGENCIA: DR con modificaciones sustanciales en 2024] |
| Ganancias (sociedades) | Ley 20.628, arts. 69 y ss. |
| Bienes Personales | Ley 23.966 Título VI reformada por Ley 27.743 [VERIFICAR VIGENCIA: MNI actualizado por IPC, alícuotas escalonadas 2023-2026, verificar adhesión REIBP] |
| Ganancia Mínima Presunta | Ley 25.063 - **DEROGADA** por art. 76 Ley 27.260 desde el ejercicio fiscal iniciado el 1° de enero de 2019. Para períodos anteriores pueden existir ajustes o litigios pendientes. Nota jurisprudencial: la CSJN declaró la inconstitucionalidad del impuesto por confiscatorio en varios precedentes anteriores a la derogación (períodos 2002-2018); verificar fallos aplicables antes de analizar casos de esos ejercicios. |
| ITI (Impuesto a la Transferencia de Inmuebles) | Ley 23.905 - **DEROGADA** por art. 67 Ley 27.743 desde el 8 de julio de 2024. Para inmuebles adquiridos desde el 1°/1/2018 aplica el impuesto cedular de Ganancias (15% sobre resultado); para adquisiciones anteriores y transferencias posteriores al 8/7/2024 no rige retención alguna por este concepto. |
| Seguridad social | Ley 24.241 (SIPA), Ley 24.714 (asignaciones familiares), Ley 27.541 Capítulo 3 Título IV (contribuciones patronales; el Decreto 814/01 fue derogado por art. 26 Ley 27.541 pero sus niveles alicuotarios de 2019 fueron preservados por esa vía) [VERIFICAR VIGENCIA: régimen de contribuciones patronales - Ley 27.541 y modificatorias] |
| Impuesto a los débitos y créditos bancarios | Ley 25.413 [VERIFICAR VIGENCIA: alícuotas y exenciones se actualizan por decreto] |
| Derechos de exportación | CN art. 4 + Ley 27.541 y normas de emergencia |
 
Las alícuotas, mínimos no imponibles y deducciones cambian con frecuencia. Nunca citar valores numéricos sin [VERIFICAR VIGENCIA] + [VERIFICAR MONTO ACTUALIZADO: alícuotas y montos tributarios - RG ARCA vigente].
 
### Convenio Multilateral
 
- **Convenio Multilateral del 18/08/1977** [VERIFICAR VIGENCIA]: distribución de la base imponible de ingresos brutos entre provincias para contribuyentes con actividad en más de una jurisdicción.
- **Comisión Arbitral y Plenaria:** interpretación y resolución de conflictos interjurisdiccionales.
- En clientes con actividad multijurisdiccional, el análisis de ingresos brutos siempre pasa por el Convenio Multilateral antes de calcular la base provincial.
### Tributación internacional
 
- **Arts. 1, 2 y 124-130 Ley 20.628:** criterio de renta mundial para residentes argentinos
- **Precios de transferencia (arts. 17 y 129 Ley 20.628 - [VERIFICAR NUMERACIÓN: TO 2019, Decreto 824/2019]):** operaciones entre partes vinculadas; principio arm's length; métodos: precio comparable no controlado, precio de reventa, costo más beneficios, margen neto transaccional, partición de utilidades. Documentación obligatoria anual para operaciones que superen los montos de la RG ARCA vigente [VERIFICAR MONTO ACTUALIZADO: montos precios de transferencia - RG ARCA vigente]. En operaciones internacionales entre vinculadas, verificar si el cliente tiene el estudio actualizado antes de analizar el riesgo.
- **CDI:** verificar vigencia del convenio específico antes de aplicarlo; Argentina tiene CDI con número limitado de países.
- **CRS / FATCA:** Ley 27.270 (CRS), acuerdos FATCA.
---
 
## Procedimiento ante ARCA
 
### Fiscalización
 
El proceso se inicia con una orden de intervención que delimita el objeto y los períodos investigados. Los requerimientos de documentación deben respetarse en los plazos fijados, aunque estos deben ser razonables. Las actas de inicio o de conformidad preconstituyen prueba: no firmar sin análisis previo, guardar copia de todo lo presentado y de cada requerimiento. La fiscalización puede desembocar en una determinación de oficio o, si los ajustes son consensuados, en un acta de conformidad.
 
### Determinación de oficio (arts. 16-19 LPT)
 
1. Vista al contribuyente: ARCA notifica los ajustes propuestos con la documentación de sustento.
2. Plazo de descargo: 15 días hábiles administrativos desde la notificación de la vista, prorrogables por igual período a pedido de parte, por única vez. Este es el momento más importante del proceso administrativo; un descargo bien articulado puede evitar el litigio posterior. Nunca dejar vencer el plazo sin presentar aunque sea un descargo parcial.
3. Descargo y ofrecimiento de prueba: el contribuyente presenta sus argumentos y la prueba que hace a su derecho.
4. Resolución determinativa: el juez administrativo dicta el acto fijando la obligación y, en su caso, las multas.
### Recursos contra la determinación de oficio
 
El contribuyente dispone de 15 días hábiles administrativos desde la notificación para optar de manera excluyente por una de las siguientes vías:
 
**Recurso de reconsideración (art. 76 inc. a LPT):** ante el superior jerárquico dentro de ARCA. Suspende la ejecutoriedad del acto. Si la resolución mantiene el ajuste, agota la vía administrativa y habilita la CNACAF (con pago previo del tributo o discusión de repetición).
 
**Recurso de apelación ante el TFN (art. 76 inc. b LPT):** ante el Tribunal Fiscal de la Nación, órgano jurisdiccional independiente. Otorga efecto suspensivo automático sobre el cobro del impuesto y los intereses. La elección entre reconsideración y TFN es estratégica y definitiva: el TFN es preferible para ajustes de cierta magnitud o cuestiones técnicas complejas; la reconsideración puede convenir cuando hay errores materiales o cuando la relación con la dependencia hace viable una solución negociada.
 
El TFN tiene montos mínimos para habilitar su jurisdicción [VERIFICAR MONTO ACTUALIZADO: monto mínimo TFN - resolución Secretaría de Hacienda vigente]. Si el ajuste no los supera, la vía es la judicial directa.
 
**Salas del TFN:**
> **[VERIFICAR VIGENCIA: composición y denominación de salas del TFN al momento de la interposición.]**
> Distribución histórica: Salas A, B, C, D para materia impositiva (DGI) y Salas E, F, G, H para materia aduanera (DGA). La composición se ha modificado en los últimos años. No asumir la distribución histórica sin verificar la acordada vigente del TFN al momento de la presentación.
 
Apelada la sentencia del TFN, la instancia siguiente es la CNACAF.
 
### Otros remedios procedimentales
 
**Recurso del art. 74 del Decreto Reglamentario:** para impugnar actos de ARCA que no impliquen determinaciones de oficio ni sanciones directas (por ejemplo: denegatoria de exenciones, actos de trámite con efecto definitivo). Omitir este paso puede bloquear la habilitación de la instancia judicial por falta de agotamiento de la vía administrativa.
 
**Acción de repetición (art. 81 LPT):** cuando el contribuyente considera que pagó de más o en exceso, el reclamo administrativo previo ante ARCA es un requisito obligatorio antes de demandar ante la CNACAF. Verificar si el tributo y la situación encuadran en los supuestos del art. 81 que exigen ese agotamiento previo.
 
### Prejudicialidad penal-tributaria (post Ley 27.743)
 
La coexistencia de un procedimiento administrativo de determinación de oficio y una causa penal tributaria exige control estricto. La Ley 27.743 (2024) introdujo modificaciones relevantes en la regla de prejudicialidad: la existencia de la causa penal puede paralizar ciertas resoluciones en sede administrativa o condicionar las defensas del contribuyente. Identificar si existe causa penal abierta por los mismos hechos antes de avanzar en estrategias aisladas.
`[VERIFICAR VIGENCIA: regla de prejudicialidad penal-tributaria - Ley 27.743, normas vigentes]`
 
### Vía contencioso administrativa federal
 
Para determinaciones que no alcancen el monto del TFN, o después de agotar la vía de reconsideración ante ARCA:
- Acción contencioso administrativa: ante la CNACAF contra resoluciones de ARCA
- Recurso de apelación contra sentencias del TFN: ante la CNACAF
- Demanda de repetición judicial: verificar reclamo administrativo previo (art. 81 LPT)
---
 
## Sanciones, infracciones y prescripción
 
### Régimen infraccional (LPT)
 
**Infracciones formales (art. 39 LPT):** incumplimientos a deberes de información o falta de presentación de declaraciones juradas. Multa fija graduada según reincidencia y gravedad [VERIFICAR MONTO ACTUALIZADO: multa art. 39 LPT - RG ARCA vigente].
 
**Omisión de impuesto (art. 45 LPT):** culpa en el pago deficiente, sin ardid. Multa del 100% del gravamen omitido, susceptible de reducción si el contribuyente regulariza de manera espontánea antes o durante las primeras etapas de la fiscalización.
 
**Defraudación tributaria (art. 46 LPT):** dolo, maniobras engañosas u ocultación. Multa de 2 a 6 veces el tributo evadido; suele activar la denuncia penal si se superan los umbrales de punibilidad.
 
**Régimen penal tributario (Ley 27.430, Título IX, modificado por Ley 27.743):** evasión simple (art. 1), evasión agravada (art. 2), aprovechamiento indebido de beneficios fiscales (art. 3), apropiación indebida de tributos (art. 4). La Ley 27.743 reformó sustancialmente los umbrales de punibilidad y eliminó algunas figuras. Nunca citar montos de punibilidad sin verificar el texto actualizado.
`[VERIFICAR MONTO ACTUALIZADO: umbral de punibilidad - texto vigente Ley 27.743]`
 
Ante cualquier consulta con componente penal tributario, alertar sobre la concurrencia entre el procedimiento administrativo de ARCA y la causa penal antes de continuar.
 
### Prescripción (arts. 56-69 LPT)
 
Contribuyentes inscriptos: 5 años contados desde el 1 de enero del año siguiente al que se devengó el tributo o se cometió la infracción. Contribuyentes no inscriptos: 10 años.
 
Causales de suspensión (art. 65): intimación de pago de deuda determinada cierta o presuntivamente; pedido de prórroga u otras facilidades de pago; interposición de recursos en sede administrativa.
 
Causales de interrupción (art. 67): reconocimiento expreso o tácito de la obligación; renuncia al término de la prescripción en curso; resolución determinativa de oficio debidamente notificada; demanda de ejecución fiscal.
 
La prescripción puede ser mucho más larga de lo que el cliente asume. Nunca descartar un ajuste como prescripto sin relevar la existencia de actos interruptivos o suspensivos.
 
---
 
## Ejecución fiscal (art. 92 LPT)
 
La boleta de deuda emitida por ARCA constituye un título ejecutivo suficiente, sin necesidad de juicio de conocimiento previo. El contribuyente cuenta con 5 días hábiles para oponer únicamente las excepciones de pago total documentado, espera documentada, prescripción o inhabilidad extrínseca del título. No se puede discutir la procedencia del impuesto en esta instancia; si el contribuyente no recurrió la determinación de oficio en tiempo y forma, la discusión de fondo queda vedada. La única vía es pagar y repetir.
 
---
 
## Regímenes especiales
 
### Facilidades de pago y planes de regularización
 
ARCA implementa planes permanentes de facilidades de pago y planes extraordinarios (moratorias o blanqueos) por ley especial. Verificar siempre la vigencia del plan al momento de la consulta, las deudas incluibles y excluibles, los efectos sobre las sanciones y los efectos sobre la prescripción.
`[VERIFICAR VIGENCIA: plan o moratoria - RG ARCA vigente]`
 
### Reforma fiscal Ley 27.743 (Paquete Fiscal - BO 8-jul-2024)
 
**Trib-A: Moratoria fiscal**
 
Régimen de regularización de obligaciones tributarias vencidas al 31-mar-2024. Alcance: deudas impositivas, aduaneras y de seguridad social. Condonación parcial o total de intereses y multas según modalidad de pago elegida. La adhesión válida suspende las acciones penales tributarias en curso. Reglamentación: Decreto 658/2024.
```
[VERIFICAR VIGENCIA: moratoria Ley 27.743 - RG ARCA vigente - plazos y condiciones de adhesion]
```
 
**Trib-B: Régimen de Regularización de Activos (blanqueo etapado)**
 
Tres etapas con alícuotas crecientes: Etapa 1 hasta 30-sep-2024 (5%), Etapa 2 hasta 31-dic-2024 (10%), Etapa 3 hasta 30-abr-2025 (15%). Libera impuestos omitidos sobre bienes blanqueados, sujeto a cumplimiento de cargas formales y de permanencia.
```
[VERIFICAR VIGENCIA: blanqueo Ley 27.743 - etapas y alicuotas - RG ARCA vigente]
```
 
**Trib-C: Bienes Personales reformado**
 
La Ley 27.743 reformó sustancialmente el impuesto:
- MNI elevado a $100.000.000 al momento de la reforma; se actualiza semestralmente por IPC. Para el período fiscal 2025 (vencimiento 2026): $384.728.044 aprox. [VERIFICAR MONTO ACTUALIZADO: MNI vigente - publicación ARCA para el período fiscal en curso]
- Alícuota máxima escalonada (régimen general, contribuyentes no adheridos al REIBP): 1,75% (2023), 1,50% (2024), 1,25% (2025, escala progresiva), 0,75% (2026), 0,25% proporcional único (2027 en adelante)
- **REIBP (art. 52 Ley 27.743):** régimen optativo de pago anticipado unificado por los períodos 2023-2027. Quienes adhirieron en 2024 tributan alícuota única del 0,45% (o 0,50% si regularizaron activos vía blanqueo) sobre patrimonio al 31/12/2023, y quedan exentos de declarar y pagar hasta el período fiscal 2027 inclusive. Antes de analizar la obligación de Bienes Personales de un cliente, determinar si adhirió al REIBP.
```
[VERIFICAR MONTO ACTUALIZADO: Bienes Personales - MNI y alicuotas - verificar periodo fiscal aplicable y si el contribuyente adhirio al REIBP]
```
 
**Trib-D: Ganancias - modificaciones Ley 27.743**
 
La Ley 27.743 introdujo modificaciones en escalas y deducciones. Las escalas se actualizan semestralmente por IPC desde 2025 (Decreto 652/2024). Verificar el texto vigente antes de asesorar sobre liquidación del período 2024 en adelante.
```
[VERIFICAR VIGENCIA: Ganancias - escalas y deducciones reformadas por Ley 27.743 y DR 652/2024]
```
 
**Trib-D bis: Ganancias cedular inmobiliaria - rol del escribano y relación con cuarta categoría**

El impuesto cedular del 15% sobre transferencias de inmuebles (art. 99 inc. b Ley 20.628, Ley 27.430) recae sobre el vendedor y se liquida en su declaración jurada anual. El escribano **no retiene** este impuesto.

**Exenciones:**
- Vivienda única y casa habitación del vendedor: exenta del 15% cedular. El vendedor declara la condición bajo su propia responsabilidad.
- Opción de reemplazo: si el producido se destina a adquirir otra vivienda dentro del plazo legal, el vendedor puede ejercer la opción ante ARCA. Requiere tramitar el **certificado de no retención** vía servicio ARCA "Transferencia de Inmuebles" antes del acto.

**Relación con cuarta categoría:**
- El impuesto cedular inmobiliario y el impuesto a las ganancias de cuarta categoría (relación de dependencia) son regímenes independientes y no se compensan entre sí.
- El hecho de que el empleador del vendedor practique retenciones de cuarta categoría no modifica ni absorbe la obligación cedular por la venta del inmueble.
- El vendedor empleado en relación de dependencia que vende un inmueble no exento debe liquidar el 15% cedular en su DDJJ anual de forma separada e independiente de su liquidación de haberes.

```
[CEDULAR INMOBILIARIO: el escribano no retiene - verificar exención vivienda única o certificado de no retención ARCA - servicio "Transferencia de Inmuebles" - art. 99 inc. b Ley 20.628]
```

**Trib-E: Monotributo - modificaciones Ley 27.743**
 
Categorías y límites de facturación actualizados por Ley 27.743. Verificar texto y RG ARCA vigentes antes de asesorar sobre recategorización o permanencia en el régimen.
```
[VERIFICAR MONTO ACTUALIZADO: Monotributo - categorias y limites Ley 27.743 - RG ARCA vigente]
```
 
**Trib-F: RIGI - beneficios tributarios**
 
El RIGI (Ley 27.742 Cap. VII, reglamentado por Decreto 749/2024) otorga a los Vehículos de Proyecto Único (VPU) adherentes: estabilidad fiscal por 30 años, alícuota de Ganancias reducida al 25%, amortización acelerada y exenciones de derechos de importación y exportación.
```
[VERIFICAR VIGENCIA: RIGI - beneficios tributarios Ley 27.742 Cap VII + Decreto 749/2024 + resoluciones sectoriales]
```
 
---
 
## Tributos provinciales - ingresos brutos
 
Tributo provincial que grava el ejercicio habitual y a título oneroso de actividades en el territorio de cada provincia.
 
**Contribuyentes locales:** actúan solo en una provincia; tributan bajo el régimen de esa provincia.
 
**Contribuyentes del Convenio Multilateral:** actúan en dos o más provincias; distribuyen la base imponible según el Convenio del 18/08/1977.
 
Las provincias implementan agentes de retención y percepción. Un mismo contribuyente puede estar sujeto a múltiples retenciones de distintas jurisdicciones. Verificar el padrón de alícuotas de retención de cada provincia relevante, si el contribuyente está inscripto como exento o a alícuota reducida, y los saldos a favor acumulados por exceso de retenciones. El exceso de retenciones puede generar saldos inmovilizados si no se gestiona activamente la inscripción a alícuotas correctas o la solicitud de devolución.
 
---
 
## Reglas de citación - tributario
 
Las reglas generales del CLAUDE.md argentino aplican íntegramente. Específicas para tributario:
 
**Montos, alícuotas y mínimos:** nunca citar valores numéricos sin [VERIFICAR VIGENCIA] + [VERIFICAR MONTO ACTUALIZADO: alícuotas y montos tributarios - RG ARCA vigente].
 
**Resoluciones Generales ARCA:** citar número y año; agregar [VERIFICAR VIGENCIA]. Las RG son frecuentemente reemplazadas.
 
**Jurisprudencia del TFN:** no citar sala, expediente o carátula sin material aportado. Usar:
```
[INSERTAR FALLO VERIFICADO: sala TFN, doctrina requerida - aportar expediente y año]
```
 
**Actos de ARCA:** no asumir el contenido de determinaciones, intimaciones o resoluciones sin que el abogado las aporte. Usar:
```
[VACÍO PROBATORIO: texto del acto de ARCA no aportado - aportar copia del acto determinativo o resolución]
```
 
**Plazos de recursos:** los plazos ante ARCA y el TFN son perentorios. Alertar siempre con:
```
[ALERTA DE PLAZO: verificar fecha de notificación del acto y plazo de interposición del recurso]
```
 
---
 
## Lógica de análisis por consulta
 
### Ante una determinación de oficio o intimación de ARCA
 
1. ¿Qué acto notificó ARCA? ¿Es una vista previa, una determinación de oficio, una resolución de sanción, o una intimación de pago?
2. ¿Cuándo fue notificado el acto? ¿Qué plazo queda para responder o recurrir?
3. ¿Cuál es el tributo y el período fiscal involucrado?
4. ¿El contribuyente tiene las declaraciones juradas y la documentación respaldatoria del período?
5. ¿Hay antecedentes de fiscalizaciones anteriores del mismo período o tributo?
### Antes de recomendar vía recursiva
 
1. Determinar si el monto supera el umbral del TFN [VERIFICAR MONTO ACTUALIZADO: monto mínimo TFN - resolución Secretaría de Hacienda vigente]
2. Evaluar fortaleza de los argumentos de fondo
3. Evaluar si hay interés en mantener relación negocial con ARCA (reconsideración) o en litigar (TFN)
4. Verificar si el recurso tiene efecto suspensivo sobre el cobro
5. Verificar existencia de garantías requeridas para la suspensión
### Ante consulta sobre prescripción
 
1. Identificar el tributo y el período fiscal
2. Determinar si el contribuyente estaba inscripto en el período (5 o 10 años)
3. Rastrear actos interruptivos y suspensivos desde el hecho imponible
4. Verificar si hay ejecución fiscal iniciada (puede haber embargo trabado)
5. Nunca dictaminar prescripción sin haber relevado los actos interruptivos
---
 
## Instrucciones operativas específicas - tributario
 
- Identificar el tributo y el organismo (ARCA-DGI, ARCA-DGA, ARCA-DGRSS, organismo provincial) antes de cualquier análisis.
- Nunca citar alícuotas, montos o mínimos sin [VERIFICAR VIGENCIA] + [VERIFICAR MONTO ACTUALIZADO: alícuotas y montos tributarios - RG ARCA vigente].
- En recursos, calcular el plazo desde la notificación antes de analizar el fondo. Si el plazo está vencido o próximo, alertar como primera acción.
- Ante concurrencia de procedimiento administrativo tributario y causa penal, alertar sobre la interacción entre ambas vías antes de continuar.
- En precios de transferencia, verificar documentación antes de analizar el riesgo.
- En ingresos brutos, identificar si el contribuyente está bajo Convenio Multilateral antes de analizar la base imponible provincial.
- No asumir el contenido de actos de ARCA, expedientes o declaraciones juradas sin que el abogado los aporte.
- Todo escrito cierra con "Estado del escrito" estándar más: tributo y período involucrado, plazo procesal próximo si lo hay, montos con [VERIFICAR VIGENCIA] + [VERIFICAR MONTO ACTUALIZADO: alícuotas y montos tributarios - RG ARCA vigente], elección de vía recursiva y fundamento si se tomó esa decisión por defecto.
---
 
*Ultima actualizacion: mayo 2026*
*Normativa base: Ley 11.683 (LPT), Ley 23.349 (IVA), Ley 20.628 (Ganancias), Ley 27.430 (Régimen Penal Tributario reformado por Ley 27.743), Convenio Multilateral 18/08/1977*
*Nota: Ganancia Mínima Presunta (Ley 25.063) derogada desde ejercicio 2019 (art. 76 Ley 27.260)*
*Nota: ITI (Ley 23.905) derogado desde el 8 de julio de 2024 (art. 67 Ley 27.743)*
*Nota: Decreto 814/01 derogado por art. 26 Ley 27.541; sus efectos alicuotarios se preservan vía Capítulo 3 Título IV de esa ley*
*Reforma fiscal 2024: Ley 27.743 (Paquete Fiscal) - moratoria, blanqueo, Bienes Personales (incluye REIBP), Ganancias, Monotributo, régimen penal tributario, derogación ITI*
*Incorpora audit de gaps post-reforma 2024: Diego Fernandez - Sovra (mayo 2026)*
*Autor: Dr. Cristian Aboitiz · [@abogadoaboitiz](https://x.com/abogadoaboitiz)*
