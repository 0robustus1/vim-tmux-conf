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

" Keywords/Commands
syn keyword tmuxKeywords bind unbind set-option set-window-option set setw

" options
syn keyword tmuxOptions mouse-select-pane mouse-select-window mode-mouse default-terminal status-bg status-justify status-left-length status-right-length status-left status-right window-status-current-format window-status-format pane-active-border-fg default-command

" usually used in bindings
syn keyword tmuxBindingCalls resize-pane next-layout rotate-window select-pane send-prefix

" Comments
syn region tmuxComment matchgroup=tmuxComment start='\%(^\|\s\)#' end='$'

HiLink tmuxComment Comment
HiLink tmuxOptions Type
HiLink tmuxBindingCalls Special

let b:current_syntax = "tmux.conf"

