" hyphen is a keyword character
setlocal iskeyword+=-

if !exists("g:tmux_command")
  let g:tmux_command = "tmux"
endif

function! ExecuteTmuxCommand()
  silent !clear
  let line=getline('.')
  let output=system(g:tmux_command . " " . line)
  redraw!
  return output
endfunction

nnoremap <buffer> tes :call ExecuteTmuxCommand()<cr>
