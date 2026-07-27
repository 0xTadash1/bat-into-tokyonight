# 🦇 [Bat][sharkdp/bat] into [Tokyo Night][folke/tokyonight.nvim] 🌃

[sharkdp/bat]: https://github.com/sharkdp/bat
[folke/tokyonight.nvim]: https://github.com/folke/tokyonight.nvim

> Instala / Actualiza el tema de resaltado de sintaxis Tokyo Night para `bat`.

`bat` es compatible con archivos de definición de sintaxis y temas de Sublime Text.
Por lo tanto, podemos usar los archivos `*.tmTheme` en el directorio `extras/sublime/` del
repositorio [folke/tokyonight.nvim]. ¡Esto es genial para algunos, como yo!

## ℹ Acerca de

Aquí tienes el script que añade la edición de Folke del tema Tokyo Night a `bat`.
Automatiza el tedioso proceso de **instalación** (`git clone`), **actualización** (`git pull`)
y **construcción** (`bat cache --build`).

La instalación no es un simple clonado. Aquí, solo unos pocos archivos de
[folke/tokyonight.nvim] son realmente necesarios para nosotros.
La mayoría de los archivos deben ser ignorados y no guardados.
Por ejemplo, `README.md`, `lua/`, `colors/`, etc. \
Del mismo modo, para las actualizaciones, no se deben verificar los archivos superfluos.

Y la construcción se ejecuta solo cuando hay actualizaciones.

## ✨ Características

- Instalación si no está instalado
  - `tokyonight_day`
  - `tokyonight_moon`
  - `tokyonight_night`
  - `tokyonight_storm`
- Actualización si hay actualizaciones disponibles
- Construcción de caché si los temas han caducado

## 🚀 Cómo usar

### Para instalar o actualizar los temas

```sh
git clone https://github.com/0xTadash1/bat-into-tokyonight
cd bat-into-tokyonight
./bat-into-tokyonight
```

Te recomiendo ejecutar `(./bat-into-tokyonight >/dev/null 2>&1 &)` en un archivo como `.bashrc` o `.zshrc`.

### 3 formas de cambiar el tema de `bat`

- Usar una variable de entorno: ej. `export BAT_THEME="tokyonight_night"`
- Usar una opción con `bat`: ej. `bat --theme="tokyonight_storm"`
- [Usar una opción en el archivo de configuración de `bat`][sharkdp/bat#configuration-file]

[sharkdp/bat#configuration-file]:
  https://github.com/sharkdp/bat#configuration-file
  "sharkdp/bat # Configuration file"

## Desinstalar / Limpiar temas

Elimina el directorio de este plugin y luego:

```sh
command rm -rf "$(command bat --config-dir)/themes/tokyonight.nvim/"
command bat cache --build
```

## ❓ ¿Por qué traer un tema de Neovim?

Prefiero los colores de la versión de Tokyo Night de Folke.

Enkia, probablemente el creador original de Tokyo Night, también hace
[un tema de Sublime Text](https://github.com/enkia/enki-theme).
Si prefieres el del autor original, deberías usar ese. Es mucho más estable.

## 💕 Agradecimientos

- [sharkdp/bat]
- [folke/tokyonight.nvim]
- [enkia/tokyo-night-vscode-theme][original]
- [enkia/enki-theme](https://github.com/enkia/enki-theme)

[original]: https://github.com/enkia/tokyo-night-vscode-theme

## 📃 Licencia

[MIT](https://github.com/0xTadash1/bat-into-tokyonight/blob/main/LICENSE)
