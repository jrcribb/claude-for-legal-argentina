# Perfil de práctica · Protección de datos personales e informes crediticios (Veraz)

> Archivo de configuración para el sistema claude-for-legal.
> Perfil transversal: complementa el perfil general (argentina/CLAUDE.md) y se carga junto con el
> perfil de área específica cuando corresponda (civil-CLAUDE.md para daños, penal-CLAUDE.md para
> usurpación de identidad, administrativo-CLAUDE.md para la AAIP como organismo de control).
> **Configuración inicial obligatoria:** completar las variables de la sección siguiente antes de usar.

---

## Configuración inicial - completar antes de usar

**FUERO_HABITUAL:**
Indicar el fuero donde tramitan habitualmente las acciones de hábeas data y los reclamos contra
empresas de información crediticia. Opciones: "fuero civil y comercial federal (CABA)", "fuero
civil nacional (CABA)", "fuero civil y comercial PBA - [departamento judicial]", u otro.

Ejemplo: `FUERO_HABITUAL: Civil y Comercial Federal (CABA)`

**ROL_PREDOMINANTE:**
Indicar si actuás predominantemente por el titular del dato (persona informada en Veraz/Nosis)
o por la entidad informante (banco, financiera, empresa de informes crediticios).

Ejemplo: `ROL_PREDOMINANTE: Titular del dato`

---

## Identidad y alcance

Este perfil cubre reclamos vinculados a bases de datos de información crediticia (Veraz/Equifax,
Nosis, BCRA - Central de Deudores del Sistema Financiero) bajo la Ley 25.326 de Protección de
Datos Personales (también llamada Ley de Hábeas Data) y su Decreto Reglamentario 1558/01: derecho
de acceso, rectificación y actualización, derecho de supresión, "derecho al olvido" (caducidad de
la información negativa por el transcurso del tiempo), y la acción de hábeas data como vía judicial.

No es un instructivo de consumidor ni un resumen de los pasos operativos que publica Equifax/Veraz
en su sitio. Las prácticas comerciales de las empresas de informes (plazos de respuesta a reclamos,
formularios, vías de contacto) no tienen necesariamente anclaje normativo y no deben citarse como si
lo tuvieran. Este perfil distingue siempre entre plazo legal (con norma de respaldo) y práctica de
la empresa (sin valor normativo, a verificar caso por caso).

**FUERO_HABITUAL:** ver sección de configuración inicial
**ROL_PREDOMINANTE:** ver sección de configuración inicial

---

## Alerta normativa - normas de vigencia variable

*Última verificación de esta sección: junio 2026.*

### Estado de la Ley 25.326 - sin reforma sancionada

La Ley 25.326 (sancionada en el año 2000) sigue vigente sin reforma integral sancionada. Hay
proyectos en danza (impulsado por el diputado Pablo Carro, otro por el senador Martín Doñate,
ambos inspirados en el anteproyecto de la AAIP que perdió estado parlamentario a fines de 2024)
que proponen alinear la ley con el RGPD europeo: responsabilidad proactiva, privacidad por diseño,
portabilidad, oposición a decisiones automatizadas, entre otros institutos hoy ausentes.

Regla operativa: no asesorar como si estos institutos (portabilidad, privacidad por diseño,
oposición a decisiones automatizadas) ya estuvieran vigentes. Son proyecto, no ley. Verificar
estado parlamentario antes de cualquier consulta que dependa de la reforma.
```
[VERIFICAR VIGENCIA: estado parlamentario de los proyectos de reforma de la Ley 25.326 - Carro / Doñate / anteproyecto AAIP]
```

### Plazo de caducidad de la información negativa - art. 26 inc. 4 Ley 25.326

**Error frecuente a evitar: el plazo reducido NO es de 3 años. Es de 2 años.**

Texto del art. 26 inc. 4: "Sólo se podrán archivar, registrar o ceder los datos personales que
sean significativos para evaluar la solvencia económico-financiera de los afectados durante los
últimos cinco años. Dicho plazo se reducirá a dos años cuando el deudor cancele o de otro modo
extinga la obligación, debiéndose hacer constar dicho hecho."

- Plazo general: 5 años
- Plazo si la deuda fue cancelada o extinguida: 2 años (no 3)

```
[VERIFICAR VIGENCIA: art. 26 inc. 4 Ley 25.326 - sin reforma sancionada a la fecha]
```

### Cómputo del plazo - punto de mayor litigiosidad del instituto

**No asumir que el plazo corre simplemente desde la fecha de mora.** El cómputo tuvo un historial
de posiciones administrativas y jurisprudenciales sucesivas:

- DNPDP Dictámenes 61/2005 y 185/2005: el plazo corría desde la mora, pero la fuente podía seguir
  renovando la información mientras la deuda fuera exigible.
- Dictamen PTN 338/2006 y DNPDP Dictamen 150/2007: el plazo de 5 años se computa desde que la
  obligación se tornó exigible (mora), por ser esa la última información adversa relevante - postura
  más favorable al titular.
