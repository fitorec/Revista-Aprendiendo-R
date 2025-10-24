# Author: Miguel Angel Marcial Martínez - @Fitorec
#
#        __
#     -=(o '.
#        '.-.\
#        /|  \\
#        '|  ||
#         _\_):,_
#
# Variables
SCRIPT = build_magazine.R
CAPITULOS = $(wildcard capitulos/*.Rmd)

# Objetivo por defecto
help:
	@echo "Comandos disponibles:"
	@echo "  make build   → Limpia y construye el PDF"
	@echo "  make clean   → Elimina archivos generados"

# Limpiar archivos generados
clean:
	@echo "🧹 Limpiando archivos temporales..."
	rm -f *.pdf reporte_tmp.Rmd reporte_tmp.knit.md reporte.tex


# Construir el PDF (siempre limpia antes)
build:
	@$(MAKE) clean
	@echo "📘 Generando reporte..."
	Rscript $(SCRIPT)
