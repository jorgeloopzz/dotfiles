# 📑 Contents

- [What is Ranger?](#❓-what-is-ranger)
- [Preview images](#🌄-preview-images)
  - [Ueberzug](#ueberzug)
  - [w3mimagedisplay](#w3mimagedisplay)
- [Plugins](#🧩-plugins)
  - [Installation](#installation)

<img src="https://raw.githubusercontent.com/jorgeloopzz/dotfiles/master/.screenshots/ranger.png" />

## ❓ What is Ranger?

**_Ranger_** is a text-based file manager written in Python. Directories are displayed in one pane with three columns. Moving between them is accomplished with keystrokes, bookmarks, the mouse or the command history. File previews and directory contents show automatically for the current selection. After startup, ranger creates a directory `~/.config/ranger`. To copy the default configuration to this directory issue the following command:

```bash
ranger --copy-config=all
```

&nbsp;

## 🌄 Preview images

By default, ranger will preview PDF like an image, also as text files or programming files, but for images there`s to work a little. In order to preview we can choose one of the next programs for it.

### Ueberzug

The one I use is [Ueberzug](https://github.com/ueber-devel/ueberzug), to install it:

```bash
pip install ueberzug

# If you have any problem with it maybe you are missing the next dependency

sudo apt install libxext-dev
```

#### Pacman

```bash
sudo pacman -S ueberzug
```

Now with program installed, make sure you have this settings in `rc.conf` file.

```
set preview_script ~/.config/ranger/scope.sh
set use_preview_script true
set preview_images true
set preview_images_method ueberzug
```

Now in `scope.sh` file, the configuration should look like [this](https://github.com/jorgeloopzz/dotfiles/blob/master/.config/ranger/scope.sh#L142).

### w3mimagedisplay

If you decide to use [w3mimagedisplay](https://salsa.debian.org/debian/w3m) there`s no much difference, just the packages to install:

#### Apt

```bash
sudo apt install w3m w3m-img
```

#### Pacman

```bash
sudo pacman -S w3m
```

And with that, follow same steps like above, only change this line:

```
set preview_images_method w3m
```

> To preview videos, you need [ffmpegthumbnailer](https://github.com/dirkvdb/ffmpegthumbnailer), no matter what you chose before. Same as images, config should look like [this](https://github.com/jorgeloopzz/dotfiles/blob/master/.config/ranger/scope.sh#L157).
>
> All this preview images are storend in `~/.cache/ranger/`.

&nbsp;

## 🧩 Plugins

You are able to improve ranger by installing plugins. Take a look at [this](https://github.com/topics/ranger-plugin) list if you are interested in some of them but I personally only use [ranger_devicons](https://github.com/alexanderjeurissen/ranger_devicons) to have a more beautiful view.

### Installation

- Make a folder called _plugins_ in `~/.config/ranger`.

```bash
mkdir -p ~/.config/ranger/plugins
```

- Then clone the plugin you want to install there.

---

> ⚠️ **Note**\
> For more information browse the [wiki](https://wiki.archlinux.org/title/Ranger).
