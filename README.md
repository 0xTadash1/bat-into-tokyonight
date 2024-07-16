# 🦇 [Bat][sharkdp/bat] into [Tokyo Night][folke/tokyonight.nvim] 🌃

[sharkdp/bat]: https://github.com/sharkdp/bat
[folke/tokyonight.nvim]: https://github.com/folke/tokyonight.nvim

> Install / Update Tokyo Night syntax highlight theme for `bat`.

`bat` supports Sublime Text theme and syntax highlighting definition files.
So we can use `*.tmTheme` files in `extras/sublime/` directory at
[folke/tokyonight.nvim] repository. This is delightful for some, like me!

## ℹ About

Here is the script that adds Folke's edition of Tokyo Night theme to `bat`.
It automates the tedious **install** (`git clone`), **update** (`git pull`)
and **build** (`bat cache --build`) process.

The installation is not a simple clone. In here, there are only a few files in
[folke/tokyonight.nvim] that are actually needed for us.
The majority of files should be ignored and not saved.
For instance, `README.md`, `lua/`, `colors/`, etc. \
Similarly, for updates, superfluous files should not be checked.

And the build is executed only when there are updates.

## ✨ Features

- Install if not installed
  - `tokyonight_day`
  - `tokyonight_moon`
  - `tokyonight_night`
  - `tokyonight_storm`
- Update if there are updates
- Build a cache if the themes are expired

## 🚀 How to use

### To Install or Update the themes

```sh
git clone https://github.com/0xTadash1/bat-into-tokyonight
cd bat-into-tokyonight
./bat-into-tokyonight
```

I recommend you to do `(./bat-into-tokyonight &)` in a file such as `.bashrc` or `.zshrc`.

### 3 ways to switch theme for `bat`

- Use a environment variable: i.e. `export BAT_THEME="tokyonight_night"`
- Use a option with `bat`: i.e. `bat --theme="tokyonight_storm"`
- [Use a option in a config file for `bat`][sharkdp/bat#configuration-file]

[sharkdp/bat#configuration-file]:
  https://github.com/sharkdp/bat#configuration-file
  "sharkdp/bat # Configuration file"

## Uninstall / Cleanup themes

Remove this plugin directory, and then:

```sh
command rm -rf "$(command bat --config-dir)/themes/tokyonight.nvim/"
command bat cache --build
```

## ❓ Why bring a Neovim theme?

I prefer the colors of Folke flavored Tokyo Night theme.

Enkia, probably the original creator of Tokyo Night, also makes
[a Sublime Text theme](https://github.com/enkia/enki-theme).
If you prefer the original author's, you should use that. It's much stable.

## 💕 Thanks

- [sharkdp/bat]
- [folke/tokyonight.nvim]
- [enkia/tokyo-night-vscode-theme][original]
- [enkia/enki-theme](https://github.com/enkia/enki-theme)

[original]: https://github.com/enkia/tokyo-night-vscode-theme

## 📃 License

[MIT](https://github.com/0xTadash1/bat-into-tokyonight/blob/main/LICENSE)
