#!/usr/bin/env Rscript

library(rmarkdown)
library(yaml)

# 1. Cargar metadatos del reporte
meta <- yaml::read_yaml("metadata.yaml")

# 2. Listar los capítulos
archivos <- sort(list.files("docs", pattern = "^.*\\.Rmd$", full.names = TRUE))

if (length(archivos) == 0) {
  stop("No se encontraron archivos capitulo_*.Rmd")
}
# 3. Archivo temporal que unifica todo
tmp_file <- "reporte_tmp.Rmd"

# 4. Cabecera YAML del documento principal (sin título/autor)
yaml_header <- "---
output:
  pdf_document:
    toc: true
    toc_depth: 3
    number_sections: true
    highlight: breezedark
    latex_engine: xelatex
    includes:
      in_header: latex/portada_preamble.tex
      before_body:
        - latex/portada.tex
        - latex/licencia.tex
geometry: margin=1in
classoption: twocolumn
"


# 5. Crear archivo temporal
cat(yaml_header, file = tmp_file)

# Unir autores en una sola cadena para pasarlos como variable LaTeX
autores <- paste(meta$autoresPDF, collapse = ", ")

# 6. Inyectar comandos LaTeX con variables del YAML
latex_vars <- sprintf("header-includes:
  - \\newcommand{\\tituloPDF}{%s}
  - \\newcommand{\\autoresPDF}{%s}
  - \\newcommand{\\materiaPDF}{%s}
  - \\newcommand{\\profesorPDF}{%s}
  - \\newcommand{\\asuntoPDF}{%s}
  - \\newcommand{\\fechaPDF}{%s}
  - \\newcommand{\\repositorioPDF}{%s}
---\n\n",
meta$tituloPDF,
autores,
meta$materiaPDF,
meta$profesorPDF,
meta$asuntoPDF,
meta$fechaPDF,
meta$repositorioPDF
)

cat(latex_vars, file = tmp_file, append = TRUE)

# 7. Concatenar los capítulos

for (file in archivos) {
cat(paste0("\n\n<!-- ", file, " -->\n\n"), file = tmp_file, append = TRUE)
cat(readLines(file), sep = "\n", file = tmp_file, append = TRUE)
cat("\n\n", file = tmp_file, append = TRUE)
}

# 8. Renderizar el reporte final

cat("📘 Generando reporte...\n\n")
render(tmp_file, output_file = "magazine.pdf")

#  9. Limpiar archivo temporal
unlink(tmp_file)
