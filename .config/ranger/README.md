# 📑 Contents

- [What is Ranger?](#❓-what-is-ranger)
- [Preview images](#🌄-preview-images)
  - [Ueberzug](#ueberzug)
  - [w3mimagedisplay](#w3mimagedisplay)
  - [iTerm2](#iterm2)
- [Plugins](#🧩-plugins)
  - [Installation](#installation)

<img src="https://raw.githubusercontent.com/jorgeloopzz/dotfiles/master/.screenshots/ranger.png" />

## ❓ What is Ranger?

**_Ranger_** is a text-based file manager written in Python. Directories are displayed in one pane with three columns. Moving between them is accomplished with keystrokes, bookmarks, the mouse or the command history. File previews and directory contents show automatically for the current selection. After startup, ranger creates a directory `~/.config/ranger`. To copy the default configuration to this directory issue the following command:

```bash
ranger --copy-config=all
```

&nbsp;

## 🖼️ Preview images

By default, ranger will preview PDF like an image, also as text files or programming files, but for images there`s to work a little. In order to preview we can choose one of the next programs for it.

First, make sure you have this settings in your `rc.conf` file.

```
set preview_script ~/.config/ranger/scope.sh
set use_preview_script true
set preview_images true
```

### Ueberzug

```bash
brew install jstkdng/programs/ueberzugpp
```

Now change this line in `rc.conf`.

```
set preview_images_method ueberzug
```

Modify `scope.sh` file to have same settings as [this](https://github.com/jorgeloopzz/dotfiles/blob/master/.config/ranger/scope.sh#L141C9-L150C15).

### w3mimagedisplay

If you decide to use [w3mimagedisplay](https://salsa.debian.org/debian/w3m) there`s no much difference, just the package to install:

```bash
brew install w3m
```

And with that, follow same step like above, only change this line:

```
set preview_images_method w3m
```

### iTerm2
For iTerm2 users the best option would be to do [Shell Integration](https://iterm2.com/documentation-shell-integration.html), which comes with [imgcat](https://iterm2.com/documentation-images.html) to display images within the terminal.

```
set preview_images_method iTerm2
```

> To preview videos, you need [ffmpegthumbnailer](https://github.com/dirkvdb/ffmpegthumbnailer), no matter what you chose before. In this case, you should have [this](https://github.com/jorgeloopzz/dotfiles/blob/master/.config/ranger/scope.sh#L156C9-L160C21) configuration.
>
> All this preview images are stored in `~/.cache/ranger/` or `~/.cache/ueberzugpp`.

&nbsp;

## 🧩 Plugins

You are able to improve ranger by installing plugins. Take a look at [this](https://github.com/topics/ranger-plugin) list if you are interested in some of them but I personally only use [ranger_devicons](https://github.com/alexanderjeurissen/ranger_devicons).

### Installation

- Make a folder called _plugins_ in `~/.config/ranger`.

```bash
mkdir -p ~/.config/ranger/plugins
```

- Then clone the plugin you want to install.

> [!NOTE]
> For more information browse the [Arch Wiki](https://wiki.archlinux.org/title/Ranger).

