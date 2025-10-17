# GNUmakefile

# Variables
REPORTE = reporte.pdf
SCRIPT = build_reporte.R
CAPITULOS = $(wildcard docs/*.Rmd)
# PORTADA = portada.Rmd

# Objetivo por defecto
help:
	@echo "Targets disponibles:"
	@echo "  build  - Construye el PDF del reporte"
	@echo "  clean  - Limpia los archivos generados"

# Construir el PDF
build: $(REPORTE)

$(REPORTE): $(SCRIPT) $(CAPITULOS)
	@echo "📘 Generando reporte..."
	Rscript $(SCRIPT)

# Limpiar
clean:
	rm -f $(REPORTE)
