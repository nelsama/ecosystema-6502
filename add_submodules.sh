#!/usr/bin/env bash
set -e

git submodule add https://github.com/nelsama/fpga-6502-16k hardware/fpga-6502-16k

# Librerías
git submodule add https://github.com/nelsama/6581_SID-6502-cc65 libs/6581_SID-6502-cc65
git submodule add https://github.com/nelsama/eprom24c-i2c-6502-cc65 libs/eprom24c-i2c-6502-cc65
git submodule add https://github.com/nelsama/i2c-6502-cc65 libs/i2c-6502-cc65
git submodule add https://github.com/nelsama/lcd_ssd1306-i2c-6502-cc65 libs/lcd_ssd1306-i2c-6502-cc65
git submodule add https://github.com/nelsama/microfs-6502-cc65 libs/microfs-6502-cc65
git submodule add https://github.com/nelsama/sdcard-spi-6502-cc65 libs/sdcard-spi-6502-cc65
git submodule add https://github.com/nelsama/spi-6502-cc65 libs/spi-6502-cc65
git submodule add https://github.com/nelsama/timer-6502-cc65 libs/timer-6502-cc65
git submodule add https://github.com/nelsama/tm1638-6502-cc65 libs/tm1638-6502-cc65
git submodule add https://github.com/nelsama/uart-6502-cc65 libs/uart-6502-cc65

# Aplicaciones
git submodule add https://github.com/nelsama/monitor_6502_TN-9k_16k apps/monitor_6502_TN-9k_16k

# Aplicaciones para el monitor
git submodule add https://github.com/nelsama/calcFloatTM1638-4mon apps-monitor/calcFloatTM1638-4mon
git submodule add https://github.com/nelsama/calcIntegerTM1638-4mon apps-monitor/calcIntegerTM1638-4mon
git submodule add https://github.com/nelsama/CExampleTM1638-4mon apps-monitor/CExampleTM1638-4mon

echo "Submódulos añadidos. No olvides: git add .gitmodules <paths>, git commit -m 'Añadir submódulos', git push"