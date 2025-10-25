#!/usr/bin/env Rscript

library(rmarkdown)
library(yaml)

# 1. Cargar metadatos del reporte
meta <- yaml::read_yaml("config/metadata.yml")

# 2. Listar los capítulos
archivos <- sort(list.files("docs", pattern = "^.*\\.Rmd$", full.names = TRUE))

if (length(archivos) == 0) {
  stop("No se encontraron archivos capitulo_*.Rmd")
}
# 3. Archivo temporal que unifica todo
tmp_file <- "reporte_tmp.Rmd"

# 4. Cargar formato del documento desde config/docformat.yml
yaml_path <- "config/docformat.yml"

if (!file.exists(yaml_path)) {
  stop("❌ No se encontró el archivo de configuración: ", yaml_path)
}

# Leer el contenido del YAML como texto (no parseado)
yaml_text <- readLines(yaml_path, warn = FALSE)

# Agregar delimitadores YAML al inicio y final
yaml_header <- c("---", yaml_text )

# 5. Crear archivo temporal con el encabezado YAML
cat(yaml_header, sep = "\n", file = tmp_file)

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
render(tmp_file, output_file = "Revista-Aprendiendo-R.pdf")

#  9. Limpiar archivo temporal
unlink(tmp_file)
