# Guía para Contribuir

¡Gracias por tu interés en contribuir a este proyecto!  
Este repositorio forma parte del esfuerzo por **aprender y compartir conocimiento sobre R en el contexto de las Ciencias de Datos**, a través de un formato de reporte o revista colaborativa.

---

## Propósito del Proyecto

Este proyecto tiene como objetivo crear una **revista técnica y educativa** que muestre ejemplos, buenas prácticas y experiencias en el uso del lenguaje **R** aplicado al análisis de datos, estadística y visualización científica.  
Queremos fomentar el aprendizaje colaborativo, el intercambio de ideas y el crecimiento de la comunidad hispanohablante interesada en el ecosistema de R.

---

## 📂 Estructura del proyecto

```
├── build_magazine.R
├── CONTRIBUTING.md
├── config
│   ├── docformat.yml
│   └── metadata.yaml
├── data
│   ├── iris.data.csv
│   └── iris.data.xlsx
├── docs
│   ├── cap_01.Rmd
│   ├── ...
│   └── cap_0n.Rmd
├── GNUmakefile
├── img
│   ├── cc-by-sa.png
│   ├── fondo_portada.png
│   └── logo.png
├── latex
│   ├── header.tex
│   ├── licencia.tex
│   ├── portada_preamble.tex
│   └── portada.tex
├── LICENSE
└── README.md
```

---

## ¿Cómo Puedo Contribuir?

Existen muchas maneras de aportar valor al proyecto.  
Aquí algunas ideas:

### 1. Revisión de Contenido
- Lee los capítulos (`docs/cap_*.Rmd`) y sugiere mejoras en redacción, ortografía o claridad.
- Propón nuevos temas o ejemplos que puedan incluirse.
- Ayuda a mejorar la estructura del documento o la organización del contenido.

### 2. Recursos Visuales
- Agrega imágenes, gráficos o diagramas dentro de la carpeta `img/`.
- Crea portadas alternativas, fondos o diseños para la versión tipo revista (`latex/`).

### 3. Scripts y Ejemplos en R
- Contribuye con scripts en R que ilustren el uso de distribuciones, visualizaciones o análisis estadísticos.
- Propón funciones o fragmentos de código reutilizables.
- Mejora los ejemplos existentes o añade nuevas demostraciones interactivas.

### 4. Automatización y Herramientas
- Mejora el flujo de compilación (`GNUmakefile`, `build_magazine.R`).
- Agrega nuevas acciones en GitHub Actions (por ejemplo, para generar automáticamente la revista).
- Sugiere optimizaciones en la estructura del repositorio.

### 💬 5. Retroalimentación y Discusión
- Abre un **issue** para proponer ideas o reportar errores.
- Participa en las conversaciones técnicas o de estilo.
- Comparte tus experiencias usando R para enriquecer el proyecto.

---

## Guía Básica para Contribuir

1. **Haz un fork** de este repositorio.  
2. **Crea una rama** para tu cambio:

   ```bash
   git checkout -b mi-contribucion
   ```

3. **Realiza tus modificaciones** (puede ser texto, código o imágenes).
4. **Confirma tus cambios** con un mensaje claro:

   ```bash
   git commit -m "Agrego ejemplo sobre distribución normal"
   ```
5. **Haz un push** a tu repositorio:

   ```bash
   git push origin mi-contribucion
   ```
6. **Crea un Pull Request (PR)** desde GitHub para revisión.

---

## Recomendaciones de Estilo

* Escribe en **español claro y técnico**.
* Usa ejemplos ejecutables en R que se puedan reproducir fácilmente.
* Si agregas figuras, guárdalas dentro de `img/` en formato `.png` o `.svg`.
* Si agregas nuevos capítulos, nómbralos siguiendo el formato `cap_XX_titulo.Rmd`.

---

## Apoya el Proyecto

Próximamente se habilitarán formas de **financiar el proyecto** o apoyar a su mantenimiento.
Mientras tanto, puedes contribuir difundiendo el repositorio o participando activamente en las revisiones.

---

## Autores y Comunidad

Proyecto iniciado por **Ing. Miguel Angel Marcial Martínez (@Fitorec)**
y abierto a toda persona interesada en aprender, enseñar o divulgar sobre R.

Repositorio oficial:

🔗 [https://github.com/fitorec/Revista-Aprendiendo-R](https://github.com/fitorec/Revista-Aprendiendo-R)

---

## [Licencia](./LICENSE)

El contenido de este proyecto se distribuye bajo la licencia
**Creative Commons Atribución-CompartirIgual (CC BY-SA)**.
Esto significa que puedes usar, modificar y compartir el material,
siempre que se reconozca la autoría y se mantenga la misma licencia.

---

> *“Aprender juntos es la mejor forma de avanzar.”*


