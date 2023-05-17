" generated with ThemeCreator (https://github.com/mswift42/themecreator)
" and manually tweaked

hi clear

if exists("syntax on")
syntax reset
endif

set t_Co=256
let g:colors_name = "najs"

let s:bg="#1a1a1a"
let s:fg="#a6a6a6"
let s:fg2="#999999"
let s:fg3="#8b8b8b"
let s:fg4="#7e7e7e"
let s:bg2="#2c2c2c"
let s:bg3="#3f3f3f"
let s:bg4="#515151"
let s:keyword="#5cad7b"
let s:builtin="#a6a6a6"
let s:const= "#a55555"
let s:comment="#347d0c"
let s:func="#a6a6a6"
let s:str="#849546"
let s:type="#a6a6a6"
let s:var="#a6a6a6"
let s:warning="#ff0000"
let s:warning2="#ff8800"

let s:popup="#0a0a0a"
let s:select="#6d6d6d"
let s:cursorbg="#d3d3d3"
let s:faded="#707070"
let s:fgselect="black"

exe 'hi Normal gui=NONE guifg='s:fg' guibg='s:bg
exe 'hi Cursor gui=NONE guifg='s:fg' guibg='s:bg4
exe 'hi CursorLine gui=NONE guibg='s:bg2
exe 'hi CursorLineNr gui=NONE guifg='s:fg' guibg='s:bg2
exe 'hi CursorColumn gui=NONE guibg='s:bg2
exe 'hi ColorColumn gui=NONE guibg='s:bg2
exe 'hi FoldColumn gui=NONE guifg='s:comment' guibg='s:bg2
exe 'hi SignColumn gui=NONE guifg='s:comment' guibg='s:bg2
exe 'hi LineNr gui=NONE guifg='s:fg3' guibg='s:bg
exe 'hi VertSplit gui=NONE guifg='s:fg3' guibg='s:bg
exe 'hi MatchParen gui=NONE guifg='s:fg' guibg='s:bg4
exe 'hi PMenu gui=NONE guifg='s:fg' guibg='s:popup
exe 'hi PmenuSel gui=NONE guibg='s:bg3
exe 'hi Search gui=NONE guifg='s:bg' guibg='s:keyword
exe 'hi IncSearch gui=NONE guifg='s:bg' guibg='s:keyword
exe 'hi Folded gui=NONE guifg='s:fg4' guibg='s:bg
exe 'hi WildMenu gui=NONE guifg='s:str' guibg='s:bg
exe 'hi Visual gui=NONE guifg='s:fgselect' guibg='s:select

exe 'hi Boolean gui=NONE guifg='s:const
exe 'hi Character gui=NONE guifg='s:const
exe 'hi Comment gui=NONE guifg='s:comment
exe 'hi Conditional gui=NONE guifg='s:keyword
exe 'hi Constant gui=NONE guifg='s:const
exe 'hi Define gui=NONE guifg='s:keyword
exe 'hi DiffAdd gui=NONE guifg=#fafafa guibg=#123d0f'
exe 'hi DiffDelete gui=NONE guibg='s:bg2
exe 'hi DiffChange gui=NONE guibg=#151b3c guifg=#fafafa'
exe 'hi DiffText gui=NONE guifg=#ffffff guibg=#ff0000'
exe 'hi ErrorMsg gui=NONE guifg='s:warning' guibg='s:bg2
exe 'hi WarningMsg gui=NONE guifg='s:fg' guibg='s:warning2
exe 'hi Float gui=NONE guifg='s:const
exe 'hi Function gui=NONE guifg='s:func
exe 'hi Identifier gui=NONE guifg='s:type
exe 'hi Keyword gui=NONE guifg='s:keyword
exe 'hi Label gui=NONE guifg='s:var
exe 'hi NonText gui=NONE guifg='s:fg' guibg='s:bg
exe 'hi Number gui=NONE guifg='s:const
exe 'hi Operator gui=NONE guifg='s:keyword
exe 'hi PreProc gui=NONE guifg='s:keyword
exe 'hi Special gui=NONE guifg='s:fg
exe 'hi SpecialKey gui=NONE guifg='s:fg2' guibg='s:bg2
exe 'hi Statement gui=NONE guifg='s:keyword
exe 'hi StorageClass gui=NONE guifg='s:type
exe 'hi String gui=NONE guifg='s:str
exe 'hi Title gui=NONE guifg='s:fg
exe 'hi Todo gui=NONE guifg='s:fgselect' guibg='s:str
exe 'hi Type gui=NONE guifg='s:type
exe 'hi Underlined gui=NONE guifg='s:fg

exe 'hi DiagnosticUnnecessary gui=NONE guifg='s:faded

exe 'hi StatusLine gui=NONE guibg='s:select' guifg='s:fgselect
" make the horizontal splits clearer with this: set fillchars=stlnc:-
exe 'hi StatusLineNC gui=NONE guifg='s:faded
exe 'hi TabLineFill gui=NONE guifg='s:faded
exe 'hi TabLine gui=NONE guibg='s:bg' guifg='s:faded
exe 'hi TabLineSel gui=NONE guibg='s:select' guifg='s:fgselect

exe 'hi Directory gui=NONE guifg='s:keyword
exe 'hi netrwExe guifg='s:const
