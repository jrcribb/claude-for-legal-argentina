---
name: escritos-penal
description: Redacta escritos de derecho penal argentino (excarcelación o cese de prisión preventiva, solicitud de suspensión del juicio a prueba, hábeas corpus correctivo, nulidad de allanamiento, recurso de casación). Activar ante cualquier pedido de redacción de un escrito penal de estos tipos, aunque el usuario no nombre el modelo. Trabaja junto con el perfil penal-CLAUDE.md y la doctrina penal-DOCTRINA.md.
---

# Escritos de derecho penal

> Parte del repositorio claude-for-legal-argentina.
> Autor: Dr. Cristian Aboitiz · [@abogadoaboitiz](https://x.com/abogadoaboitiz)

---

## Descripción

Redacta escritos penales para abogados matriculados. El abogado firma y asume la responsabilidad profesional de cada pieza. Este skill redacta; el abogado revisa y decide. Opera siempre junto con el perfil `penal-CLAUDE.md`, que aporta la lógica de fondo (fueros y códigos procesales, etapas, prisión preventiva, probation, nulidades, recursos, ejecución), y con `penal-DOCTRINA.md`, que aporta los leading cases verificados.

---

## Antes de redactar - datos mínimos

Si el usuario no indicó los tres datos, preguntarlos antes de escribir:

- Fuero y código procesal: federal (CPPN/CPPF según implementación), nacional ordinario (CPPN), CABA (CPPCABA) o PBA (CPPBA) con departamento judicial. Determina el articulado procesal y los plazos.
- Tipo de escrito: cuál de los cinco modelos.
- Rol: defensa o querella/acusación particular.

No transpolar institutos ni plazos entre fueros sin verificación.

---

## Cuándo usar

Activar cuando el usuario pida redactar o preparar uno de estos escritos: excarcelación o cese de prisión preventiva, suspensión del juicio a prueba, hábeas corpus correctivo, nulidad de allanamiento, o recurso de casación. No es necesario que nombre el modelo.

No activar:
- Para el solo análisis estratégico o de viabilidad sin redacción: alcanza el perfil `penal-CLAUDE.md`.
- Para informe médico-legal pericial: usar `especialidades/medicina-legal-CLAUDE.md`.
- Para la faz tributaria de fondo del delito económico: integrar `tributario-CLAUDE.md`.

---

## Proceso

### Paso 1 - Encuadre

- Fuero y código procesal aplicables. En federal, verificar si rige el CPPN o el CPPF en esa etapa y distrito.
- Etapa procesal y situación del imputado (detenido o en libertad; medida cautelar vigente).
- Resolución que se impugna o decisión que se pide, con su fecha de notificación: define el plazo.
- Material disponible: la resolución impugnada, el acta de procedimiento, las constancias. Sin material, los hechos van con marcador.

### Paso 2 - Verificación normativa (no opcional)

Antes de incluir cualquier cita, leer la sección `## Alerta normativa - normas de vigencia variable` de `penal-CLAUDE.md` y aplicar sus reglas. Puntos críticos:

- Plazos: son perentorios. Ante un plazo de recurso, de excarcelación o de prescripción, emitir `[ALERTA PLAZO FATAL: norma - plazo - fecha de inicio del cómputo - vencimiento estimado]` antes del fondo.
- Articulado procesal: verificar el artículo exacto en el código del fuero (no asumir equivalencia entre CPPN, CPPF, CPPCABA y CPPBA).
- Implementación del CPPF: gradual; verificar antes de invocar institutos del CPPF.
- Tipos penales: artículo y código con `[VERIFICAR VIGENCIA]` en la primera mención; el CP se modifica con frecuencia (escala, tipo subjetivo, agravantes).

### Paso 3 - Elegir el modelo

| Situación | Modelo |
|---|---|
| Imputado detenido con prisión preventiva; pedido de libertad o cese | `modelos/excarcelacion-cese-prision-preventiva.md` |
| Delito con probation procedente; solicitud de suspensión del juicio a prueba | `modelos/solicitud-probation.md` |
| Privación de libertad legítima pero con condiciones ilegales o agravamiento | `modelos/habeas-corpus-correctivo.md` |
| Allanamiento sin orden o con orden defectuosa; prueba derivada | `modelos/nulidad-allanamiento.md` |
| Condena o resolución equiparable; agravio de casación | `modelos/recurso-casacion.md` |

---

## Reglas de integridad (inmodificables)

- Jurisprudencia: prohibido citar carátula, sala, año o expediente sin material aportado. Usar `[INSERTAR FALLO VERIFICADO: CSJN - doctrina requerida]` o la variante de sala/fuero. Los leading cases ya cargados en `penal-DOCTRINA.md` con cita oficial pueden invocarse, verificando el texto íntegro antes de transcribir considerandos: probation y consumo (Acosta 331:858, Góngora 336:392, Arriola 332:1963); recursos (Casal 328:3399); hábeas corpus (Verbitsky 328:1146); prisión preventiva (Nápoli 321:3630, Estévez 320:2105, Véliz, Díaz Bessone; Corte IDH: Bayarri, Jenkins, entre otros); exclusión probatoria y allanamiento (Rayford 308:733, Fiorentino 306:1752, Daray 317:1985, Quaranta 333:1674, entre otros).
- Hechos: no asumir nada que no figure en el material. Usar `[VACÍO PROBATORIO: descripción]`.
- Normas: en la primera mención, `[VERIFICAR VIGENCIA]`. Si se sabe derogada o modificada, informarlo y proponer la vigente.
- Nunca redactar un escrito que implique declaraciones autoincriminantes del imputado, salvo instrucción expresa y asumida del abogado.
- En defensa, el análisis parte de la presunción de inocencia (art. 18 CN / art. 8.2 CADH), no de la culpabilidad.

---

## Restricciones absolutas

- No citar el artículo procesal sin verificarlo en el código del fuero (no transpolar entre CPPN, CPPF, CPPCABA, CPPBA).
- No invocar institutos del CPPF sin verificar su implementación en el fuero y la etapa.
- No tratar un plazo de recurso o de excarcelación como prorrogable: son perentorios.
- No construir una nulidad sin demostrar el perjuicio concreto (principio de trascendencia).
- No asumir el contenido de un acta o de un peritaje no aportado.
- No citar Fallos por tomo y página de memoria; completar contra la fuente oficial.

---

## Racionalizaciones comunes

| Racionalización | Realidad |
|---|---|
| "La prisión preventiva se justifica por la gravedad del delito" | El único fundamento legítimo son los peligros procesales (fuga, entorpecimiento). La gravedad y la pena en expectativa son indicios del peligro de fuga, no fundamento autónomo. |
| "Si el fiscal se opone, no hay probation" | Bajo la tesis amplia ("Acosta"), procede si se reúnen los presupuestos legales. En sistemas acusatorios el peso de la oposición es mayor; hay que atacar sus fundamentos. |
| "Cualquier vicio del allanamiento anula la causa" | Rige el principio de trascendencia: no hay nulidad sin perjuicio concreto al derecho de defensa. Hay que mostrar qué prueba de cargo deriva del acto viciado. |
| "La casación solo revisa el derecho, no los hechos" | La doctrina de la revisión amplia ("Casal") exige revisar todo lo revisable según la capacidad de rendimiento del tribunal, incluida la valoración de la prueba. |
| "El hábeas corpus reemplaza al recurso ordinario" | No es sustituto de las vías ordinarias del proceso; verificar que no exista otra vía más idónea antes de promoverlo. |

---

## Señales de alerta

- Fundar el cese de la prisión preventiva solo en la excepcionalidad, sin prueba de arraigo ni alternativa concreta.
- Plantear la nulidad sin identificar el perjuicio ni la prueba derivada.
- Citar un artículo procesal de otro fuero.
- Omitir el cálculo del plazo del recurso desde la notificación.
- Invocar un instituto del CPPF sin verificar su implementación.
- Citar un fallo con carátula y sala sin material, fuera de los verificados en `penal-DOCTRINA.md`.

---

## Verificación al cierre

- [ ] Fuero y código procesal identificados; articulado verificado en el código del fuero
- [ ] Etapa procesal y situación del imputado consignadas
- [ ] Sección de alerta normativa de `penal-CLAUDE.md` consultada (Paso 2)
- [ ] Modelo correspondiente leído (Paso 3)
- [ ] Plazo del recurso o de la vía calculado desde la notificación; ALERTA PLAZO FATAL si corresponde
- [ ] Presunción de inocencia como punto de partida en defensa
- [ ] Marcadores de integridad colocados (fallos, hechos, normas, actas y periciales)
- [ ] Cierre con "Estado del escrito" (más fuero y código aplicado, etapa procesal, plazo próximo)

---

*Última actualización: junio 2026*
*Normativa base: CN art. 18 y 43; CADH art. 8; CP (Ley 11.179) arts. 76 bis-quater; Ley 23.098 (hábeas corpus); CPPN (Ley 23.984), CPPF (Ley 27.063), CPPCABA (Ley 2303), CPPBA (Ley 11.922); Ley 48 art. 14. Perfil de fondo en penal-CLAUDE.md; doctrina en penal-DOCTRINA.md*
