 <h1 align="center"> 
  bspwm 
</h1>

<img src="https://raw.githubusercontent.com/Jorgedeveloopzz/dotfiles/master/.screenshots/bspwm.png" />

*bspwm* is a tiling window manager that represents windows as the leaves of a full binary tree.

It only responds to X events, and the messages it receives on a dedicated socket.

*bspc* is a program that writes messages on *bspwm*'s socket.

*bspwm* doesn't handle any keyboard or pointer inputs: a third party program (e.g. *sxhkd*) is needed in order to translate keyboard and pointer events to *bspc* invocations.

The outlined architecture is the following:

```
        PROCESS          SOCKET
sxhkd  -------->  bspc  <------>  bspwm
```

## Configuration

The default configuration file is `~/.config/bspwm/bspwmrc`: this is simply a shell script that calls *bspc*.

For keybindings, you have to use a third party program, in my case [sxhkd](https://github.com/jorgeloopzz/dotfiles/blob/master/.config/sxhkd/sxhkdrc), since *bspwm* is just a tiling window manager and it doesn't have the hability to bind keys as i3 or many other WMs.

For the same reason you have to choose a status bar, for my desktop environment I use [polybar](https://github.com/jorgeloopzz/dotfiles/tree/master/.config/polybar) but there are so many like yabar, tint2, etc.

# My Keybindings
| Keybinding | Action |
| :--- | :--- |
| `MODKEY + Space` | Opens run launcher (rofi is the run launcher but can be easily changed) |
| `MODKEY + Enter` | Opens terminal (alacritty is the terminal but can be easily changed) |
| `MODKEY + b` | Opens browser (firefox is the terminal but can be easily changed) |
| `MODKEY + x` | Closes window with focus |
| `MODKEY + Shift + p` | Reloads the sxhkd conifguration file |
| `MODKEY + SHIFT + r` | Restarts bspwm |
| `MODKEY + SHIFT + e` | Logout |
| `MODKEY + j` | Switches focus between windows in the stack, going down |
| `MODKEY + k` | Switches focus between windows in the stack, going up |
| `MODKEY + SHIFT + j` | Rotates the windows in the stack, going down|
| `MODKEY + SHIFT + k` | Rotates the windows in the stack, going up |
| `MODKEY + t` | Set window state to tiled |
| `MODKEY + s` | Set window state to floating |
| `MODKEY + f` | Set window state to fullscreen |
| `MODKEY + 1-9` | Switch focus to workspace (1-9) |
| `MODKEY + SHIFT + 1-9` | Sends focused window to workspace (1-9) |
| `F1` | Lock screen with [betterlockscreen](https://github.com/betterlockscreen/betterlockscreen) |
| `F8` | Turn on/off microphone |
| `Volume/brightness` | Supported |
