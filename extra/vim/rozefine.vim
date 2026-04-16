set background=dark
hi clear

if exists('syntax_on')
    syntax reset
endif

let g:colors_name='Tabular'
set t_Co=256

let s:magenta = "#C1A9E8"
let s:green = "#4FA3C0"
let s:orange = "#F2A49E"
let s:yellow = "#EBC56C"
let s:cyan = "#AEE6F0"
let s:teal = "#4FA3C0"
let s:red = "#F07E9F"
let s:fg = "#E9F2F2"
let s:bg = "#181A1C"
let s:highlight_low = "#1B1E20"
let s:highlight_med = "#202325"
let s:highlight_high = "#33383C"
let s:surface = "#1F2225"
let s:overlay = "#272C2F"
let s:bg_dim = "#131618"
let s:fg_dim = "#586266"
let s:float_dim = "#859296"
let s:syntax_dim = "#859296"
let s:muted = "#859296"
let s:semantic = "#BFD6D8"

let s:diff_add = "#1B2A22"
let s:diff_change = "#1C2128"
let s:diff_delete = "#2A1E22"
let s:diff_text = "#2a3a4a"

function! s:hi(group, guisp, guifg, guibg, gui, cterm)
  let cmd = ""
  if a:guisp != ""
    let cmd = cmd . " guisp=" . a:guisp
  endif
  if a:guifg != ""
    let cmd = cmd . " guifg=" . a:guifg
  endif
  if a:guibg != ""
    let cmd = cmd . " guibg=" . a:guibg
  endif
  if a:gui != ""
    let cmd = cmd . " gui=" . a:gui
  endif
  if a:cterm != ""
    let cmd = cmd . " cterm=" . a:cterm
  endif
  if cmd != ""
    exec "hi " . a:group . cmd
  endif
endfunction

call s:hi("Statement", "NONE", s:magenta, "NONE", "NONE", "NONE")
call s:hi("Conditional", "NONE", s:magenta, "NONE", "NONE", "NONE")
call s:hi("Repeat", "NONE", s:magenta, "NONE", "NONE", "NONE")
call s:hi("Label", "NONE", s:magenta, "NONE", "NONE", "NONE")
call s:hi("Keyword", "NONE", s:magenta, "NONE", "NONE", "NONE")
call s:hi("Exception", "NONE", s:magenta, "NONE", "NONE", "NONE")
call s:hi("Include", "NONE", s:magenta, "NONE", "NONE", "NONE")
call s:hi("StorageClass", "NONE", s:magenta, "NONE", "NONE", "NONE")
call s:hi("Structure", "NONE", s:magenta, "NONE", "NONE", "NONE")

call s:hi("PreProc", "NONE", s:orange, "NONE", "NONE", "NONE")
call s:hi("Define", "NONE", s:orange, "NONE", "NONE", "NONE")
call s:hi("Macro", "NONE", s:orange, "NONE", "NONE", "NONE")
call s:hi("PreCondit", "NONE", s:orange, "NONE", "NONE", "NONE")

call s:hi("String", "NONE", s:green, "NONE", "NONE", "NONE")

call s:hi("Constant", "NONE", s:yellow, "NONE", "NONE", "NONE")
call s:hi("Number", "NONE", s:yellow, "NONE", "NONE", "NONE")
call s:hi("Float", "NONE", s:yellow, "NONE", "NONE", "NONE")
call s:hi("Boolean", "NONE", s:yellow, "NONE", "NONE", "NONE")
call s:hi("Character", "NONE", s:yellow, "NONE", "NONE", "NONE")
call s:hi("Special", "NONE", s:yellow, "NONE", "NONE", "NONE")
call s:hi("SpecialChar", "NONE", s:yellow, "NONE", "NONE", "NONE")

call s:hi("Function", "NONE", s:teal, "NONE", "NONE", "NONE")
call s:hi("Directory", "NONE", s:cyan, "NONE", "NONE", "NONE")
call s:hi("Identifier", "NONE", s:fg, "NONE", "NONE", "NONE")

call s:hi("Type", "NONE", s:cyan, "NONE", "NONE", "NONE")
call s:hi("Typedef", "NONE", s:cyan, "NONE", "NONE", "NONE")

call s:hi("Operator", "NONE", s:syntax_dim, "NONE", "NONE", "NONE")
call s:hi("Delimiter", "NONE", s:syntax_dim, "NONE", "NONE", "NONE")

