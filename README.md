# nvim

My config for neovim to make it my minimal PDE

open console
  nvim
  :h rtp

This $XDG_CONFIG_HOME should be your home folder, default in Windows "C:\Users%username%\AppData\Local" default in MacOS/Linux for user "~/.config" (i think?)

copy nvim folder to your $XDG_CONFIG_HOME <- don't forget to map this property if you have a custom configs path

When you open nvim the first time it may give you some keybinding errors. :checkhealth lazy to see the status of the package manager (I'm using Lazy - https://github.com/folke/lazy.nvim)

:Lazy to open package manager and view the status of the installation if the installation has something in not installed, press "U"

// don't panick command
<ctrl-c>:qa! quit neovim ...

nvim
open neovim this time, neovim should load without problems, otherwise check if the plugins are installed correctly or debug to see your errors.

file plugins/remap/key.lua contain most of my personal keybinds, if you want to change or add yours
