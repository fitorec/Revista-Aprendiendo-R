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
      before_body: portada.tex
"


# 5. Crear archivo temporal
cat(yaml_header, file = tmp_file)


# 6. Inyectar comandos LaTeX con variables del YAML
latex_vars <- sprintf("header-includes:
  - \\newcommand{\\tituloPDF}{%s}
  - \\newcommand{\\autorPDF}{%s}
  - \\newcommand{\\materiaPDF}{%s}
  - \\newcommand{\\profesorPDF}{%s}
  - \\newcommand{\\asuntoPDF}{%s}
  - \\newcommand{\\fechaPDF}{%s}
---\n\n",
meta$tituloPDF,
meta$autorPDF,
meta$materiaPDF,
meta$profesorPDF,
meta$asuntoPDF,
meta$fechaPDF
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
render(tmp_file, output_file = "reporte.pdf")

#  9. Limpiar archivo temporal
unlink(tmp_file)