- Decreto 1558/01, art. 26 (reglamentario): el cómputo de los 5 años corre desde la fecha de la
  **última información adversa archivada que revele que la deuda era exigible** - no necesariamente
  la mora original. El carácter "significativo" del dato nuevo es expreso requisito legal (art. 26
  inc. 4, en conjunto con la reglamentación).
- Jurisprudencia consolidada (CNCom, CNCiv y Com Fed, con aval de la CSJN en "Catania, Américo
  Marcial c/ BCRA", Expte. C. 1380. XLII, CSJN, 08/11/2011): si después de la mora original se
  produjeron hechos nuevos y significativos que revelan que la deuda seguía siendo exigible (inicio
  de demanda judicial, sentencia firme, reinscripción de un embargo), el plazo de 5 años se
  recomputa desde ese hecho posterior, no desde la mora original. Una sentencia firme favorable al
  acreedor genera una nueva exigibilidad y habilita un nuevo plazo de 5 años desde que esa sentencia
  quedó firme.
- Si el deudor cancela o extingue la deuda: el plazo se reduce a 2 años, computados desde la fecha
  precisa de extinción (no desde la mora).

**Doctrina central de "Catania" - independencia entre caducidad del dato y prescripción civil:**
La CSJN revocó expresamente el criterio de la cámara que había negado el derecho al olvido porque
la deuda era "aún exigible por no haber transcurrido el plazo de prescripción". La Corte estableció
que el plazo del art. 26 inc. 4 es autónomo respecto del plazo de prescripción civil: el legislador
rechazó deliberadamente hacer coincidir ambos plazos (el proyecto originario de 10 años respondía
a esa lógica, y fue reducido a 5 años precisamente por considerarse que la equiparación con la
prescripción generaba una "virtual inhabilitación" del deudor). La vigencia de la prescripción
civil no suspende ni posterga el cómputo del plazo de caducidad del dato. Son planos
independientes. Este argumento es el más frecuentemente confundido en la práctica y el que la
contraparte suele invocar para oponerse al pedido de supresión.

Regla operativa: antes de afirmar que el "derecho al olvido" operó, identificar la última
información adversa significativa archivada (no solo la fecha de la mora original) y verificar si
hubo actos posteriores del acreedor que reinicien el cómputo. Si la contraparte opone prescripción
no cumplida, contrarrestar con la doctrina "Catania": ese argumento fue expresamente rechazado por
la CSJN.

```
[VERIFICAR CRITERIO DEL FUERO: cómputo del plazo de caducidad art. 26 inc. 4 Ley 25.326 - identificar la última información adversa significativa - sala/fuero actuante]
```

### Plazos legales de respuesta - no son intercambiables entre institutos

Error frecuente: atribuir un único plazo (5 días hábiles, o 10 días hábiles) a cualquier tipo de
reclamo bajo la Ley 25.326. El texto vigente (sin reforma sancionada) distingue dos plazos
distintos según el derecho ejercido:

- **Derecho de acceso (art. 14 inc. 2 Ley 25.326):** el responsable o usuario debe proporcionar la
  información solicitada dentro de los **10 días corridos** de haber sido intimado fehacientemente.
  No son 10 días hábiles ni 5 días hábiles: son 10 días corridos.
- **Derecho de rectificación, actualización o supresión (art. 16 inc. 2 Ley 25.326):** el
  responsable debe rectificar, suprimir o actualizar dentro de los **5 días hábiles** de recibido
  el reclamo del titular o advertido el error o falsedad.

En ambos casos, vencido el plazo sin satisfacción del pedido, o si la respuesta es insuficiente,
**queda expedita directamente la acción de hábeas data** (art. 14 inc. 2 in fine y art. 16 inc. 3
Ley 25.326). El texto hoy vigente no exige agotar una instancia administrativa previa ante la AAIP
como paso obligatorio antes de judicializar.

**Alerta sobre fuente de confusión:** existen anteproyectos de reforma (ver más arriba) que sí
estructuran una secuencia distinta - agotamiento ante la autoridad de control como alternativa u
opción previa a la vía judicial, con plazos propios de ese trámite administrativo (10 días hábiles
para la autoridad de control, 30 días para resolver, etc.). Esos plazos corresponden al proyecto,
no a la ley vigente. No presentarlos como derecho vigente sin verificar el estado parlamentario.

Las prácticas operativas de las empresas de informes (Equifax/Veraz, Nosis) o las guías de difusión
de organismos públicos pueden mencionar plazos distintos a los de la ley (por ejemplo, "5 días
hábiles" para cualquier reclamo, o "10 días hábiles" para el acceso). No tienen valor normativo por
sí solos: verificar siempre contra el texto del art. 14 o el art. 16 según corresponda antes de
citar un plazo como legal.

```
[VERIFICAR VIGENCIA: art. 14 inc. 2 y art. 16 inc. 2 Ley 25.326 - distinguir plazo de acceso (10 días corridos) de plazo de rectificación/supresión (5 días hábiles) - no usar plazos de anteproyectos de reforma como si fueran derecho vigente]
```

---

## Normativa de referencia

### Fuente principal

- **Ley 25.326 (Ley de Protección de Datos Personales / Ley de Hábeas Data)** [VERIFICAR VIGENCIA: sin reforma sancionada]
- **Decreto Reglamentario 1558/01** [VERIFICAR VIGENCIA] - en especial art. 26 (cómputo de los plazos del art. 26 inc. 4 de la ley)
- **Art. 43, tercer párrafo, Constitución Nacional** - base constitucional de la acción de hábeas data
- **Ley 27.275 (Acceso a la Información Pública)** - creó la AAIP como organismo autárquico (art. 19 y ss.)

### Organismo de control

- **AAIP (Agencia de Acceso a la Información Pública):** autoridad de aplicación y órgano de control
  de la Ley 25.326 (art. 29 Decreto 1558/01, mod. art. 1 Decreto 899/17). Absorbió las funciones de
  la ex Dirección Nacional de Protección de Datos Personales (DNPDP); toda referencia normativa a la
  DNPDP debe entenderse hecha a la AAIP (art. 2 Decreto 899/17).
- Vía administrativa: denuncia ante la AAIP por incumplimiento de la ley. El texto vigente de la
  Ley 25.326 no exige agotar esta vía antes de iniciar la acción de hábeas data (ver "Plazos legales
  de respuesta" más arriba); es una opción adicional, no un requisito de admisibilidad de la acción
  judicial.
- Registro Nacional de Bases de Datos Personales (RNBD): las empresas de informes crediticios deben
  estar inscriptas. Verificar inscripción antes de un reclamo si hay dudas sobre la legitimidad de la
  base de datos.

### Central de Deudores del Sistema Financiero (BCRA)

- Base de datos oficial y pública del Banco Central de la República Argentina. Distinta de Veraz
  (Equifax) y Nosis, que son empresas privadas de informes comerciales: el BCRA solo registra la
  situación de deudores del sistema financiero regulado (bancos, entidades financieras), no el
  universo más amplio que cubren las bases privadas (servicios, telefonía, comercios).
- Consulta gratuita por CUIL/CUIT: detalle de la entidad informante, días de atraso, situación
  (clasificación 1 a 6 según normativa del BCRA).
- Es la fuente primaria para verificar qué reportó cada entidad financiera antes de dirigir un
  reclamo de rectificación o supresión a Veraz o Nosis, porque esas bases privadas suelen nutrirse
  de la información que el BCRA centraliza.
- La calificación BCRA no se rige por el art. 26 inc. 4 de la Ley 25.326 de la misma manera que las
  bases privadas en todos los aspectos: verificar la normativa específica del BCRA sobre
  clasificación de deudores (situación 1 a 6) antes de asumir que el "derecho al olvido" opera de
  forma idéntica en ambos sistemas.

```
[VERIFICAR VIGENCIA: normativa BCRA sobre clasificación de deudores del sistema financiero y plazos de actualización de la Central de Deudores - puede diferir del régimen de bases privadas]
```

### Normativa de consumo (cuando hay relación de consumo conexa)

- **Ley 24.240 (Defensa del Consumidor):** aplicable cuando el reclamo se vincula con un contrato de
  consumo (tarjeta de crédito, préstamo personal) que originó el dato negativo. Verificar si conviene
  acumular pretensiones de consumo (daño punitivo art. 52 bis LDC) a la acción de hábeas data, o
  plantearlas por separado. Ver civil-CLAUDE.md sección de daños en consumo.

### Bifurcación procesal: mediación previa y COPREC

**Trampa procesal frecuente:** la acción de hábeas data, como garantía constitucional (art. 43 CN), está expresamente excluida de la mediación prejudicial obligatoria. El art. 2 inc. c) de la Ley 26.589 [VERIFICAR VIGENCIA] excluye del procedimiento de mediación obligatoria a las acciones de amparo, hábeas corpus y hábeas data. No es necesario - ni corresponde - iniciar una mediación previa antes de presentar la demanda de hábeas data.

**El problema aparece cuando se acumula la pretensión de daños y perjuicios.** Según el fuero y la sala, la acumulación de daños al hábeas data puede generar dos obstáculos distintos:

1. *Exigencia de mediación previa para el rubro daños:* algunos juzgados, en particular del fuero civil, han sostenido que la pretensión resarcitoria acumulada al hábeas data requiere mediación previa por aplicación del régimen general de la Ley 26.589 para ese rubro, aunque la acción principal no la exija. No es posición uniforme: verificar criterio del juzgado actuante.

2. *Vía del COPREC (Ley 26.993):* cuando el reclamo involucra una pretensión económica contra una entidad proveedora de servicios financieros (banco, financiera, empresa de tarjeta), el COPREC puede ser una vía alternativa para el componente de daños, con instancia conciliatoria previa y procedimiento administrativo ante la autoridad de aplicación. Es una opción, no una obligación en todos los casos.

**Regla operativa:** antes de redactar una demanda que acumule hábeas data con daños, definir la estrategia según la urgencia:

- *Urgencia pura:* plantear solo el hábeas data (bloqueo preventivo + supresión definitiva). No acumular daños si eso genera discusiones procesales sobre mediación que demoran el proceso. Los daños se reclaman después, en proceso separado.
- *Resarcimiento como objetivo principal:* evaluar si el COPREC es la vía más eficiente para los daños (procedimiento más ágil para pretensiones de menor cuantía), o si conviene acumular en la misma acción asumiendo la eventual exigencia de mediación. En ese caso, iniciar mediación primero para el rubro daños y demandar luego de agotada esa instancia.
- En ningún caso presentar la demanda de hábeas data con daños acumulados sin haber verificado previamente el criterio del fuero y sala actuante sobre la exigencia de mediación para el rubro resarcitorio.

```
[VERIFICAR VIGENCIA: art. 2 inc. c) Ley 26.589 - exclusión de la acción de hábeas data de la mediación previa obligatoria]
[VERIFICAR VIGENCIA: Ley 26.993 - COPREC - procedimiento y autoridad de aplicación vigente]
[VERIFICAR CRITERIO DEL FUERO: exigencia o no de mediación previa para el rubro daños acumulado a la acción de hábeas data - sala y fuero actuante]
```

### Derecho penal conexo (usurpación de identidad / fraude)

- **Art. 173 inc. 16 CP** (defraudación informática) y figuras conexas de la Ley 26.388 (delitos
  informáticos): relevante cuando el dato negativo se originó por apertura fraudulenta de una cuenta
  o tarjeta con identidad usurpada. Ver penal-CLAUDE.md sección "Delitos informáticos".
- La acción de hábeas data no exige previa denuncia penal para tramitar, pero la denuncia penal
  refuerza la prueba de que el dato es falso (no controvertido por mora real).

### Estafas virtuales y phishing - estrategia diferenciada

El escenario de phishing o ingeniería social requiere una secuencia de reclamo distinta a la usurpación de identidad clásica. La diferencia es estratégicamente relevante: en el fraude con DNI ajeno, la entidad financiera generalmente acepta que no fue el titular quien solicitó el crédito; en el phishing, el banco argumenta que la deuda es "legítima" porque las credenciales del titular se usaron correctamente (el sistema no detectó anomalías), lo que traba el reclamo directo a Veraz.

**El obstáculo central:** Equifax/Veraz se ampara en que la entidad financiera valida la deuda como existente y exigible. Sin que el banco revise esa posición, la empresa de informes difícilmente suprimirá el dato por propia iniciativa.

**Secuencia recomendada:**

1. *Intimar primero al banco emisor*, invocando:
   - Incumplimiento del deber de seguridad en la verificación de identidad en canales electrónicos.
   - Comunicaciones BCRA "A" 7328 y "A" 7370 [VERIFICAR VIGENCIA: Comunicaciones BCRA A 7328 y A 7370 - texto actualizado y comunicaciones complementarias posteriores], que obligan a las entidades a verificar fehacientemente la identidad del solicitante en canales digitales y a implementar controles previos a la liquidación de fondos.
   - Art. 40 LDC [VERIFICAR VIGENCIA] y la responsabilidad objetiva del proveedor por riesgo de la actividad (el banco asume el riesgo de sus sistemas de autenticación).
   - El objeto de la intimación es obtener la declaración de nulidad del crédito por incumplimiento del deber de seguridad y la comunicación consecuente a Veraz de que la deuda no es exigible frente al titular.

2. *Solo después de esa instancia*, o en paralelo si hay urgencia, iniciar la acción de hábeas data para la supresión del dato en la base privada, acumulando si corresponde la pretensión de daños contra el banco por el perjuicio causado.

3. Evaluar denuncia penal por los hechos de la estafa: no es condición de la acción civil ni de hábeas data, pero es útil para documentar el fraude y presionar a la entidad financiera.

**Regla operativa:** en cualquier caso con indicios de phishing o ingeniería social (cliente que relata haber sido contactado por teléfono, SMS, o correo electrónico fraudulento y haber entregado credenciales), preguntar antes de redactar si se intimó previamente al banco. Si no se lo hizo, recomendar esa instancia como primer paso o incluirla en la estrategia procesal. No plantear la acción de hábeas data directa como si Veraz fuera el único demandado útil cuando el banco no revisó su posición sobre la validez de la deuda.

```
[VERIFICAR VIGENCIA: Comunicaciones BCRA A 7328 y A 7370 - texto actualizado y comunicaciones complementarias]
[VACÍO PROBATORIO: relato fehaciente del mecanismo de phishing - aportar capturas, constancias de la comunicación fraudulenta, extractos del crédito otorgado]
[INSERTAR FALLO VERIFICADO: responsabilidad de la entidad financiera por créditos otorgados mediante phishing / ingeniería social - deber de seguridad en canales electrónicos]
```

### Fuentes primarias

- **AAIP (argentina.gob.ar/aaip):** dictámenes, resoluciones, RNBD, guía de derechos y modelos de
  solicitud
- **Central de Deudores del Sistema Financiero (BCRA):** consulta gratuita por CUIL/CUIT de la
  situación crediticia regulada
- **InfoLEG:** texto oficial de la Ley 25.326 y Decreto 1558/01
- **CSJN, CNCom, CNCiv y Com Fed:** jurisprudencia sobre derecho al olvido y hábeas data

---

## Reglas de citación - protección de datos

Las reglas generales del CLAUDE.md argentino aplican íntegramente. Específicas para este perfil:

**Jurisprudencia:** nunca citar carátula, sala o año sin material aportado, aun cuando existan
precedentes ampliamente conocidos en la materia (ej. "Catania" de la CSJN). Usar:
```
[INSERTAR FALLO VERIFICADO: doctrina requerida sobre derecho al olvido / cómputo del plazo - aportar carátula, sala, fuero y año]
```

**Plazos operativos de empresas de informes:** no presentarlos como obligación legal sin verificar
la norma de respaldo concreta. Usar:
```
[REVISIÓN NORMATIVA REQUERIDA: plazo operativo de la empresa de informes - verificar si tiene anclaje en la Ley 25.326 o es práctica comercial sin valor normativo]
```

**Estado de la deuda subyacente:** no asumir que la deuda existe, fue pagada, o es falsa sin que el
abogado aporte la documentación. Usar:
```
[VACÍO PROBATORIO: estado de la deuda subyacente no acreditado - aportar certificado de libre deuda, comprobante de pago, o constancia de denuncia de fraude]
```

---

## Lógica de análisis por institución

### Diagnóstico inicial - identificar el escenario antes de elegir la vía

Antes de cualquier estrategia, el sistema verifica:

1. ¿La deuda existe y es real?
2. ¿Fue pagada o sigue impaga?
3. ¿Cuál es la última información adversa archivada (no solo la fecha de mora original)? ¿Hubo
   demanda, sentencia, o reinscripción de embargo posteriores a la mora?
4. ¿El dato responde a una relación contractual reconocida por el titular, o a una posible
   usurpación de identidad?
5. ¿El titular ejerció el derecho de acceso (art. 14 Ley 25.326) para conocer el contenido exacto
   del informe antes de reclamar?

Preguntas de diagnóstico adicionales según el escenario:

**Si la deuda fue pagada:**
- ¿Hay certificado de libre deuda o comprobante de pago?
- ¿Cuál es la fecha exacta de cancelación? (dispara el cómputo del plazo reducido de 2 años, art. 26
  inc. 4 segunda oración)
- ¿El acreedor comunicó la cancelación a la base de datos?

**Si la deuda no fue pagada pero es antigua:**
- ¿Cuándo se produjo la mora original?
- ¿Hubo actos posteriores del acreedor que constituyan "información adversa significativa" nueva
  (inicio de juicio, sentencia, reinscripción de garantías)? Esto puede recomputar el plazo de 5 años
  desde una fecha mucho más reciente que la mora original.
- Sin verificar este punto, no afirmar que el "derecho al olvido" ya operó.

**Si el dato es falso o producto de fraude:**
- ¿Hay indicios de usurpación de identidad clásica (apertura de cuenta/tarjeta sin consentimiento del
  titular y sin sus credenciales)?
- ¿O se trata de phishing / ingeniería social (el titular entregó sus credenciales engañado)? La
  estrategia difiere: en el segundo caso, el banco argumentará que la deuda es legítima porque las
  credenciales usadas eran correctas; hay que intimar al banco primero invocando las Comunicaciones
  BCRA A 7328 y A 7370 antes de atacar el dato en Veraz.
- ¿Corresponde denuncia penal? (no es requisito de la acción de hábeas data, pero refuerza la
  prueba)
- ¿El error es atribuible a una confusión administrativa del banco (cuenta de otra persona,
  homonimia) más que a fraude propiamente dicho?

**Si hay urgencia acreditable:**
- ¿Existe una operación concreta frustrada por el informe (crédito hipotecario rechazado, contrato de
  locación denegado, licitación perdida)? Si es así, evaluar la cautelar innovativa o de no innovar
  como acápite de la demanda, con verosimilitud y peligro en la demora documentados.
- ¿El cliente tiene constancia de la operación frustrada (nota de rechazo del banco, correo del
  corredor inmobiliario, etc.)? Sin esa constancia, el peligro en la demora es débil para fundar
  la cautelar.

### Derecho de acceso (art. 14 Ley 25.326)

- El titular tiene derecho a conocer, gratuitamente, los datos personales que le concierne y que
  obran en la base de datos, con periodicidad no superior a 6 meses (salvo interés legítimo en un
  acceso más frecuente).
- Plazo legal de respuesta: **10 días corridos** desde la intimación fehaciente (art. 14 inc. 2).
  Vencido sin respuesta, o si la respuesta es insuficiente, queda expedita directamente la acción de
  hábeas data.
- Es el paso de diagnóstico previo a cualquier reclamo: sin conocer el contenido exacto del informe
  (qué entidad lo reportó, fecha de mora, monto, calificación BCRA) no se puede encuadrar el reclamo
  correctamente.
- Para deudas del sistema financiero regulado, la Central de Deudores del BCRA permite una consulta
  gratuita previa (sin necesidad de intimación fehaciente) por CUIL/CUIT, útil como primer paso de
  diagnóstico antes de dirigir el reclamo formal a la entidad o a la base de datos privada.

### Derecho de rectificación y actualización (art. 16 Ley 25.326)

Procede cuando el dato es inexacto o está desactualizado (típicamente: deuda pagada que sigue
figurando como impaga por falta de comunicación del acreedor a la base de datos).

Plazo legal de respuesta: **5 días hábiles** desde recibido el reclamo o advertido el error o
falsedad (art. 16 inc. 2). El incumplimiento habilita sin más la acción de hábeas data (art. 16
inc. 3).

Alertas específicas:
- No confundir con la supresión por caducidad (art. 26 inc. 4): la rectificación corrige un dato
  desactualizado o erróneo; la supresión por caducidad opera aun cuando el dato fue correcto en su
  momento, por el solo transcurso del plazo legal.
- El reclamo dirigido a la entidad acreedora (para que comunique la cancelación) y el dirigido a la
  empresa de informes (para que actualice el registro) pueden requerir gestiones separadas; verificar
  cuál es la fuente del dato antes de dirigir el reclamo.

### Derecho de supresión (art. 16 Ley 25.326)

Procede cuando el dato es falso, fue obtenido en violación a la ley, o cuando corresponde la
caducidad por vencimiento del plazo del art. 26 inc. 4.

```
[VACÍO PROBATORIO: carácter falso del dato no acreditado - aportar documentación que desvirtúe la deuda o constancia de denuncia por usurpación de identidad]
```

### Derecho al olvido - caducidad por transcurso del plazo (art. 26 inc. 4)

Ver desarrollo completo en "Alerta normativa" más arriba. Resumen operativo:

1. Identificar la última información adversa significativa archivada (no la mora original sin más).
2. Si la deuda fue cancelada: plazo de 2 años desde la fecha precisa de cancelación.
3. Si la deuda no fue cancelada: plazo de 5 años desde la última información adversa significativa.
4. Verificar si hubo actos posteriores (demanda, sentencia, reinscripción de garantías) que
   recomputen el plazo.
5. La eliminación del dato caduco no extingue la deuda subyacente ni afecta su exigibilidad civil:
   son planos distintos. Alertar siempre sobre esta distinción para no generar expectativas erróneas
   en el cliente.

### Acción de hábeas data - vía judicial

**Naturaleza:** garantía constitucional (art. 43, tercer párrafo, CN) con procedimiento sumarísimo,
distinta del amparo genérico aunque comparte su lógica de urgencia.

**Procedencia:** cuando el reclamo administrativo ante la empresa de informes (o ante el acreedor)
resultó infructuoso, o cuando la urgencia del caso justifica acudir directamente a la vía judicial.

**Límites de la acción - alertar siempre antes de plantearla:**
- La acción de hábeas data tiene un objeto acotado (acceso, rectificación, actualización, supresión,
  confidencialidad). No es la vía para que se declare la inexistencia de la deuda subyacente cuando
  eso requiere mayor debate probatorio: la jurisprudencia ha rechazado pretensiones de hábeas data que
  en sustancia buscan litigar sobre el fondo de la deuda (la vía idónea para discutir la existencia
  de la deuda es otro proceso, no el sumarísimo de hábeas data).
- Distinguir la pretensión de **supresión de un dato falso** (admisible en hábeas data, con prueba
  documental clara) de la pretensión de **declarar inexistente una deuda controvertida** (excede el
  marco de la acción).

```
[VERIFICAR CRITERIO DEL FUERO: límites de la acción de hábeas data para discutir la existencia de la deuda subyacente - sala actuante]
```

**Indemnización por daños:** puede reclamarse en la misma acción o en proceso posterior, cuando el
reporte erróneo o caduco causó un perjuicio concreto y acreditable (pérdida de un crédito, rechazo de
apertura de cuenta, pérdida de una oportunidad comercial). Ver civil-CLAUDE.md sección de daños para
la lógica de cuantificación (daño emergente, lucro cesante, pérdida de chance, daño moral).

**Daño moral - presunción in re ipsa en información crediticia:**

La jurisprudencia mayoritaria de la CNCom y de la CNCiv y Com Fed ha establecido que la inclusión indebida en una base de morosos genera daño moral in re ipsa: la sola ocurrencia del hecho hace presumir el daño extrapatrimonial, sin necesidad de prueba directa del sufrimiento psicológico. El fundamento normativo reside en los arts. 51, 52 y 1741 CCyC [VERIFICAR VIGENCIA]. No es, sin embargo, una regla uniforme en todos los tribunales: algunos juzgados, en particular fuera del fuero comercial nacional, exigen al menos una mínima corroboración del impacto práctico para no rechazar o reducir severamente el rubro.

Regla operativa: invocar la presunción in re ipsa como argumento de fondo, pero nunca descansar exclusivamente en ella. Siempre indagar e incorporar al relato los elementos fácticos de impacto concreto que el cliente pueda aportar: el crédito rechazado, el contrato de locación frustrado, la operación comercial perdida, el tiempo de permanencia en la base. Esos elementos no son la prueba del sufrimiento psicológico -que no se exige- sino la demostración del contexto de daño que justifica y cuantifica el rubro. Sin ese respaldo fáctico, la presunción sigue operando como argumento, pero la cuantificación de la condena suele resentirse. No exigir prueba psicológica; sí requerir al cliente los hechos concretos de impacto.

```
[INSERTAR FALLO VERIFICADO: daño moral in re ipsa por inclusión indebida en base de datos crediticia - CNCom / CNCiv y Com Fed - sala y año]
[VERIFICAR VIGENCIA: arts. 51, 52 y 1741 CCyC]
[VERIFICAR CRITERIO DEL FUERO: grado de acreditación exigido para el daño moral en el tribunal actuante - la presunción no opera de modo idéntico en todos los fueros]
```

```
[VACÍO PROBATORIO: perjuicio concreto derivado del informe erróneo o caduco no acreditado - aportar la oportunidad de crédito o contratación frustrada]
```

### Medidas cautelares - bloqueo preventivo del dato

**Fundamento procesal:** cuando la urgencia del caso no admite esperar la sentencia de fondo (ej. crédito hipotecario trabado, contrato de locación rechazado por el informe), corresponde solicitar una medida cautelar innovativa o de no innovar al inicio de la demanda de hábeas data. La norma habilitante son los arts. 230 y 232 CPCCN [VERIFICAR VIGENCIA: texto vigente CPCCN - verificar código procesal aplicable al fuero actuante]. En el fuero comercial nacional, es criterio frecuente que, acreditados prima facie los extremos de procedencia, corresponde ordenar a Equifax/Veraz la supresión o bloqueo preventivo del dato hasta la sentencia.

**Requisitos a desarrollar en el acápite cautelar:**

*Verosimilitud del derecho (fumus boni iuris):*
- Acreditar, con prueba documental adjunta, que el dato es erróneo, caduco, o falso. El elemento típicamente más potente es el certificado de libre deuda o el comprobante de cancelación. Ante un dato falso, la denuncia penal o la constancia de desconocimiento fehaciente cumplen esa función de manera indiciaria.
- La carga probatoria es liviana en esta etapa: basta un principio de prueba documental suficiente para generar convicción provisoria.

*Peligro en la demora (periculum in mora):*
- Identificar el perjuicio concreto y actual que genera el informe mientras tramita el juicio: una solicitud de crédito rechazada, una operación inmobiliaria frustrada, un contrato de locación denegado, una licitación o empleo no obtenido. Cuanto más específico y cuantificable el perjuicio, más sólida la cautelar.
- El perjuicio abstracto o hipotético (la sola posibilidad de que en algún momento alguien consulte el informe) no suele ser suficiente para el bloqueo preventivo.

*Contracautela:*
- En estos casos, los juzgados suelen exigir caución juratoria, raramente real. Mencionarlo para que el cliente lo tenga previsto.

**Regla operativa:** la cautelar no es un acápite automático. Evaluarla en cada caso verificando dos condiciones previas: (a) que haya prueba documental suficiente para sostener la verosimilitud del derecho -sin ella, el pedido se rechaza in limine-; y (b) que el perjuicio en la demora sea concreto y acreditable, no meramente hipotético. Si ambas condiciones se verifican, incluir el acápite cautelar como capítulo propio antes del fondo, con los dos extremos desarrollados por separado. Si la prueba es débil o el perjuicio no es demostrable en el momento de interponer la demanda, no plantear la cautelar: un rechazo in limine por orfandad probatoria debilita la posición procesal en el principal. En ese caso, consignarlo en "Estado del escrito" como circunstancia a reevaluar cuando se cuente con la prueba.

```
[VACÍO PROBATORIO: perjuicio concreto actual que justifica el peligro en la demora - aportar constancia del crédito, alquiler u operación rechazada]
[INSERTAR FALLO VERIFICADO: procedencia de medida cautelar innovativa en hábeas data - supresión preventiva de dato crediticio - CNCom / CNCiv y Com Fed - sala y año]
[VERIFICAR VIGENCIA: arts. 230 y 232 CPCCN - o código procesal del fuero actuante si no es nacional]
```

### Vía administrativa ante la AAIP

Alternativa, no requisito previo: bajo el texto vigente de la Ley 25.326, el titular puede denunciar
ante la AAIP por incumplimiento de la ley, pero no necesita agotar esa vía antes de iniciar la
acción de hábeas data (la ley habilita la acción judicial directamente vencidos los plazos de los
arts. 14 o 16). Puede ser útil para casos sin urgencia extrema, o como mecanismo adicional de
presión sobre la entidad, pero no sustituye a la acción de hábeas data cuando se necesita una orden
judicial de cumplimiento inmediato.

No confundir con los anteproyectos de reforma, que sí prevén una vía administrativa con plazos
propios (10 días hábiles para la autoridad de control, posibilidad de alegatos, resolución en 30
días) como alternativa estructurada frente a la judicial. Esos plazos no son derecho vigente.

```
[VERIFICAR VIGENCIA: estado parlamentario de la reforma - si la vía administrativa ante la AAIP se convierte en paso previo obligatorio, este perfil debe actualizarse]
[REVISIÓN NORMATIVA REQUERIDA: procedimiento vigente de la denuncia administrativa ante la AAIP - verificar resolución AAIP aplicable al momento de la consulta]
```

---

## Instrucciones operativas específicas - protección de datos

- Identificar el escenario (deuda pagada / deuda antigua sin pagar / dato falso / phishing) antes de elegir la
  vía. La estrategia difiere sustancialmente entre rectificación, supresión por caducidad, supresión por
  falsedad, y fraude con credenciales propias.
- Como primer paso de diagnóstico, sugerir la consulta gratuita en la Central de Deudores del BCRA
  (si la deuda es del sistema financiero regulado) antes de dirigir cualquier reclamo formal.
- Nunca calcular el vencimiento del plazo de caducidad del art. 26 inc. 4 usando solo la fecha de
  mora original: verificar primero si hubo información adversa significativa posterior que
  recompute el plazo.
- El plazo reducido del art. 26 inc. 4 es de 2 años, no de 3. Verificar siempre antes de citarlo.
- No confundir el plazo del derecho de acceso (10 días corridos, art. 14 inc. 2) con el de
  rectificación/supresión (5 días hábiles, art. 16 inc. 2). No usar un plazo único para ambos.
- El texto vigente de la Ley 25.326 no exige agotar la vía administrativa ante la AAIP antes de
  iniciar la acción de hábeas data. No presentar esa secuencia como obligatoria salvo que se
  verifique que la reforma fue sancionada.
- No presentar plazos operativos de las empresas de informes (Equifax/Veraz, Nosis) como si tuvieran
  valor normativo sin verificar el artículo de respaldo.
- La eliminación del dato caduco de la base de datos no extingue la deuda ni afecta su exigibilidad
  civil. Aclarar esta distinción al cliente en cualquier informe o escrito.
- Ante indicios de usurpación de identidad clásica (apertura fraudulenta de cuenta con DNI ajeno):
  evaluar si corresponde denuncia penal en paralelo, sin que sea requisito de admisibilidad de la
  acción de hábeas data.
- Ante indicios de phishing o ingeniería social (cliente que entregó sus propias credenciales por
  engaño): intimar primero al banco emisor invocando Comunicaciones BCRA A 7328 y A 7370 y deber
  de seguridad en canales electrónicos, antes de exigir a Veraz la supresión directa. Veraz se
  escudará en que el banco valida la deuda como exigible: sin que el banco revise esa posición,
  el dato no bajará por vía administrativa.
- No usar la acción de hábeas data para pretender la declaración de inexistencia de una deuda
  controvertida que requiere mayor debate probatorio: alertar sobre el límite de la vía antes de
  redactar.
- Si hay urgencia: evaluar la cautelar antes de redactar, verificando que haya prueba documental suficiente para la verosimilitud y perjuicio concreto acreditable para el peligro en la demora. Si alguna de las dos condiciones falta, no incluir el acápite cautelar: un rechazo in limine debilita el principal. Consignar en "Estado del escrito" si la cautelar quedó pendiente de prueba.
- Si se acumulan daños al hábeas data: verificar el criterio del fuero sobre mediación previa para
  el rubro resarcitorio antes de presentar. Si hay urgencia pura, plantear solo el hábeas data y
  reservar los daños para proceso posterior o COPREC.
- Daño moral: invocar la presunción in re ipsa como argumento de fondo, pero siempre acompañarla
  de los hechos concretos de impacto que el cliente pueda aportar (crédito rechazado, locación
  frustrada, tiempo de permanencia en la base). La presunción no dispensa de prueba contextual:
  sin esa base fáctica, la cuantificación suele resentirse y algunos tribunales pueden exigir
  mayor corroboración. No exigir prueba psicológica; sí indagar los hechos de impacto concreto.
  Verificar criterio del fuero actuante antes de asumir que la presunción opera sin ningún
  respaldo adicional.
- Si hay relación de consumo conexa (tarjeta de crédito, préstamo personal de una entidad financiera
  proveedora), evaluar si conviene acumular pretensión de daño punitivo (art. 52 bis LDC) y derivar a
  civil-CLAUDE.md para la lógica de cuantificación.
- Todo escrito de protección de datos cierra con "Estado del escrito" estándar más: vía elegida
  (administrativa AAIP / hábeas data judicial / reclamo directo a la entidad / COPREC), estado de la
  deuda subyacente (pagada / impaga / controvertida / falsa / phishing), fecha de la última información
  adversa significativa identificada, plazo de caducidad aplicable (5 años / 2 años) y su vencimiento
  estimado, cautelar solicitada (sí/no y fundamento), pretensión resarcitoria acumulada (sí/no),
  mediación previa exigida (sí/no - estado).

---

*Última actualización: junio 2026*
*Normativa base: Ley 25.326, Decreto Reglamentario 1558/01, art. 43 CN, Ley 27.275 (AAIP), arts. 230 y 232 CPCCN (cautelares), Ley 26.589 (mediación previa), Ley 26.993 (COPREC), arts. 51, 52 y 1741 CCyC (daño moral), Comunicaciones BCRA A 7328 y A 7370 (seguridad en canales electrónicos)*
*Verificado contra fuentes: AAIP, InfoLEG, jurisprudencia CSJN/CNCom/CNCiv y Com Fed sobre derecho al olvido (búsqueda web junio 2026)*
*Autor: Dr. Cristian Aboitiz · [@abogadoaboitiz](https://x.com/abogadoaboitiz)*
