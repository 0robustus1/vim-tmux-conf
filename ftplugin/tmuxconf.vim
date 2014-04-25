" hyphen is a keyword character
setlocal iskeyword+=-

if !exists("g:tmux_command")
  let g:tmux_command = "tmux"
endif

if !exists("g:tmux_default_buffer_height")
  let g:tmux_default_buffer_height = 1
endif

function! ExecuteTmuxCommand()
  silent !clear
  let line=getline('.')
  let output=system(g:tmux_command . " " . line)
  redraw!
  return output
endfunction

function! ExecuteAndDisplayTmuxCommand()
  let output=ExecuteTmuxCommand()
  let output_buf_name="__tmux_command_output__"

  let win_number=bufwinnr(output_buf_name)
  if win_number == -1
    split __tmux_command_output__
  else
    execute win_number . "wincmd w"
  endif

  execute 'resize ' . g:tmux_default_buffer_height

  normal! ggdG
  setlocal filetype=tmuxoutput
  setlocal buftype=nofile

  call append(0, split(output, '\v\n'))
endfunction

nnoremap <buffer> te :call ExecuteAndDisplayTmuxCommand()<cr>
nnoremap <buffer> tes :call ExecuteTmuxCommand()<cr>
