" Vim syntax file
" Language:    tmux.conf
" Maintainer:  Tim Reddehase <robustus@rightsrestricted.com>
" Last Change: 18 January 2014
" License:     MIT license (see README.md)

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

if !exists('main_syntax')
  let main_syntax = 'tmux.conf'
endif

unlet! b:current_syntax

syn match tmuxSwitch '-\w'

" Keywords/Commands
syn keyword tmuxKeywords bind unbind set-option set-window-option set setw nextgroup=tmuxSwitch skipwhite

" options
syn keyword tmuxOptions mouse-select-pane mouse-select-window mode-mouse default-terminal status-bg status-justify status-left-length status-right-length status-left status-right window-status-current-format window-status-format pane-active-border-fg default-command

" usually used in bindings
syn keyword tmuxBindingCalls resize-pane next-layout rotate-window select-pane send-prefix

" Comments
syn region tmuxComment matchgroup=tmuxComment start='\%(^\|\s\)#' end='$'

let b:current_syntax = "tmux.conf"
if main_syntax ==# 'tmux.conf'
  unlet main_syntax
endif

hi def link tmuxComment Comment
hi def link tmuxKeywords Keyword
hi def link tmuxOptions Type
hi def link tmuxBindingCalls Special


