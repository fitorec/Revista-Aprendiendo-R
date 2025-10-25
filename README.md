# Manual de R Markdown

```
dRRRRb.        .RRb  dRR.  .dRb.  dRRRRb. db   dD dRRRRb.  .dRRb.  db   dRb   db dRb   db 
RR  `RD        RR'YbdP`RR dR' `Rb RR  `RD RR ,RP' RR  `RD .RP  YR. RR   IRI   RR RRRo  RR 
RRoobY'        RR  RR  RR RRoooRR RRoobY' RR,RP   RR   RR RR    RR RR   IRI   RR RRVRo RR 
RR`Rb   CRRRRD RR  RR  RR RR~~~RR RR`Rb   RR`Rb   RR   RR RR    RR YR   IRI   RR RR VRoRR 
RR `RR.        RR  RR  RR RR   RR RR `RR. RR `RR. RR  .RD `Rb  dR' `Rb dR'Rb dR' RR  VRRR 
RR   YD        YP  YP  YP YP   YP RR   YD YP   YD YRRRRD'  `YRRP'   `RbR' `RdR'  VP   VRP 
                                                                                          
```

> **Autor:** Ing. Miguel Ángel Marcial Martínez (@Fitorec)  
> **Repositorio:** [fitorec/manual-R-markdown](https://github.com/fitorec/manual-R-markdown)

---

## Descripción General

**Manual de R Markdown** es un proyecto educativo y práctico que busca documentar, paso a paso, el proceso de **creación de reportes técnicos, artículos y material científico utilizando R Markdown**.  

Este manual está orientado a quienes desean **aprender R Markdown desde un enfoque aplicado a la Ciencia de Datos**, integrando herramientas de análisis, visualización, y automatización de la generación de documentos reproducibles.

El proyecto también sirve como **bitácora personal y colaborativa**, donde se registran experiencias, configuraciones, plantillas y scripts usados en la generación de reportes profesionales en formato PDF, HTML o Word.

---

## Objetivos del Proyecto

- Aprender a **estructurar y compilar documentos** con R Markdown.
- Explorar el **uso de LaTeX** y plantillas personalizadas para publicaciones académicas o revistas.
- Integrar ejemplos prácticos de **R en el contexto de Ciencia de Datos**.
- Documentar **buenas prácticas reproducibles** en la creación de reportes técnicos.
- Fomentar una comunidad de aprendizaje abierta sobre el uso de R Markdown.

---

## Contenido del Manual

El manual se organiza por capítulos, cada uno centrado en un tema o herramienta clave:

| Sección | Descripción |
|----------|--------------|
| **Portada y estructura base** | Cómo crear plantillas personalizadas con LaTeX y R Markdown. |
| **Distribuciones estadísticas** | Ejemplos prácticos de uso de R para visualizar y analizar distribuciones. |
| **Gráficos y visualización** | Uso de librerías como `ggplot2` o `plotly` dentro de R Markdown. |
| **Automatización con Make y GitHub Actions** | Cómo automatizar la construcción y publicación de reportes. |
| **Licencias y publicación** | Agregar licencias, metadatos y estilos de publicación profesional. |

---

## Estructura del Repositorio

```

manual-R-markdown/
├── build_magazine.R       # Script principal para compilar el documento
├── docs/                  # Capítulos en formato .Rmd
├── latex/                 # Plantillas y componentes LaTeX
├── img/                   # Recursos visuales
├── config/                # Configuraciones
|   ├── docformat.yml        # Configuración del formato del documento
|   └── metadata.yml         # Configuración de Metadatos del documento.
├── GNUmakefile            # Comandos de construcción automatizados
├── LICENSE                # Licencia Creative Commons BY-SA
├── CONTRIBUTING.md        # Guía para contribuir
└── README.md              # Este documento

```

---

## Construcción Local

Este proyecto utiliza **R Markdown** para generar documentos en formato **PDF** empleando **LaTeX** como motor de renderizado.

Para poder compilar los reportes o manuales localmente, es necesario contar con algunas dependencias del sistema además de los paquetes de **R**.

A continuación, se detallan las dependencias necesarias y cómo instalarlas según tu sistema operativo.

---

### 🐧 Linux (Ubuntu / Debian / Linux Mint)

En sistemas basados en **Debian** o **Ubuntu**, instala las dependencias ejecutando:

```bash
sudo apt-get update
sudo apt-get install -y \
  libcurl4-openssl-dev libssl-dev libxml2-dev \
  libfontconfig1-dev libfreetype6-dev libpng-dev \
  libtiff5-dev libjpeg-dev \
  texlive-xetex texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra \
  pandoc
```

Estas librerías son necesarias para:

* Compilar correctamente los paquetes de R (`curl`, `httr`, `xml2`, etc.)
* Procesar imágenes (`png`, `jpeg`, `tiff`)
* Generar documentos PDF mediante **LaTeX** (`texlive-*`)
* Renderizar los documentos Markdown a otros formatos usando **Pandoc**

---

### MacOS

En macOS, puedes instalar las dependencias mediante **Homebrew**:

```bash
brew install pandoc
brew install --cask mactex
```

Luego, asegúrate de que los binarios de `pdflatex` y `pandoc` estén en tu PATH.
Puedes verificarlo con:

```bash
which pandoc
which pdflatex
```

---

### Windows

En Windows, se recomienda instalar:

1. **R** y **RStudio** desde sus sitios oficiales:

   * [https://cran.r-project.org](https://cran.r-project.org)
   * [https://posit.co/download/rstudio/](https://posit.co/download/rstudio/)

2. **TinyTeX**, una distribución ligera de LaTeX integrada con R Markdown:

   ```r
   install.packages("tinytex")
   tinytex::install_tinytex()
   ```

3. **Pandoc** ya viene incluido con RStudio, pero si usas otro entorno, puedes instalarlo manualmente desde:

   * [https://pandoc.org/installing.html](https://pandoc.org/installing.html)

---

### Dependencias en R

Independientemente del sistema operativo, debes instalar los siguientes paquetes de **R**:

```r
install.packages(c("rmarkdown", "yaml"))
```

Estos paquetes son los encargados de:

* Procesar y renderizar los archivos `.Rmd`
* Leer la configuración del archivo `metadata.yaml`
* Construir el reporte a través del script `build_magazine.R`

---

### Verificación

Una vez instaladas las dependencias, puedes probar la compilación local con:

```bash
make build
```

Si todo está correctamente configurado, se generará el archivo **`Revista-Aprendiendo-R.pdf`** en el directorio raíz del proyecto.

---

## Cómo Contribuir

Cualquier persona puede contribuir revisando el contenido, agregando ejemplos o proponiendo mejoras.

Consulta la guía completa en [CONTRIBUTING.md](CONTRIBUTING.md).

---

## Licencia

Este proyecto se distribuye bajo la licencia
**Creative Commons Atribución-CompartirIgual 4.0 Internacional (CC BY-SA 4.0)**.
Puedes usar, modificar y compartir el material siempre que cites la fuente y mantengas la misma licencia.

---

## Enlaces Relacionados

* Sitio del proyecto: *(próximamente)*
* Repositorio oficial: [https://github.com/fitorec/manual-R-markdown](https://github.com/fitorec/manual-R-markdown)
* Autor: [@Fitorec](https://github.com/fitorec)

---

> *“La reproducibilidad no solo es una buena práctica: es una forma de pensamiento científico.”*
