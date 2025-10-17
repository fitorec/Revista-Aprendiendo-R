# --------------------------------------------------
# Makefile para generar reporte PDF desde R Markdown
# --------------------------------------------------

# Archivos principales
RMD = reporte.Rmd
PDF = $(RMD:.Rmd=.pdf)

# Comandos
RSCRIPT = Rscript
RM = rm -f

# Objetivo por defecto
.DEFAULT_GOAL := help

# --------------------------
# Ayuda
# --------------------------
help:
	@echo "Uso:"
	@echo "  make build    -> Genera el PDF a partir de $(RMD)"
	@echo "  make clean    -> Elimina archivos intermedios y el PDF"
	@echo "  make help     -> Muestra esta ayuda (por defecto)"

# --------------------------
# Construir el reporte
# --------------------------
# ---------------------------
# Objetivo: Construir
# ---------------------------
build: $(PDF)
	@echo "📘 Generando reporte..."
	@$(RSCRIPT) build_reporte.R
	@echo "✅ Reporte generado: $(PDF)"

# --------------------------
# Limpiar archivos
# --------------------------
clean:
	@echo "🧹 Limpiando archivos..."
	@$(RM) $(PDF) $(RMD:.Rmd=.html) $(RMD:.Rmd=.md)
	@echo "✔ Limpieza completada"
