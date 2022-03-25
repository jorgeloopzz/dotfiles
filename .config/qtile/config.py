#  $$$$$$\    $$\     $$\ $$\           
# $$  __$$\   $$ |    \__|$$ |          
# $$ /  $$ |$$$$$$\   $$\ $$ | $$$$$$\  
# $$ |  $$ |\_$$  _|  $$ |$$ |$$  __$$\ 
# $$ |  $$ |  $$ |    $$ |$$ |$$$$$$$$ |
# $$ $$\$$ |  $$ |$$\ $$ |$$ |$$   ____|
# \$$$$$$ /   \$$$$  |$$ |$$ |\$$$$$$$\ 
#  \___$$$\    \____/ \__|\__| \_______|
#      \___|                            
#                                       
# https://github.com/jorgeloopzz/dotfiles                                     

import os
import subprocess

from typing import List  # noqa: F401

from libqtile import bar, layout, widget
from libqtile import hook
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal


#---------------#
#   SUPER KEY   #
#---------------#
mod = "mod4"

#---------------#
#   KEYBINDINGS #
#---------------#

keys = [

    #---    Switch between windows  ---#
    Key([mod], "h", lazy.layout.left()),
    Key([mod], "l", lazy.layout.right()),
    Key([mod], "j", lazy.layout.down()),
    Key([mod], "k", lazy.layout.up()),
    Key([mod], "p", lazy.layout.next()),

    #---    Move windows    ---#
    Key([mod, "shift"], "h", lazy.layout.shuffle_left()),
    Key([mod, "shift"], "l", lazy.layout.shuffle_right()),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down()),
    Key([mod, "shift"], "k", lazy.layout.shuffle_up()),

    #---    Resize windows  ---#
    Key([mod, "control"], "h", lazy.layout.grow_left()),
    Key([mod, "control"], "l", lazy.layout.grow_right()),
    Key([mod, "control"], "j", lazy.layout.grow_down()),
    Key([mod, "control"], "k", lazy.layout.grow_up()),

    #---    Get windows original size   ---#
    Key([mod], "n", lazy.layout.normalize()),

    # Toggle between split and unsplit sides of stack.
    # Split = all windows displayed
    # Unsplit = 1 window displayed, like Max layout, but still with multiple stack panes
    Key(
        [mod, "shift"],
        "Return",
        lazy.layout.toggle_split(),
    ),

    #---    Browser     ---#
    Key([mod], "b", lazy.spawn("firefox")),

    #---    Terminal    ---#
    Key([mod], "Return", lazy.spawn("alacritty")),

    #---    Launcher    ---#
    Key([mod], "space", lazy.spawn("rofi -show")),

    #---    Toogle layout   ---#
    Key([mod], "Tab", lazy.next_layout()),

    #---    Kill window     ---#
    Key([mod], "x", lazy.window.kill()),

    #---    Reload Qtile    ---#
    Key([mod, "shift"], "r", lazy.reload_config()),

    #---    Exit Qtile      ---#
    Key([mod, "shift"], "e", lazy.shutdown()),
]

groups = [Group(i) for i in [
    "   ", "   ", "   ", "  ", "   ", "   ", "   ",
]]

for i, group in enumerate(groups):
    actual_key = str(i + 1)
    keys.extend([
        # Switch to workspace N
        Key([mod], actual_key, lazy.group[group.name].toscreen()),
        # Send window to workspace N
        Key([mod, "shift"], actual_key, lazy.window.togroup(group.name))
    ])

layouts = [
    layout.MonadTall(border_focus="#c4a7e7", border_normal="#602ca0", border_width=1, margin=9),
    layout.Max(),
    layout.Bsp(border_focus="#c4a7e7", border_normal="#602ca0", border_width=1, margin=9),
    layout.MonadWide(border_focus="#c4a7e7", border_normal="#602ca0", border_width=1, margin=9),
    layout.RatioTile(border_focus="#c4a7e7", border_normal="#602ca0", border_width=1, margin=9),
    # layout.Matrix(),
]

widget_defaults = dict(
    font="UbuntuMono Nerd Font",
    fontsize=15,
    padding=3,
)
extension_defaults = widget_defaults.copy()

screens = [
    Screen(
        top=bar.Bar(
            [
                widget.CurrentLayout(),
                widget.GroupBox(),
                widget.Prompt(),
                widget.WindowName(),
                widget.Chord(
                    chords_colors={
                        "launch": ("#ff0000", "#ffffff"),
                    },
                    name_transform=lambda name: name.upper(),
                ),
                widget.TextBox("default config", name="default"),
                widget.TextBox("Press &lt;M-r&gt; to spawn", foreground="#d75f5f"),
                widget.Systray(),
                widget.Clock(format="%Y-%m-%d %a %I:%M %p"),
                widget.QuickExit(),
            ],
            24,
            # border_width=[2, 0, 2, 0],  # Draw top and bottom borders
            # border_color=["ff00ff", "000000", "ff00ff", "000000"]  # Borders are magenta
        ),
    ),
]

# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(), start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(), start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front()),
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: List
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(
    float_rules=[
        # Run the utility of `xprop` to see the wm class and name of an X client.
        *layout.Floating.default_float_rules,
        Match(wm_class="confirmreset"),  # gitk
        Match(wm_class="makebranch"),  # gitk
        Match(wm_class="maketag"),  # gitk
        Match(wm_class="ssh-askpass"),  # ssh-askpass
        Match(title="branchdialog"),  # gitk
        Match(title="pinentry"),  # GPG key password entry
    ],
    border_focus="#c4a7e7",
    border_normal="#602ca0"
)
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True

# If things like steam games want to auto-minimize themselves when losing
# focus, should we respect this or not?
auto_minimize = True

#---------------#
#   AUTOSTART   #
#---------------#

@hook.subscribe.startup_once
def autostart():
    home = os.path.expanduser('~/.config/qtile/autostart.sh')
    subprocess.run([home])


# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "LG3D"

