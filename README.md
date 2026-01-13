# Ecosistema FPGA 6502 (meta-repo)

Este repositorio actúa como índice/meta‑repo para el ecosistema alrededor del hardware principal: FPGA 6502 16K. Aquí centralizamos enlaces, documentación y guía rápida para los repositorios de hardware y software relacionados.

Repositorio principal (hardware)
- FPGA 6502 16K — https://github.com/nelsama/fpga-6502-16k

Librerías (software)
- 6581_SID-6502-cc65 — https://github.com/nelsama/6581_SID-6502-cc65  
  Biblioteca para controlar el chip SID (6581) desde 6502 con toolchain cc65.
- eprom24c-i2c-6502-cc65 — https://github.com/nelsama/eprom24c-i2c-6502-cc65  
  Driver para memorias I2C 24C (EEPROM) con 6502/cc65.
- i2c-6502-cc65 — https://github.com/nelsama/i2c-6502-cc65  
  Implementación de bus I²C maestro/esclavo para 6502 (cc65).
- lcd_ssd1306-i2c-6502-cc65 — https://github.com/nelsama/lcd_ssd1306-i2c-6502-cc65  
  Driver para pantallas OLED SSD1306 vía I2C.
- microfs-6502-cc65 — https://github.com/nelsama/microfs-6502-cc65  
  Sistema de archivos ligero para almacenamiento en 6502.
- sdcard-spi-6502-cc65 — https://github.com/nelsama/sdcard-spi-6502-cc65  
  Acceso a tarjetas SD por SPI desde 6502 (cc65).
- spi-6502-cc65 — https://github.com/nelsama/spi-6502-cc65  
  Implementación de SPI para 6502 (cc65).
- timer-6502-cc65 — https://github.com/nelsama/timer-6502-cc65  
  Rutinas de temporización y timers para 6502.
- tm1638-6502-cc65 — https://github.com/nelsama/tm1638-6502-cc65  
  Driver para displays/button modules TM1638.
- uart-6502-cc65 — https://github.com/nelsama/uart-6502-cc65  
  Controlador UART para 6502 (cc65).

Aplicaciones
- monitor_6502_TN-9k_16k — https://github.com/nelsama/monitor_6502_TN-9k_16k  
  Monitor / firmware para el sistema (imagen para 9k/16k).

Objetivo
- Tener un punto único donde nuevos usuarios puedan encontrar el hardware, librerías y aplicaciones compatibles.
- Dar recomendaciones de integración, despliegue y contribución.

Quickstart — clonar y usar
- Clonar sólo el meta-repo (documentación/índice):
  git clone https://github.com/nelsama/ecosystema-6502.git

- Añadir submódulos (opcional): si quieres mantener referencias versionadas desde el meta-repo:
  git submodule add https://github.com/nelsama/fpga-6502-16k hardware/fpga-6502-16k
  git submodule add https://github.com/nelsama/6581_SID-6502-cc65 libs/6581_SID-6502-cc65
  ...
  (repite para cada repo y organiza en `hardware/`, `libs/`, `apps/`)

Sugerencias de topics (tags) para cada repo
- topics recomendados: `6502`, `cc65`, `fpga`, `embedded`, `assembly`, `spi`, `i2c`, `sdcard`, `ssd1306`
- Comando ejemplo (gh CLI) para añadir topics a un repo:
  gh repo edit nelsama/6581_SID-6502-cc65 --add-topic 6502 --add-topic cc65 --add-topic sid

Documentación pública (GitHub Pages)
- Recomiendo usar MkDocs + mkdocs-material para un sitio central:
  pip install mkdocs mkdocs-material
  mkdocs new docs
  # editar docs/index.md con contenido del meta-repo

Integración CI / Reusable workflows
- Crear en .github/workflows/ workflows reutilizables que compilen librerías con cc65.
- Ejemplo: `compile-cc65.yml` reusable que otros repos pueden llamar con `uses: nelsama/ecosystema-6502/.github/workflows/compile-cc65.yml@main`

Contribuir
- Revisa el archivo CONTRIBUTING.md para normas de estilo, pruebas y cómo proponer nuevas librerías o apps.

Licencia
- Recomiendo MIT para código y documentación, salvo que quieras otra. (Especificar LICENSE en cada repo si aún no tienen).