call s:hi("Comment", "NONE", s:muted, "NONE", "NONE", "NONE")
call s:hi("SpecialComment", "NONE", s:muted, "NONE", "NONE", "NONE")

call s:hi("Error", "NONE", s:red, "NONE", "NONE", "NONE")
call s:hi("Debug", "NONE", s:cyan, "NONE", "NONE", "NONE")
call s:hi("Todo", "NONE", s:magenta, "NONE", "NONE", "NONE")

call s:hi("Normal", "NONE", s:fg, s:bg, "NONE", "NONE")
call s:hi("NormalNC", "NONE", s:fg, s:bg, "NONE", "NONE")
call s:hi("NormalSB", "NONE", s:fg, s:bg_dim, "NONE", "NONE")
call s:hi("Conceal", "NONE", s:fg_dim, "NONE", "NONE", "NONE")
call s:hi("NonText", "NONE", s:fg_dim, "NONE", "NONE", "NONE")
call s:hi("SpecialKey", "NONE", s:fg_dim, "NONE", "NONE", "NONE")
call s:hi("Whitespace", "NONE", s:fg_dim, "NONE", "NONE", "NONE")
call s:hi("EndOfBuffer", "NONE", s:fg_dim, "NONE", "NONE", "NONE")

call s:hi("Cursor", "NONE", s:bg, s:fg, "NONE", "NONE")
call s:hi("lCursor", "NONE", s:bg, s:fg, "NONE", "NONE")
call s:hi("CursorIM", "NONE", s:bg, s:fg, "NONE", "NONE")
call s:hi("CursorLine", "NONE", "NONE", s:highlight_low, "NONE", "NONE")
call s:hi("CursorColumn", "NONE", "NONE", s:highlight_low, "NONE", "NONE")
call s:hi("ColorColumn", "NONE", "NONE", s:highlight_low, "NONE", "NONE")

call s:hi("LineNr", "NONE", s:fg_dim, "NONE", "NONE", "NONE")
call s:hi("LineNrAbove", "NONE", s:fg_dim, "NONE", "NONE", "NONE")
call s:hi("LineNrBelow", "NONE", s:fg_dim, "NONE", "NONE", "NONE")
call s:hi("CursorLineNr", "NONE", s:fg, "NONE", "bold", "bold")

call s:hi("SignColumn", "NONE", s:fg_dim, s:bg, "NONE", "NONE")
call s:hi("SignColumnSB", "NONE", s:fg_dim, s:bg, "NONE", "NONE")
call s:hi("Folded", "NONE", s:magenta, s:bg, "NONE", "NONE")
call s:hi("FoldColumn", "NONE", s:fg_dim, s:bg, "NONE", "NONE")

call s:hi("VertSplit", "NONE", s:overlay, "NONE", "NONE", "NONE")
call s:hi("WinSeparator", "NONE", s:overlay, "NONE", "NONE", "NONE")

call s:hi("NormalFloat", "NONE", s:fg, s:surface, "NONE", "NONE")
call s:hi("FloatBorder", "NONE", s:overlay, s:surface, "NONE", "NONE")
call s:hi("FloatTitle", "NONE", s:cyan, s:overlay, "NONE", "NONE")

call s:hi("Pmenu", "NONE", s:float_dim, s:surface, "NONE", "NONE")
call s:hi("PmenuSel", "NONE", "NONE", s:highlight_high, "NONE", "NONE")
call s:hi("PmenuSbar", "NONE", "NONE", s:overlay, "NONE", "NONE")
call s:hi("PmenuThumb", "NONE", "NONE", s:float_dim, "NONE", "NONE")
call s:hi("WildMenu", "NONE", s:float_dim, s:surface, "NONE", "NONE")

call s:hi("StatusLine", "NONE", s:fg, s:surface, "NONE", "NONE")
call s:hi("StatusLineNC", "NONE", s:fg_dim, s:surface, "NONE", "NONE")
call s:hi("StatusLineTerm", "NONE", s:fg, s:surface, "NONE", "NONE")
call s:hi("StatusLineTermNC", "NONE", s:fg_dim, s:surface, "NONE", "NONE")

call s:hi("TabLine", "NONE", s:fg_dim, s:surface, "NONE", "NONE")
call s:hi("TabLineFill", "NONE", "NONE", s:surface, "NONE", "NONE")
call s:hi("TabLineSel", "NONE", s:cyan, s:bg, "NONE", "NONE")
call s:hi("Title", "NONE", s:cyan, "NONE", "bold", "bold")

