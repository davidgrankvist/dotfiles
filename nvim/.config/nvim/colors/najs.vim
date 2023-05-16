" generated with ThemeCreator (https://github.com/mswift42/themecreator)
" and manually tweaked

hi clear

if exists("syntax on")
syntax reset
endif

set t_Co=256
let g:colors_name = "najs"

let s:bg="#292828"
let s:fg="#d4d4d4"
let s:fg2="#c3c3c3"
let s:fg3="#b2b2b2"
let s:fg4="#a1a1a1"
let s:bg2="#3a3939"
let s:bg3="#4b4a4a"
let s:bg4="#5c5c5c"
let s:keyword="#d9ff52"
let s:builtin="#d4d4d4"
let s:const= "#5789b7"
let s:comment="#148a22"
let s:func="#d4d4d4"
let s:str="#d79142"
let s:type="#d4d4d4"
let s:var="#d4d4d4"
let s:warning="#ff0000"
let s:warning2="#ff8800"
let s:popup="#1f1f1f"
let s:select="#282476"
let s:cursorbg="#26b399"

exe 'hi Normal guifg='s:fg' guibg='s:bg
exe 'hi Cursor guifg='s:fg' guibg='s:cursorbg
exe 'hi CursorLine guibg='s:bg2
exe 'hi CursorLineNr guifg='s:fg' guibg='s:bg2
exe 'hi CursorColumn guibg='s:bg2
exe 'hi ColorColumn guibg='s:bg2
exe 'hi FoldColumn guifg='s:comment' guibg='s:bg2
exe 'hi SignColumn guifg='s:comment' guibg='s:bg2
exe 'hi LineNr guifg='s:fg3' guibg='s:bg
exe 'hi VertSplit guifg='s:fg3' guibg='s:bg3
exe 'hi MatchParen guifg='s:fg' guibg='s:bg4
exe 'hi StatusLine guifg='s:fg2' guibg='s:bg3
exe 'hi Pmenu guifg='s:fg' guibg='s:bg2
exe 'hi PmenuSel guibg='s:bg3
exe 'hi IncSearch guifg='s:bg' guibg='s:keyword
exe 'hi Directory guifg='s:const
exe 'hi Folded guifg='s:fg4' guibg='s:bg
exe 'hi WildMenu guifg='s:str' guibg='s:bg
exe 'hi PMenu guifg='s:str' guibg='s:popup
exe 'hi Visual guibg='s:select

exe 'hi Boolean guifg='s:const
exe 'hi Character guifg='s:const
exe 'hi Comment guifg='s:comment
exe 'hi Conditional guifg='s:keyword
exe 'hi Constant guifg='s:const
exe 'hi Todo guibg='s:bg
exe 'hi Define guifg='s:keyword
exe 'hi DiffAdd guifg=#fafafa guibg=#123d0f'
exe 'hi DiffDelete guibg='s:bg2
exe 'hi DiffChange guibg=#151b3c guifg=#fafafa'
exe 'hi DiffText guifg=#ffffff guibg=#ff0000'
exe 'hi ErrorMsg guifg='s:warning' guibg='s:bg2
exe 'hi WarningMsg guifg='s:fg' guibg='s:warning2
exe 'hi Float guifg='s:const
exe 'hi Function guifg='s:func
exe 'hi Identifier guifg='s:type
exe 'hi Keyword guifg='s:keyword
exe 'hi Label guifg='s:var
exe 'hi NonText guifg='s:fg' guibg='s:bg
exe 'hi Number guifg='s:const
exe 'hi Operator guifg='s:keyword
exe 'hi PreProc guifg='s:keyword
exe 'hi Special guifg='s:fg
exe 'hi SpecialKey guifg='s:fg2' guibg='s:bg2
exe 'hi Statement guifg='s:keyword
exe 'hi StorageClass guifg='s:type
exe 'hi String guifg='s:str
exe 'hi Title guifg='s:fg
exe 'hi Todo guifg='s:fg2'  gui=inverse'
exe 'hi Type guifg='s:type
exe 'hi Underlined gui=underline'
