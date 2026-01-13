# Contribuyendo al ecosistema FPGA 6502

Gracias por querer contribuir. Aquí unas pautas rápidas para mantener coherencia entre repositorios.

Cómo contribuir
- Abre un issue describiendo la mejora o bug antes de enviar PRs grandes.
- Para cambios pequeños (typos, README) puedes enviar un PR directo.

Branching / PRs
- Trabaja en una rama con nombre descriptivo: `feature/<breve-descripción>` o `fix/<breve-descripción>`.
- Incluye en el PR:
  - Resumen del cambio.
  - Cómo probarlo (pasos y comandos).
  - Si aplica, imagen o log de salida.

Estilo de código
- Código en C para cc65: seguir estilo K&R / 2 espacios por indentación.
- Ensamblador: usar comentarios claros y organización por secciones.

Compilación y pruebas
- Cada librería debe incluir instrucciones de compilación (ejemplo con cc65).
- Si el cambio afecta a la imagen final para el FPGA, incluye pasos para generar la ROM / bin.

Añadir un nuevo repositorio al meta-repo
- Abre un issue en este meta-repo proponiendo la inclusión.
- Proporciona:
  - Nombre del repo, URL, descripción corta.
  - Categoría: `hardware` / `lib` / `app`.
  - Estado: experimental / estable / archived.

Etiquetas y topics
- Usa topics: `6502`, `cc65`, `fpga`, y el protocolo relevante (`i2c`, `spi`, `uart`, `ssd1306`, `sdcard`).

Contacto
- Puedes abrir un Discussion en el repo para coordinar diseño y roadmap.

Gracias — tus contribuciones ayudan a que el proyecto sea más accesible para la comunidad 6502.