call s:hi("Search", "NONE", s:yellow, s:highlight_med, "bold", "bold")
call s:hi("IncSearch", "NONE", s:bg, s:yellow, "NONE", "NONE")
call s:hi("CurSearch", "NONE", s:bg, s:yellow, "NONE", "NONE")
call s:hi("Substitute", "NONE", s:bg, s:orange, "NONE", "NONE")
call s:hi("MatchParen", "NONE", s:cyan, s:highlight_med, "bold,underline", "bold,underline")

call s:hi("Visual", "NONE", "NONE", s:highlight_high, "NONE", "NONE")
call s:hi("VisualNOS", "NONE", "NONE", s:highlight_high, "bold", "bold")

call s:hi("DiffAdd", "NONE", "NONE", s:diff_add, "NONE", "NONE")
call s:hi("DiffChange", "NONE", "NONE", s:diff_change, "NONE", "NONE")
call s:hi("DiffDelete", "NONE", s:red, s:diff_delete, "NONE", "NONE")
call s:hi("DiffText", "NONE", "NONE", s:diff_text, "NONE", "NONE")
call s:hi("diffAdded", "NONE", s:green, "NONE", "NONE", "NONE")
call s:hi("diffRemoved", "NONE", s:red, "NONE", "NONE", "NONE")
call s:hi("diffChanged", "NONE", s:cyan, "NONE", "NONE", "NONE")
call s:hi("diffOldFile", "NONE", s:fg_dim, s:diff_delete, "NONE", "NONE")
call s:hi("diffNewFile", "NONE", s:fg_dim, s:diff_add, "NONE", "NONE")
call s:hi("diffLine", "NONE", s:muted, "NONE", "NONE", "NONE")
call s:hi("diffFile", "NONE", s:cyan, "NONE", "NONE", "NONE")
call s:hi("diffIndexLine", "NONE", s:yellow, "NONE", "NONE", "NONE")

call s:hi("ModeMsg", "NONE", s:fg, "NONE", "bold", "bold")
call s:hi("MsgArea", "NONE", s:fg, s:bg, "NONE", "NONE")
call s:hi("MoreMsg", "NONE", s:cyan, "NONE", "NONE", "NONE")
call s:hi("Question", "NONE", s:magenta, "NONE", "NONE", "NONE")
call s:hi("ErrorMsg", "NONE", s:red, "NONE", "bold,italic", "bold,italic")
call s:hi("WarningMsg", "NONE", s:orange, "NONE", "NONE", "NONE")

call s:hi("Underlined", "NONE", s:fg, "NONE", "underline", "underline")
call s:hi("Bold", "NONE", s:fg, "NONE", "bold", "bold")
call s:hi("Italic", "NONE", s:fg, "NONE", "italic", "italic")

" QuickFix
call s:hi("qfFileName", "NONE", s:cyan, "NONE", "NONE", "NONE")
call s:hi("qfLineNr", "NONE", s:fg_dim, "NONE", "NONE", "NONE")
call s:hi("QuickFixLine", "NONE", s:fg, s:highlight_med, "bold", "bold")

" Health
call s:hi("healthError", "NONE", s:red, "NONE", "NONE", "NONE")
call s:hi("healthSuccess", "NONE", s:green, "NONE", "NONE", "NONE")
call s:hi("healthWarning", "NONE", s:orange, "NONE", "NONE", "NONE")

" WinBar
call s:hi("WinBar", "NONE", s:fg, s:surface, "NONE", "NONE")
call s:hi("WinBarNC", "NONE", s:fg_dim, s:surface, "NONE", "NONE")

hi link Define PreProc
hi link Macro PreProc
hi link PreCondit PreProc
hi link SpecialChar Special
hi link Tag Special
hi link SpecialComment Special
hi link Exception Error
hi link StatusLineTerm StatusLine
hi link StatusLineTermNC StatusLineNC
hi link Terminal Normal
hi link Ignore Comment

let g:terminal_ansi_colors = [s:bg, s:red, s:green, s:yellow, s:cyan, s:magenta, s:teal, s:fg, s:highlight_high, "#F5A0B0", "#6BBFD0", "#F5D080", "#C0F0F8", "#D0B8F0", "#F5B8B0", "#F5F8F8"]