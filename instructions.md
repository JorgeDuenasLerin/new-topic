# Instrucciones para Generación de Contenido Académico

## Contexto del Proyecto
Este proyecto contiene materiales académicos organizados en tres categorías principales:
- **Diapositivas**: Presentaciones en Markdown con estilo UPM
- **Tareas**: Prácticas de LaTeX con rúbricas detalladas
- **Exámenes**: Preguntas tipo test en formato GIFT

## 1. Diapositivas (Markdown)

### Principios Generales
- **Minimalismo visual**: Máximo 3-4 puntos clave por diapositiva
- **Jerarquía clara**: Un concepto principal por slide
- **Apoyos visuales**: Sugerir diagramas, ejemplos o código cuando sea apropiado

### Estructura de Contenido
```markdown
# Título Conciso

- Punto clave 1 (máximo 10-12 palabras)
- Punto clave 2
- Punto clave 3

---

## Notas del Expositor

- Explicación detallada del contexto
- Ejemplos adicionales para desarrollar
- Preguntas anticipadas de la audiencia
- Timing sugerido: X minutos
```

### Buenas Prácticas
- **Texto**: Frases cortas, verbos activos
- **Evitar**: Párrafos, texto denso, más de 30 palabras por viñeta
- **Incluir**: Notas extensas para cada slide con detalles y narrativa completa
- **Transiciones**: Conectar ideas entre slides en las notas

---

## 2. Tareas de LaTeX

### Estructura de la Práctica
```latex
\documentclass[a4paper,12pt]{article}

% Preámbulo estándar
\usepackage[utf8]{inputenc}
\usepackage[spanish]{babel}
\usepackage{amsmath, amssymb}
\usepackage{graphicx}

% Enunciado claro y específico
% Objetivos de aprendizaje explícitos
% Secciones bien delimitadas
```

### Elementos Obligatorios
1. **Introducción**: Contexto y objetivos (1-2 párrafos)
2. **Ejercicios**: Numerados con dificultad progresiva
3. **Recursos**: Fórmulas, referencias, hints cuando sea apropiado
4. **Entregables**: Lista clara de qué se debe entregar

### Rúbrica Asociada (TXT)

```
RÚBRICA DE EVALUACIÓN - [Nombre de la Práctica]

Criterios de Evaluación (Total: 10 puntos)

1. CORRECCIÓN TÉCNICA (4 puntos)
   [4.0] Solución completamente correcta con todos los pasos justificados
   [3.0] Solución correcta con justificaciones menores incompletas
   [2.0] Solución parcial con errores conceptuales menores
   [1.0] Intento con errores significativos
   [0.0] No entregado o sin relación con el enunciado

2. PRESENTACIÓN Y FORMATO (2 puntos)
   [2.0] LaTeX correcto, estructura clara, legible
   [1.5] Formato adecuado con errores menores
   [1.0] Formato deficiente pero comprensible
   [0.0] Ilegible o no usa LaTeX

3. EXPLICACIÓN Y JUSTIFICACIÓN (2 puntos)
   [Descripción específica del criterio]

4. ORIGINALIDAD/PROFUNDIDAD (2 puntos)
   [Descripción específica del criterio]

NOTAS ADICIONALES:
- Plagio: 0 puntos automático
- Entrega tardía: -1 punto por día
```

### Formato de Rúbrica
- **Lenguaje directo**: Sin ambigüedades
- **Cuantificable**: Puntuación numérica clara
- **Exhaustiva**: Cubrir todos los aspectos evaluables
- **Justa**: Criterios proporcionales al esfuerzo requerido

---

## 3. Examen (Formato GIFT)

### Especificaciones Técnicas
- **4 opciones** por pregunta (A, B, C, D)
- **1 única respuesta** correcta
- **Penalización**: -33% por error (restar 0.33 puntos por cada fallo)
- **En blanco**: 0 puntos (neutral)

### Formato GIFT Estándar
```gift
::Título de la Pregunta::
Enunciado claro de la pregunta {
    =Respuesta correcta
    ~%-33%Distractor plausible 1
    ~%-33%Distractor plausible 2
    ~%-33%Distractor plausible 3
}
```

### Criterios de Calidad

#### Enunciados
- Precisos y autocontenidos
- Sin ambigüedades ni trampas lingüísticas
- Longitud moderada (1-3 líneas)

#### Respuesta Correcta
- Inequívocamente correcta
- Basada en el material enseñado

#### Distractores Efectivos
- **Plausibles**: Podrían confundir a quien no domina el tema
- **Homogéneos**: Longitud y formato similar a la correcta
- **Basados en errores comunes**: Conceptual mistakes típicos
- **Evitar**: Opciones absurdas o "todas las anteriores"

### Distribución Recomendada
- 40% preguntas conceptuales
- 40% preguntas de aplicación
- 20% preguntas de análisis/síntesis

---

## 4. Estructura de Archivos

```
conocimiento/información.md  → Base de conocimiento para generar todo
diapositivas/main.md         → Presentación principal
diapositivas/styles/upm.css  → Estilos personalizados
tareas/*.tex                 → Enunciados LaTeX
tareas-rubrica/*.md          → Criterios evaluación
examen/*.gift                → Banco preguntas GIFT
```

---

## 5. Flujo de Trabajo Sugerido

1. **Analizar** `conocimiento/información.md` para comprender el alcance
2. **Identificar** conceptos clave, objetivos de aprendizaje
3. **Generar** materiales en este orden:
   - Diapositivas (visión general)
   - Tareas (práctica)
   - Examen (evaluación)
4. **Revisar** coherencia entre los tres tipos de materiales
5. **Validar** que la dificultad progrese adecuadamente

---

## 6. Checklist de Calidad

### Antes de Finalizar
- [ ] Las diapositivas tienen notas detalladas
- [ ] Cada slide tiene máximo 4 puntos
- [ ] La rúbrica suma exactamente 10 puntos
- [ ] Todas las preguntas GIFT tienen exactamente 4 opciones
- [ ] Los distractores son plausibles
- [ ] La penalización está correctamente marcada (`~%-33%`)
- [ ] El contenido es coherente entre documentos
- [ ] No hay errores ortográficos o de formato

---

## Notas Finales

- **Consistencia terminológica**: Usar los mismos términos en diapositivas, tareas y examen
- **Alineación constructiva**: Los exámenes deben evaluar lo practicado en las tareas
- **Feedback implícito**: Las rúbricas deben guiar el aprendizaje