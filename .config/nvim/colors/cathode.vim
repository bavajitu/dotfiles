" cathode.vim - Brellary's custom colorscheme
" Low background/foreground contrast, high syntax contrast
" No italics. No true black. No pastels.
" Last updated: 2024-05-12

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "cathode"

" Palette
" Background: #1a1c23
" Foreground: #d8dee9
" Cursor:     #f8f8f2

" Editor background & foreground
hi Normal          guifg=#d8dee9 guibg=#1a1c23 gui=none
hi NonText         guifg=#2c2e38 guibg=#1a1c23 gui=none
hi Cursor          guifg=#1a1c23 guibg=#f8f8f2 gui=none
hi CursorLine      guibg=#23252e gui=none
hi CursorColumn    guibg=#23252e gui=none
hi LineNr          guifg=#3b3f4a guibg=#1a1c23 gui=none
hi CursorLineNr    guifg=#d8dee9 guibg=#2c2e38 gui=bold
hi EndOfBuffer     guifg=#2c2e38 guibg=#1a1c23 gui=none

" Number column & folding
hi Folded          guifg=#5c6370 guibg=#1a1c23 gui=none
hi FoldColumn      guifg=#3b3f4a guibg=#1a1c23 gui=none

" Window & tab elements
hi StatusLine      guifg=#d8dee9 guibg=#2c2e38 gui=bold
hi StatusLineNC    guifg=#5c6370 guibg=#23252e gui=none
hi TabLine         guifg=#5c6370 guibg=#23252e gui=none
hi TabLineSel      guifg=#d8dee9 guibg=#1a1c23 gui=bold
hi TabLineFill     guibg=#23252e gui=none
hi VertSplit       guifg=#2c2e38 guibg=#1a1c23 gui=none

" Search & matching
hi Search          guifg=#f1c40f guibg=#2c3e50 gui=none
hi IncSearch       guifg=#1a1c23 guibg=#f1c40f gui=none
hi MatchParen      guifg=#1a1c23 guibg=#c678dd gui=bold

" Popup menu (autocomplete - rarely used)
hi Pmenu           guifg=#d8dee9 guibg=#2c2e38 gui=none
hi PmenuSel        guifg=#1a1c23 guibg=#61afef gui=bold
hi PmenuThumb      guibg=#5c6370

" Diagnostics (Neovim native)
hi DiagnosticError guifg=#ff6b6b guibg=#1a1c23 gui=bold
hi DiagnosticWarn  guifg=#d19a66 guibg=#1a1c23 gui=none
hi DiagnosticInfo  guifg=#61afef guibg=#1a1c23 gui=none
hi DiagnosticHint  guifg=#98c379 guibg=#1a1c23 gui=none
hi DiagnosticUnderlineError guisp=#ff6b6b gui=underline

" Syntax groups (the core)
hi Comment         guifg=#5c6370 guibg=#1a1c23 gui=none        " no italics
hi Constant        guifg=#d19a66 guibg=#1a1c23 gui=none
hi String          guifg=#98c379 guibg=#1a1c23 gui=none
hi Character       guifg=#98c379 guibg=#1a1c23 gui=none
hi Number          guifg=#d19a66 guibg=#1a1c23 gui=none
hi Boolean         guifg=#d19a66 guibg=#1a1c23 gui=bold
hi Float           guifg=#d19a66 guibg=#1a1c23 gui=none

hi Identifier      guifg=#e5c07b guibg=#1a1c23 gui=none
hi Function        guifg=#61afef guibg=#1a1c23 gui=none

hi Statement       guifg=#c678dd guibg=#1a1c23 gui=none
hi Conditional     guifg=#c678dd guibg=#1a1c23 gui=none
hi Repeat          guifg=#c678dd guibg=#1a1c23 gui=none
hi Label           guifg=#c678dd guibg=#1a1c23 gui=none
hi Operator        guifg=#c678dd guibg=#1a1c23 gui=none
hi Keyword         guifg=#c678dd guibg=#1a1c23 gui=none

hi PreProc         guifg=#56b6c2 guibg=#1a1c23 gui=none
hi Include         guifg=#56b6c2 guibg=#1a1c23 gui=none
hi Define          guifg=#56b6c2 guibg=#1a1c23 gui=none
hi Macro           guifg=#56b6c2 guibg=#1a1c23 gui=none
hi PreCondit       guifg=#56b6c2 guibg=#1a1c23 gui=none

hi Type            guifg=#e06c75 guibg=#1a1c23 gui=none
hi StorageClass    guifg=#e06c75 guibg=#1a1c23 gui=none
hi Structure       guifg=#e06c75 guibg=#1a1c23 gui=none
hi Typedef         guifg=#e06c75 guibg=#1a1c23 gui=none

hi Special         guifg=#61afef guibg=#1a1c23 gui=none
hi SpecialChar     guifg=#61afef guibg=#1a1c23 gui=none
hi Tag             guifg=#61afef guibg=#1a1c23 gui=none
hi Delimiter       guifg=#d8dee9 guibg=#1a1c23 gui=none

hi Underlined      guifg=#61afef guibg=#1a1c23 gui=underline
hi Ignore          guifg=#3b3f4a guibg=#1a1c23 gui=none
hi Error           guifg=#ff6b6b guibg=#1a1c23 gui=reverse
hi Todo            guifg=#f1c40f guibg=#2c3e50 gui=bold

" Markdown & text files (lighter touch)
hi markdownH1      guifg=#61afef guibg=#1a1c23 gui=bold
hi markdownH2      guifg=#56b6c2 guibg=#1a1c23 gui=bold
hi markdownLinkText guifg=#98c379 guibg=#1a1c23 gui=underline
hi markdownCode    guifg=#e5c07b guibg=#23252e gui=none

" Git diff (when viewing diffs in Neovim)
hi diffAdded       guifg=#98c379 guibg=#1a1c23 gui=none
hi diffRemoved     guifg=#ff6b6b guibg=#1a1c23 gui=none
hi diffChanged     guifg=#61afef guibg=#1a1c23 gui=none

" Terminal (for :terminal inside Neovim)
hi Terminal        guifg=#d8dee9 guibg=#1a1c23 gui=none

" Day mode override (call with :CathodeDay)
command! CathodeDay call s:cathode_day()
function! s:cathode_day()
  hi Normal guifg=#1a1c23 guibg=#d8dee9
  hi LineNr guifg=#8a8e99 guibg=#d8dee9
  hi Comment guifg=#8a8e99
  hi NonText guifg=#c0c5d0
  hi CursorLine guibg=#e5e8f0
  hi StatusLine guifg=#1a1c23 guibg=#c0c5d0
  echo "Cathode: day mode"
endfunction

" Night mode (default)
command! CathodeNight call s:cathode_night()
function! s:cathode_night()
  hi Normal guifg=#d8dee9 guibg=#1a1c23
  hi LineNr guifg=#3b3f4a guibg=#1a1c23
  hi Comment guifg=#5c6370
  hi NonText guifg=#2c2e38 guibg=#1a1c23
  hi CursorLine guibg=#23252e
  hi StatusLine guifg=#d8dee9 guibg=#2c2e38
  echo "Cathode: night mode"
endfunction
