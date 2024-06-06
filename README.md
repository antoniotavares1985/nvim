# nvim

My config for neovim to make it my PDE

open console nvim . :h rtp

This $XDG_CONFIG_HOME should be your home folder, default in Windows "C:\Users%username%\AppData\Local" default in MacOS/Linux for user "~/.profile" (i think?) default in MacOS/Linux system wide "/etc/profile" (i think?)

copy nvim folder to your $XDG_CONFIG_HOME

"When you open nvim the first time it may give you some remap or set errors. :checkhealth lazy to see the status of the package manager (I'm using Lazy - https://github.com/folke/lazy.nvim)

:Lazy to open package manager and view the status of the installation if the installation has something in not installed, press "U"

:q quit neovim ...

nvim . open neovim this time, neovim should load without problems, otherwise check if the plugins are installed correctly or debug to see your errors.

file remap.lua and set.lua contain most of my personal keybinds, if you want to change or add yours
