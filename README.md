# Ecosistema FPGA 6502 (meta-repo)

Este repositorio actúa como índice/meta‑repo para el ecosistema alrededor del hardware principal: FPGA 6502 16K. Aquí centralizamos enlaces, documentación y guía rápida para los repositorios de hardware y software relacionados.

Plataforma objetivo (hardware)
- [Tang Nano 9K](https://wiki.sipeed.com/hardware/en/tang/Tang-Nano-9K/Nano-9K.html) (placa FPGA TN-9K) — https://github.com/nelsama/fpga-6502-16k

Nota importante sobre nomenclatura:
- Muchas de las imágenes y repositorios usan la marca "9k" o "16k" en su nombre. "TN-9k" o "[Tang Nano 9K](https://wiki.sipeed.com/hardware/en/tang/Tang-Nano-9K/Nano-9K.html)" se refieren a la placa FPGA (Tang Nano, modelo 9K). Cuando aparece "16k" en un nombre de repositorio o imagen, se refiere al tamaño de la ROM de firmware (16 KiB) y no a otro modelo de placa.

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
  **Monitor** programa de firmware de bajo nivel para la placa [Tang Nano 9K](https://wiki.sipeed.com/hardware/en/tang/Tang-Nano-9K/Nano-9K.html). Un monitor permite inspeccionar memoria, ejecutar código y cargar aplicaciones en el sistema 6502. "TN-9k" indica la plataforma (Tang Nano, modelo 9K). "16k" indica que la imagen está pensada para una ROM de firmware de 16 KiB (tamaño de la imagen), no que exista otro modelo de placa.

Aplicaciones para el monitor
- calcFloatTM1638-4mon — https://github.com/nelsama/calcFloatTM1638-4mon  
  Calculadora para TM1638 con operaciones de enteros y flotantes. Corre en el monitor.
- calcIntegerTM1638-4mon — https://github.com/nelsama/calcIntegerTM1638-4mon  
  Calculadora para TM1638 con operaciones solo de enteros. Corre en el monitor.
- CExampleTM1638-4mon — https://github.com/nelsama/CExampleTM1638-4mon  
  Ejemplo/plantilla en C para programar el monitor con TM1638.

Objetivo
- Tener un punto único donde nuevos usuarios puedan encontrar el hardware, librerías y aplicaciones compatibles.
- Dar recomendaciones de integración, despliegue y contribución.

## Quickstart — clonar y usar

### Opción 1: Clonar solo el meta-repo (documentación/índice)

```bash
git clone https://github.com/nelsama/ecosistema-6502.git
cd ecosistema-6502
```

Este comando descarga solo el meta-repositorio con la documentación y scripts de ayuda.

### Opción 2: Agregar todos los proyectos como submódulos

Si quieres trabajar con todos los proyectos del ecosistema en una estructura organizada, usa los scripts incluidos:

**En Linux/Mac/Git Bash:**
```bash
chmod +x add_submodules.sh
./add_submodules.sh
```

**En Windows (CMD o PowerShell):**
```cmd
add_submodules.bat
```

Esto creará la siguiente estructura:
```
ecosistema-6502/
├── hardware/
│   └── fpga-6502-16k/
├── libs/
│   ├── 6581_SID-6502-cc65/
│   ├── i2c-6502-cc65/
│   ├── sdcard-spi-6502-cc65/
│   └── ...
├── apps/
│   └── monitor_6502_TN-9k_16k/
└── apps-monitor/
    ├── calcFloatTM1638-4mon/
    ├── calcIntegerTM1638-4mon/
    └── CExampleTM1638-4mon/
```

Luego confirma los cambios:
```bash
git add .gitmodules hardware/ libs/ apps/ apps-monitor/
git commit -m "Agregar submódulos del ecosistema"
git push
```

### Opción 3: Clonar con submódulos (si ya están configurados)

Si el repositorio ya tiene los submódulos configurados, puedes clonar todo de una vez:

```bash
git clone --recurse-submodules https://github.com/nelsama/ecosistema-6502.git
```

### Opción 4: Clonar proyectos individuales

Si solo necesitas un proyecto específico, clónalo directamente desde su repositorio (ver la lista de Hardware, Librerías y Aplicaciones arriba).


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
- Este repositorio hub está licenciado bajo MIT.
- Los repositorios vinculados pueden usar licencias distintas; revisa el archivo LICENSE en cada repositorio para conocer sus términos.

## 💖 Apóyame

Si disfrutas de este proyecto, considera apoyarme:

[![Support me on Ko-fi](https://img.shields.io/badge/Ko--fi-Apóyame-FF5E5B?logo=kofi&logoColor=white&style=for-the-badge)](https://ko-fi.com/nelsonfigueroa2k)