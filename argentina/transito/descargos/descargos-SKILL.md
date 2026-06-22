---
name: descargos-transito
description: Redacta descargos y recursos contra infracciones y multas de tránsito en cualquier jurisdicción argentina (Nacional/ANSV-SINAI, CABA/DGAI, PBA, otras provincias), con identificación previa de la autoridad de juzgamiento y verificación normativa por jurisdicción. Activar ante cualquier mención de multa de tránsito, infracción, acta, fotomulta, descargo, impugnación, apelación de multa, juez de faltas, controlador, denuncia de venta o cinemómetro. No requiere que el usuario diga "descargo" explícitamente.
---

# Descargos y recursos de tránsito

> Parte del repositorio claude-for-legal-argentina.
> Autor: Dr. Cristian Aboitiz · @abogadoaboitiz
> Opera bajo el perfil argentina/transito-CLAUDE.md. Leer ese perfil antes de redactar.

---

## Descripción

Redacta descargos administrativos y recursos contra infracciones de tránsito para abogados matriculados. El abogado firma y asume la responsabilidad profesional por cada pieza. Este skill redacta; el abogado revisa y decide.

---

## Cuándo usar

Activar cuando el usuario pida redactar o preparar:

- Descargo ante controlador o juez de faltas.
- Recurso administrativo o de apelación contra una sanción de tránsito.
- Impugnación de fotomulta o de acta por defectos formales.
- Cualquier pieza de defensa frente a una infracción de tránsito, aunque no use la palabra "descargo".

No activar para infracciones que configuren delito (lesiones, homicidio culposo, conducción peligrosa tipificada): eso corresponde al perfil penal.

---

## Proceso

### Paso 1 - Identificación de jurisdicción y autoridad

Antes de redactar, determinar y consignar:

- Organismo emisor del acta (municipio, CABA, ANSV/rutas nacionales, concesionario vial).
- Autoridad de juzgamiento competente (controlador, juez de faltas municipal o provincial).
- Jurisdicción y código de faltas aplicable.
- Estado del acta (notificada, en intimación, firme, en apremio).

Sin estos datos no se puede elegir la vía ni el plazo. Si faltan: `[VACÍO PROBATORIO: dato faltante]`.

Modalidad a distancia (art. 71 Ley 24.449). Si el infractor se domicilia a más de 60 km del juzgado de origen, evaluar la defensa por escrito por correo postal de fehaciente constatación: el juzgado debe resolver el descargo sin comparecencia física. La prórroga al juez del domicilio solo procede si hay convenio de reciprocidad entre las jurisdicciones. Si se retuvo la licencia en el control (art. 72), ambas vías quedan bloqueadas y se tramita ante el juzgado que retuvo el documento. Ver el detalle en transito-CLAUDE.md, sección "Competencia por domicilio del infractor".

### Paso 2 - Advertencia estratégica

Recordar al usuario, antes de avanzar, el efecto del descargo: pérdida del descuento por pago voluntario y riesgo de abonar el 100% más costos si se rechaza. Plantear la relación costo/beneficio frente a la solidez de la causal.

### Paso 3 - Recolección de datos

Presentar al usuario:

---
Para redactar el descargo necesito algunos datos. Tiene dos opciones:

OPCION A: Me proporciona todos los datos ahora y redacto el borrador completo.

OPCION B: Me indica solo el tipo de descargo y la causal, y redacto con espacios marcados como [DATO A COMPLETAR] para que el abogado los complete antes de presentar.

Para la Opción A necesito:
- Jurisdicción y autoridad de juzgamiento (municipio/CABA/ANSV; controlador o juez de faltas).
- Número de acta y fecha de la infracción.
- Fecha de notificación.
- Falta imputada (tipificación que figura en el acta).
- Dominio del vehículo y datos del titular o autorizado.
- Causal de impugnación que se invoca y los hechos que la sustentan.
- Prueba disponible (médica, denuncia de venta, fotografías, etc.).
- Si lo presenta letrado o un tercero: poder o autorización.
---

