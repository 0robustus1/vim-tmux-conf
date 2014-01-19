" Vim syntax file
" Language:    tmuxconf
" Maintainer:  Tim Reddehase <robustus@rightsrestricted.com>
" Last Change: 18 January 2014
" License:     MIT license (see README.md)

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn match tmuxSwitch '-\w'

" Keywords/Commands
syn keyword tmuxKeywords bind unbind bind-key unbind-key
syn keyword tmuxKeywords set setw set-option set-window-option nextgroup=tmuxGlobalSwitch,tmuxSwitch skipwhite

" options
syn keyword tmuxOptions mouse-select-pane mouse-select-window mode-mouse default-terminal status-bg status-justify status-left-length status-right-length status-left status-right window-status-current-format window-status-format pane-active-border-fg default-command window-status-current-bg window-status-current-fg

" usually used in bindings
syn keyword tmuxBindingCalls resize-pane next-layout rotate-window select-pane send-prefix

" Comments
syn region tmuxComment matchgroup=tmuxComment start='\%(^\|\s\)#' end='$'

let b:current_syntax = "tmuxconf"

hi def link tmuxComment Comment
hi def link tmuxKeywords Keyword
hi def link tmuxOptions Type
hi def link tmuxBindingCalls Special


