function! vim_tmux_cycle#next()
    if winnr() < winnr('$') || (str2nr(system("tmux list-panes|wc -l")) == 1)
        execute "normal! \<c-w>w"
    else
        call system("tmux select-pane -t+")
        let pane_current_cmd =
                    \ trim(system("tmux display -p '#{pane_current_command}'"))
        if index(['vim', 'nvim'], pane_current_cmd) >= 0
            call system("tmux send-keys C-w t")
        endif
    endif
endfunction

function! vim_tmux_cycle#previous()
    if winnr() > 1 || (str2nr(system("tmux list-panes|wc -l")) == 1)
        execute "normal! \<c-w>W"
    else
        call system("tmux select-pane -t-")
        let pane_current_cmd =
                    \ trim(system("tmux display -p '#{pane_current_command}'"))
        if index(['vim', 'nvim'], pane_current_cmd) >= 0
            call system("tmux send-keys C-w b")
        endif
    endif
endfunction
