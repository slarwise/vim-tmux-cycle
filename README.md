# Vim-tmux-cycle

Cycle between vim windows and tmux panes with the same keybindings. Basically
copied from
[vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator), the
only difference is that with this plugin you cycle between panes/splits instead
of going left/right/up/down. I wrote this since I usually only use two or three
panes/splits and it's easier for me to just cycle through them and not have to
think of a specific direction.

## Installation

Use your preferred installation method for Vim plugins. With
[vim-plug](https://github.com/junegunn/vim-plug) you would
put something like the following in your vimrc:

```
call plug#begin('~/.vim/plugged')
    Plug 'slarwise/vim-tmux-cycle'
call plug#end()
```

Place the vim-tmux-cycle shell script somewhere in your `PATH`.

Add the following lines to your .tmux.conf:

```

bind-key -n C-j run-shell "vim-tmux-cycle +"
bind-key -n C-k run-shell "vim-tmux-cycle -"
```

## Usage

Add the following mappings to your vimrc:

```
nnoremap <c-j> :VimTmuxCycleNext <CR>
nnoremap <c-k> :VimTmuxCyclePrevious <CR>
```

Now you can go to the next tmux pane/vim split with ctrl+j and the previous with
ctrl+k, independently if you are in vim/neovim or in another tmux pane.

The mappings are hardcoded in the shell script so if you want other mappings you
need to change them there and in your .tmux.conf.