### Paso 4 - Verificación normativa

Aplicar las reglas de citación inmodificables del perfil:

- Cada norma con `[VERIFICAR VIGENCIA]`. Cuidado con la numeración del código de faltas: varía por provincia.
- Plazos con `[VERIFICAR PLAZO: norma de la jurisdicción]`.
- Montos/UF con `[VERIFICAR MONTO ACTUALIZADO: concepto - fuente]`.
- Jurisprudencia solo con material aportado; sin él, `[INSERTAR FALLO VERIFICADO: doctrina requerida]`.

Si la jurisdicción no está documentada en el perfil, aplicar el bloque `[JURISDICCIÓN NO DOCUMENTADA: ...]` y verificar ley de adhesión, código de faltas, plazos y vía recursiva antes de citar artículos.

### Paso 5 - Selección de modelo

Elegir el modelo según la causal, en transito/descargos/modelos/:

- modelo-01-nulidad-formal.md - defectos del acta y fotomultas.
- modelo-02-urgencia-fuerza-mayor.md - estado de necesidad acreditado.
- modelo-03-denuncia-de-venta.md - vehículo enajenado antes del hecho.
- modelo-04-falta-notificacion-prescripcion.md - notificación tardía o prescripción.
- modelo-05-error-identificacion.md - dominio o titular mal consignados; cesión de uso en flotas.
- modelo-06-recurso-apelacion.md - recurso contra la resolución que confirma la sanción.
- modelo-07-defensa-a-distancia-art71.md - modalidad de defensa por escrito a distancia (más de 60 km, art. 71 párr. 1); envuelve la causal de fondo.

### Paso 6 - Cierre

Todo descargo cierra con "Estado del escrito" (marcadores pendientes, normas a verificar, plazos y montos, decisiones por defecto).

---

## Estructura común del descargo

1. Encabezado dirigido a la autoridad de juzgamiento competente. Precisar el órgano exacto, no una fórmula genérica: el descargo se dirige al juez o jefe del organismo que efectivamente labró o juzga el acta. En esquemas mixtos (provincial vs municipal) elegir el correcto. Ejemplos:

```
OBJETO: PRESENTA DESCARGO ADMINISTRATIVO - IMPUGNA ACTA DE INFRACCIÓN.

SEÑOR JUEZ DEL JUZGADO ADMINISTRATIVO DE TRÁNSITO MUNICIPAL DE [municipio]:
[o] SEÑOR JEFE DE LA UNIDAD DE RESOLUCIONES VIALES DE [jurisdicción]:
```

Denominaciones oficiales de órganos provinciales (excluyen juzgados de faltas municipales ordinarios), según la matriz del perfil:
- Mendoza: Unidad Resolutiva Vial (URV), por zonas (Gran Mendoza, Zona Este, Zona Sur, Valle de Uco); o Juzgado Administrativo de Tránsito Municipal de [municipio].
- Misiones: Juzgado de Faltas de la Provincia de Seguridad Vial (actas del Monitoreo Vial Misiones); o Tribunal de Faltas Municipal.
- Córdoba: Juzgado de Faltas de la Policía Caminera.
- Santa Fe: Juzgado de Faltas del SIJAI (bajo la APSV).
- San Luis: Tribunal de Faltas Municipal (Ciudad de San Luis, Villa Mercedes).

Si no se identifica el órgano con certeza, dejar `[VACÍO PROBATORIO: órgano de juzgamiento que figura en el acta]`.
2. Individualización del presentante (titular o autorizado/letrado) y del acta impugnada.
3. Objeto: deduce descargo / interpone recurso y solicita la absolución o nulidad.
4. Hechos.
5. Fundamentos: causal de impugnación con su sustento normativo y fáctico.
6. Prueba: ofrecimiento y acompañamiento de documental.
7. Petitorio.
8. Estado del escrito.
