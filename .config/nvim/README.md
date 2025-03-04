<div align="center">
	<img src="https://raw.githubusercontent.com/neovim/neovim.github.io/master/logos/neovim-logo-300x87.png">
	<img src="https://github.com/jorgeloopzz/dotfiles/blob/master/.screenshots/neovim.png?raw=true">
</div>

[Neovim](https://neovim.io/) is a fork of Vim aiming to improve the codebase for easier API implementation, a better user experience and plugin implementations.

## Keybindings
The standard customization of keybindings follows the next structure:

`Mapping mode < Keybindigs > :command <CR>`

Below are some common Neovim keybindings to know:

- `inoremap`: maps the key in insert mode
- `nnoremap`: maps the key in normal mode
- `vnoremap`: maps the key in visual mode
- `<C>`: Represents the control key
- `<A>`: Represents the alt key

## Plugins
Vim plugins allow you to extend Neovim's functionality according to your workflow and preferences. There are some ways to install plugins in Neovim, either with a package manager as [vim-plug](https://github.com/junegunn/vim-plug), [lazy.nvim](https://github.com/folke/lazy.nvim), etc, or manually. I personally stand with this option.

### Manual
Tipically, Neovim plugins are organised in `pack` directory, as well as Vim, so firstly let's create the structure for it:

```bash
mkdir -p ~/.config/nvim/pack/vendor/start
```

Then, inside `start` directory , clone whatever plugin you like from their github repository.

#### <ins>My plugins</ins>

 - [NERDTree](https://github.com/preservim/nerdtree)
 - [vim-airline](https://github.com/vim-airline/vim-airline)
 - [VimDevIcons](https://github.com/ryanoasis/vim-devicons)

### Theme
My favourite color scheme for any environment is One Dark, see the [installation](https://github.com/joshdick/onedark.vim?tab=readme-ov-file#installation) for Neovim. Themes can be handled manually too.

