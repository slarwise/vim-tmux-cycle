" Cycle between vim windows and tmux panes with the same keybindings.

if exists("g:loaded_vim_tmux_cycle") || !exists("$TMUX")
    finish
endif
let g:loaded_vim_tmux_cycle = 1

command! VimTmuxCycleNext :call vim_tmux_cycle#next()
command! VimTmuxCyclePrevious :call vim_tmux_cycle#previous()
