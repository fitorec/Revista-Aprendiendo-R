# 📘 Manual de R Markdown

> **Autor:** Ing. Miguel Ángel Marcial Martínez (@Fitorec)  
> **Repositorio:** [fitorec/manual-R-markdown](https://github.com/fitorec/manual-R-markdown)

---

## 🧩 Descripción General

**Manual de R Markdown** es un proyecto educativo y práctico que busca documentar, paso a paso, el proceso de **creación de reportes técnicos, artículos y material científico utilizando R Markdown**.  

Este manual está orientado a quienes desean **aprender R Markdown desde un enfoque aplicado a la Ciencia de Datos**, integrando herramientas de análisis, visualización, y automatización de la generación de documentos reproducibles.

El proyecto también sirve como **bitácora personal y colaborativa**, donde se registran experiencias, configuraciones, plantillas y scripts usados en la generación de reportes profesionales en formato PDF, HTML o Word.

---

## 🎯 Objetivos del Proyecto

- Aprender a **estructurar y compilar documentos** con R Markdown.
- Explorar el **uso de LaTeX** y plantillas personalizadas para publicaciones académicas o revistas.
- Integrar ejemplos prácticos de **R en el contexto de Ciencia de Datos**.
- Documentar **buenas prácticas reproducibles** en la creación de reportes técnicos.
- Fomentar una comunidad de aprendizaje abierta sobre el uso de R Markdown.

---

## 🧠 Contenido del Manual

El manual se organiza por capítulos, cada uno centrado en un tema o herramienta clave:

| Sección | Descripción |
|----------|--------------|
| **Portada y estructura base** | Cómo crear plantillas personalizadas con LaTeX y R Markdown. |
| **Distribuciones estadísticas** | Ejemplos prácticos de uso de R para visualizar y analizar distribuciones. |
| **Gráficos y visualización** | Uso de librerías como `ggplot2` o `plotly` dentro de R Markdown. |
| **Automatización con Make y GitHub Actions** | Cómo automatizar la construcción y publicación de reportes. |
| **Licencias y publicación** | Agregar licencias, metadatos y estilos de publicación profesional. |

---

## ⚙️ Estructura del Repositorio

```

manual-R-markdown/
├── build_magazine.R       # Script principal para compilar el documento
├── docs/                  # Capítulos en formato .Rmd
├── latex/                 # Plantillas y componentes LaTeX
├── img/                   # Recursos visuales
├── metadata.yaml          # Metadatos del reporte
├── GNUmakefile            # Comandos de construcción automatizados
├── LICENSE                # Licencia Creative Commons BY-SA
├── CONTRIBUTING.md        # Guía para contribuir
└── README.md              # Este documento

```

---

## 🧰 Requisitos

Para compilar el manual localmente, asegúrate de tener instalados:

- [R](https://cran.r-project.org/)
- [Pandoc](https://pandoc.org/)
- [TinyTeX](https://yihui.org/tinytex/) (para compilar PDFs)
- Paquetes de R:
  ```r
  install.packages(c("rmarkdown", "knitr", "ggplot2"))
````

Luego, desde la terminal:

```bash
make build
```

Esto generará el archivo final `reporte.pdf` (o `manual.pdf`) con todos los capítulos compilados.

---

## 🤝 Cómo Contribuir

Cualquier persona puede contribuir revisando el contenido, agregando ejemplos o proponiendo mejoras.

Consulta la guía completa en [CONTRIBUTING.md](CONTRIBUTING.md).

---

## 📜 Licencia

Este proyecto se distribuye bajo la licencia
**Creative Commons Atribución-CompartirIgual 4.0 Internacional (CC BY-SA 4.0)**.
Puedes usar, modificar y compartir el material siempre que cites la fuente y mantengas la misma licencia.

---

## 🌐 Enlaces Relacionados

* Sitio del proyecto: *(próximamente)*
* Repositorio oficial: [https://github.com/fitorec/manual-R-markdown](https://github.com/fitorec/manual-R-markdown)
* Autor: [@Fitorec](https://github.com/fitorec)

---

> ✨ *“La reproducibilidad no solo es una buena práctica: es una forma de pensamiento científico.”*
