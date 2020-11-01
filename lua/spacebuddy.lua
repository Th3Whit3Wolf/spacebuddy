-- Name:         Spacebuddy
-- Description:  Light and dark theme inspired by spacemacs-theme
-- Author:       Th3Whit3Wolf <the.white.wolf.is.1337@gmail.com>
-- Maintainer:   Th3Whit3Wolf <the.white.wolf.is.1337@gmail.com>
-- Website:      https://github.com/Th3Whit3Wolf/spacebuddy
-- License:      Vim License (see `:help license`)
vim.cmd('packadd colorbuddy.nvim')
local Color, colors, Group, groups, styles = require("colorbuddy").setup()
local Color = require('colorbuddy.color').Color
local Group = require('colorbuddy.group').Group
local g = require('colorbuddy.group').groups
local c = require('colorbuddy.color').colors
local s = require('colorbuddy.style').styles
local b = s.bold
local i = s.italic
local n = s.inverse
local uc = s.undercurl
local ul = s.underline
local r = s.reverse
local sto = s.standout
local no = s.NONE
local v = vim.g

v.colors_name = 'spacebuddy'

if vim.o.background == 'dark' then
    -- Dark Colors
    Color.new('bg0', "#292b2e")
    Color.new('bg1', "#212026")
    Color.new('bg2', "#100a14")
    Color.new('bg3', "#0a0814")
    Color.new('bg4', "#34323e")
    Color.new('fg0', "#cdcdcd")
    Color.new('fg1', "#b2b2b2")
    Color.new('fg2', "#8e8e8e")
    Color.new('fg3', "#727272")
    Color.new('fg4', "#5b5b5b")
    Color.new('fg5', "#9a9aba")
    Color.new('fg6', "#5e5079")
    Color.new('fg7', "#666666")
    Color.new('grey', "#44505c")
    Color.new('grey1', "#768294")
    Color.new('red1', "#ce537a")
    Color.new('blue1', "#7590db")
    Color.new('purple0', "#bc6ec5")
    Color.new('purple1', "#d698fe")
    Color.new('purple2', "#a45bad")
    Color.new('purple3', "#5d4d7a")
    Color.new('purple4', "#34323e")
    Color.new('aqua0', "#2d9574")
    Color.new('orange0', "#e18254")
    Color.new('cyan', "#28def0")
    Color.new('mat', "#86dc2f")
    Color.new('meta', "#9f8766")
    Color.new('highlight', "#444155")
    Color.new('comp', "#c56ec3")
    Color.new('cblk', "#cbc1d5")
    -- Terminal Colors
    v.terminal_color_0 = '#292b2e'
    v.terminal_color_8 = '#44505c'
    v.terminal_color_12 = '#4f97d7'
    v.terminal_color_13 = '#bc6ec5'
    v.terminal_color_14 = '#2d9574'
    v.terminal_color_7 = '#5b5b5b'
    v.terminal_color_15 = '#b2b2b2'
else
    -- Light Colors
    Color.new('bg0', "#fbf8ef")
    Color.new('bg1', "#efeae9")
    Color.new('bg2', "#e3dedd")
    Color.new('bg3', "#d2ceda")
    Color.new('bg4', "#a8a4ae")
    Color.new('fg0', "#83758c")
    Color.new('fg1', "#655370")
    Color.new('fg2', "#5a4a64")
    Color.new('fg3', "#504259")
    Color.new('fg4', "#463a4e")
    Color.new('fg5', "#8c799f")
    Color.new('fg6', "#c8c6dd")
    -- Color.new('fg7', "#666666")
    Color.new('grey', "#a8a8bf")
    Color.new('grey1', "#768294")
    Color.new('red1', "#ba2f59")
    Color.new('blue1', "#715ab1")
    Color.new('purple0', "#6c3163")
    Color.new('purple1', "#86589e")
    Color.new('purple2', "#4e3163")
    Color.new('purple3', "#d3d3e7")
    Color.new('purple4', "#e2e0ea")
    Color.new('aqua0', "#24775c")
    Color.new('orange0', "#b46843")
    Color.new('cyan', "#21b8c7")
    Color.new('mat', "#ba2f59")
    Color.new('meta', "#da8b55")
    Color.new('highlight', "#d3d3e7")
    Color.new('comp', "#6c4173")
    Color.new('cblk', "#655370")
    -- Terminal Colors
    v.terminal_color_0 = '#fbf8ef'
    v.terminal_color_8 = '#a8a8bf'
    v.terminal_color_12 = '#3a81c3'
    v.terminal_color_13 = '#6c3163'
    v.terminal_color_14 = '#24775c'
    v.terminal_color_7 = '#463a4e'
    v.terminal_color_15 = '#655370'
end

-------------------
-- Common Colors --
-------------------

Color.new('red', "#f2241f")
Color.new('red0', "#f54e3c")
Color.new('blue', "#58b0d9")
Color.new('blue0', "#4f97d7")
Color.new('purple', "#544a65")
Color.new('green', "#67b11d")
Color.new('green0', "#2aa1ae")
Color.new('aqua', "#4495b4")
Color.new('orange', "#d79650")
Color.new('yellow', "#b1951d")
Color.new('yellow1', "#e5d11c")
Color.new('war', "#dc752f")
Color.new('number', "#e697e6")
Color.new('debug', "#ffc8c8")
Color.new('float', "#b7b7ff")
Color.new('delim', "#74baac")

----------------------------
-- Common Terminal Colors --
----------------------------

v.terminal_color_1 = '#d26487'
v.terminal_color_2 = '#35a8a5'
v.terminal_color_3 = '#b89f33'
v.terminal_color_4 = '#6981c5'
v.terminal_color_5 = '#a15ea7'
v.terminal_color_6 = '#288668'
v.terminal_color_9 = '#f2241f'
v.terminal_color_10 = '#67b11d'
v.terminal_color_11 = '#b1951d'

-------------------------------------------------------------
-- Syntax Groups (descriptions and ordering from `:h w18`) --
-------------------------------------------------------------

Group.new('Comment', c.green0, c.none, i) -- any comment
Group.new('Constant', c.green0, c.none, no) -- any constant
Group.new('String', c.aqua0, c.none, i) -- this is a string
Group.new('Character', c.purple0, c.none, no) -- a character constant: 'c', '\n'
Group.new('Boolean', c.war, c.none, no) -- a boolean constant: TRUE, false
Group.new('Float', c.float, c.none, no) -- a floating point constant: 2.3e10
Group.new('Identifier', c.blue1, c.none, no) -- any variable name
Group.new('Function', c.purple0, c.none, b) -- function name (also: methods for classes)
Group.new('Statement', c.blue0, c.none, no) -- any statement
Group.new('Conditional', c.blue0, c.none, b) -- if, then, else, endif, switch, etc.
Group.new('Repeat', c.red1, c.none, b) -- for, do, while, etc.
Group.new('Label', c.red1, c.none, no) -- case, default, etc.
Group.new('Operator', c.blue, c.none, no) -- sizeof", "+", "*", etc.
Group.new('Keyword', c.blue0, c.none, b) -- any other keyword
Group.new('Exception', c.red, c.none, no) -- try, catch, throw
Group.new('PreProc', c.purple1, c.none, no) -- generic Preprocessor
Group.new('Include', c.yellow, c.none, no) -- preprocessor #include
Group.new('Define', c.aqua0, c.none, no) -- preprocessor #define
Group.new('Macro', c.blue1, c.none, b) -- same as Define
Group.new('PreCondit', c.purple2, c.none, no) -- preprocessor #if, #else, #endif, etc.
Group.new('Type', c.red1, c.none, no) -- int, long, char, etc.
Group.new('StorageClass', c.yellow, c.none, b) -- static, register, volatile, etc.
Group.new('Structure', c.aqua, c.none, b) -- struct, union, enum, etc.
Group.new('Typedef', c.yellow, c.none, no) -- A typedef
Group.new('Special', c.orange, c.none, i) -- any special symbol
Group.new('SpecialChar', c.cyan, c.none, no) -- special character in a constant
Group.new('Tag', c.orange0, c.none, no) -- you can use CTRL-] on this
Group.new('Delimiter', c.delim, c.none, no) -- character that needs attention
Group.new('SpecialComment', c.grey1, c.none, no) -- special things inside a comment
Group.new('Debug', c.red0, c.none, no) -- debugging statements
Group.new('Underlined', c.blue0, c.none, ul) -- text that stands out, HTML links
Group.new('Ignore', c.float, c.none, no) -- left blank, hidden
Group.new('Error', c.red, c.none, b + r) -- any erroneous construct
Group.new('Todo', c.orange0, c.none, b + i) -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX

--------------------------------------------------------------------------------
-- Highlighting Groups (descriptions and ordering from `:h highlight-groups`) --
--------------------------------------------------------------------------------

Group.new('ColorColumn', c.fg0, c.bg1, no) --  used for the columns set with 'colorcolumn'
Group.new('Conceal', c.blue0, c.bg0, no) -- placeholder characters substituted for concealed text (see 'conceallevel')
Group.new('Cursor', c.orange0, c.none, b + r) -- the character under the cursor
Group.new('CursorIM', c.fg0, c.none, r) -- like Cursor, but used when in IME mode
Group.new('Directory', c.blue0, c.none, b) -- directory names (and other special names in listings)
Group.new('DiffAdd', c.green, c.none, r) -- diff mode: Added line
Group.new('DiffChange', c.orange0, c.none, r) --  diff mode: Changed line
Group.new('DiffDelete', c.red, c.none, r) -- diff mode: Deleted line
Group.new('DiffText', c.yellow, c.none, r) -- diff mode: Changed text within a changed line
Group.new('EndOfBuffer', c.none, c.none, no) -- filler lines (~) after the last line in the buffer
Group.new('ErrorMsg', c.none, c.bg1, no) -- error messages on the command line
Group.new('VertSplit', c.bg1, c.none, no) -- the column separating verti-- cally split windows
Group.new('Folded', c.purple2, c.bg1, i) -- line used for closed folds
Group.new('FoldColumn', c.purple0, c.none, no) -- 'foldcolumn'
Group.new('SignColumn', c.fg1, c.none, no) -- column where signs are displayed
Group.new('IncSearch', c.orange0, c.none, b + r) -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
Group.new('LineNr', c.grey, c.none, no) -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
Group.new('CursorLineNr', c.purple0, c.none, no) -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
Group.new('MatchParen', c.green, c.none, b + ul) -- The character under the cursor or just before it, if it is a paired bracket, and its match.
Group.new('ModeMsg', c.yellow1, c.none, no) -- 'showmode' message (e.g., "-- INSERT --")
Group.new('MoreMsg', g.ModeMsg, g.ModeMsg, g.ModeMsg) -- more-prompt
Group.new('NonText', c.grey, c.none, no) -- '~' and '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line).
Group.new('Normal', c.fg1, c.bg0, no) -- normal text
Group.new('Pmenu', c.fg5, c.purple4, no) -- Popup menu: normal item.
Group.new('PmenuSel', c.fg0, c.fg6, no) -- Popup menu: selected item.
Group.new('PmenuSbar', c.fg0, c.bg1, no) -- Popup menu: scrollbar.
Group.new('PmenuThumb', c.fg0, c.purple3, no) -- Popup menu: Thumb of the scrollbar.
Group.new('Question', c.orange0, c.none, b) -- hit-enter prompt and yes/no questions
Group.new('QuickFixLine', g.Search, g.Search, g.Search) -- Current quickfix item in the quickfix window.
Group.new('qfLineNr', g.Type, g.Type, g.Type)
Group.new('Search', c.green, c.none, b + r) -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
Group.new('SpecialKey', c.purple0, c.none, no) -- Meta and special keys listed with ":map", also for text used to show unprintable characters in the text, 'listchars'. Generally: text that is displayed differently from what it really is.
Group.new('SpellBad', c.red, c.none, i + uc) -- Word that is not recognized by the spellchecker. This will be combined with the highlighting used otherwise.
Group.new('SpellCap', c.blue0, c.none, i + uc) -- Word that should start with a capital. This will be combined with the highlighting used otherwise.
Group.new('SpellLocal', c.aqua0, c.none, i + uc) -- Word that is recognized by the spellchecker as one that is used in another region. This will be combined with the highlighting used otherwise.
Group.new('SpellRare', c.purple0, c.none, i + uc) -- Word that is recognized by the spellchecker as one that is hardly ever used. spell This will be combined with the highlighting used otherwise.
Group.new('StatusLine', c.fg1, c.purple3, no) -- status line of current window
Group.new('StatusLineNC', c.purple3, c.purple4, no) -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
Group.new('StatusLineTerm', g.StatusLine, g.StatusLine, g.StatusLine) -- status line of current :terminal window
Group.new('StatusLineTermNC', g.StatusLineNC, g.StatusLineNC, g.StatusLineNC) -- status line of non-current :terminal window
Group.new('TabLineFill', c.purple, c.bg1, no)
Group.new('TabLineSel', c.green, c.bg1, no)
Group.new('TabLine', g.TabLineFill, g.TabLineFill, g.TabLineFill)
Group.new('Title', c.green, c.none, b) -- titles for output from ":set all", ":autocmd" etc.
Group.new('Visual', c.fg0, c.purple, no) -- Visual mode selection
Group.new('VisualNOS', g.Visual, g.Visual, g.Visual) -- Visual mode selection when vim is "Not Owning the Selection". Only X11 Gui's gui-x11 and xterm-clipboard supports this.
Group.new('WarningMsg', c.red, c.none, no) --  warning messages
Group.new('WildMenu', c.orange0, c.bg1, b) --  current match in 'wildmenu' completion

--------------------------------
-- Miscellaneous Highlighting --
--------------------------------

Group.new('CursorColumn', c.none, c.bg1, no)
Group.new('CursorLine', c.none, c.bg1, no)
Group.new('ToolbarLine', c.fg0, c.bg3, no)
Group.new('ToolbarButton', c.fg0, c.bg3, b)
Group.new('NormalMode', c.fg4, c.none, r)
Group.new('InsertMode', c.blue0, c.none, r)
Group.new('ReplaceMode', c.aqua0, c.none, r)
Group.new('VisualMode', c.orange0, c.none, r)
Group.new('CommandMode', c.purple0, c.none, r)
Group.new('Warnings', c.orange0, c.none, r)

------------------------------------
-- Language-Specific Highlighting --
------------------------------------

-- C
Group.new('cOperator', c.purple0, c.none, no)
Group.new('cStructure', c.orange0, c.none, no)
-- CoffeeScript
Group.new('coffeeExtendedOp', c.fg3, c.none, no)
Group.new('coffeeSpecialOp', c.fg3, c.none, no)
Group.new('coffeeCurly', c.orange0, c.none, no)
Group.new('coffeeParen', c.fg3, c.none, no)
Group.new('coffeeBracket', c.orange0, c.none, no)
-- Clojure
Group.new('clojureKeyword', c.blue0, c.none, no)
Group.new('clojureCond', c.orange0, c.none, no)
Group.new('clojureSpecial', c.orange0, c.none, no)
Group.new('clojureDefine', c.orange0, c.none, no)
Group.new('clojureFunc', c.yellow, c.none, no)
Group.new('clojureRepeat', c.yellow, c.none, no)
Group.new('clojureCharacter', c.aqua0, c.none, no)
Group.new('clojureStringEscape', c.aqua0, c.none, no)
Group.new('clojureException', c.red, c.none, no)
Group.new('clojureRegexp', c.aqua0, c.none, no)
Group.new('clojureRegexpEscape', c.aqua0, c.none, no)
Group.new('clojureRegexpCharClass', c.fg3, c.none, b)
Group.new('clojureRegexpMod', g.clojureRegexpCharClass, g.clojureRegexpCharClass, g.clojureRegexpCharClass)
Group.new('clojureRegexpQuantifier', g.clojureRegexpCharClass, g.clojureRegexpCharClass, g.clojureRegexpCharClass)
Group.new('clojureParen', c.fg3, c.none, no)
Group.new('clojureAnonArg', c.yellow, c.none, no)
Group.new('clojureVariable', c.blue0, c.none, no)
Group.new('clojureMacro', c.orange0, c.none, no)
Group.new('clojureMeta', c.yellow, c.none, no)
Group.new('clojureDeref', c.yellow, c.none, no)
Group.new('clojureQuote', c.yellow, c.none, no)
Group.new('clojureUnquote', c.yellow, c.none, no)
-- CSS
Group.new('cssBraces', c.blue0, c.none, no)
Group.new('cssFunctionName', c.yellow, c.none, no)
Group.new('cssIdentifier', c.orange0, c.none, no)
Group.new('cssClassName', c.green, c.none, no)
Group.new('cssColor', c.blue0, c.none, no)
Group.new('cssSelectorOp', c.blue0, c.none, no)
Group.new('cssSelectorOp2', c.blue0, c.none, no)
Group.new('cssImportant', c.green, c.none, no)
Group.new('cssVendor', c.fg1, c.none, no)
Group.new('cssTextProp', c.aqua0, c.none, no)
Group.new('cssAnimationProp', c.aqua0, c.none, no)
Group.new('cssUIProp', c.yellow, c.none, no)
Group.new('cssTransformProp', c.aqua0, c.none, no)
Group.new('cssTransitionProp', c.aqua0, c.none, no)
Group.new('cssPrintProp', c.aqua0, c.none, no)
Group.new('cssPositioningProp', c.yellow, c.none, no)
Group.new('cssBoxProp', c.aqua0, c.none, no)
Group.new('cssFontDescriptorProp', c.aqua0, c.none, no)
Group.new('cssFlexibleBoxProp', c.aqua0, c.none, no)
Group.new('cssBorderOutlineProp', c.aqua0, c.none, no)
Group.new('cssBackgroundProp', c.aqua0, c.none, no)
Group.new('cssMarginProp', c.aqua0, c.none, no)
Group.new('cssListProp', c.aqua0, c.none, no)
Group.new('cssTableProp', c.aqua0, c.none, no)
Group.new('cssFontProp', c.aqua0, c.none, no)
Group.new('cssPaddingProp', c.aqua0, c.none, no)
Group.new('cssDimensionProp', c.aqua0, c.none, no)
Group.new('cssRenderProp', c.aqua0, c.none, no)
Group.new('cssColorProp', c.aqua0, c.none, no)
Group.new('cssGeneratedContentProp', c.aqua0, c.none, no)
-- DTD
Group.new('dtdFunction', c.grey, c.none, no)
Group.new('dtdTagName', c.purple0, c.none, no)
Group.new('dtdParamEntityPunct', c.grey, c.none, no)
Group.new('dtdParamEntityDPunct', c.grey, c.none, no)
-- Diff
Group.new('diffAdded', c.green, c.none, no)
Group.new('diffRemoved', c.red, c.none, no)
Group.new('diffChanged', c.aqua0, c.none, no)
Group.new('diffFile', c.orange0, c.none, no)
Group.new('diffNewFile', c.yellow, c.none, no)
Group.new('diffLine', c.blue0, c.none, no)
-- Elixir
Group.new('elixirDocString', g.Comment, g.Comment, g.Comment)
Group.new('elixirStringDelimiter', c.green, c.none, no)
Group.new('elixirInterpolationDelimiter', c.aqua0, c.none, no)
Group.new('elixirModuleDeclaration', c.yellow, c.none, no)
-- Go
Group.new('goDirective', c.aqua0, c.none, no)
Group.new('goConstants', c.purple0, c.none, no)
Group.new('goDeclaration', g.Keyword, g.Keyword, g.Keyword)
Group.new('goDeclType', c.blue0, c.none, no)
Group.new('goBuiltins', c.orange0, c.none, no)
-- Haskell
Group.new('haskellType', c.fg1, c.none, no)
Group.new('haskellIdentifier', c.fg1, c.none, no)
Group.new('haskellSeparator', c.fg1, c.none, no)
Group.new('haskellDelimiter', c.fg4, c.none, no)
Group.new('haskellOperators', c.blue0, c.none, no)
Group.new('haskellBacktick', c.orange0, c.none, no)
Group.new('haskellStatement', c.orange0, c.none, no)
Group.new('haskellConditional', c.orange0, c.none, no)
Group.new('haskellLet', c.aqua0, c.none, no)
Group.new('haskellDefault', c.aqua0, c.none, no)
Group.new('haskellWhere', c.aqua0, c.none, no)
Group.new('haskellBottom', c.aqua0, c.none, no)
Group.new('haskellBlockKeywords', c.aqua0, c.none, no)
Group.new('haskellImportKeywords', c.aqua0, c.none, no)
Group.new('haskellDeclKeyword', c.aqua0, c.none, no)
Group.new('haskellDeriving', c.aqua0, c.none, no)
Group.new('haskellAssocType', c.aqua0, c.none, no)
Group.new('haskellNumber', c.purple0, c.none, no)
Group.new('haskellPragma', c.purple0, c.none, no)
Group.new('haskellString', c.green, c.none, no)
Group.new('haskellChar', c.green, c.none, no)
-- HTML (keep consistent with Markdown, below)
Group.new('htmlTag', c.blue0, c.none, no)
Group.new('htmlEndTag', c.blue0, c.none, no)
Group.new('htmlTagName', c.purple2, c.none, no)
Group.new('htmlArg', c.aqua0, c.none, no)
Group.new('htmlScriptTag', c.purple0, c.none, no)
Group.new('htmlTagN', c.fg1, c.none, no)
Group.new('htmlSpecialTagName', c.aqua0, c.none, b)
Group.new('htmlLink', c.blue0, c.none, ul)
Group.new('htmlSpecialChar', c.orange0, c.none, no)
Group.new('htmlBold', fg, c.none, b)
Group.new('htmlBoldUnderline', fg, c.none, b, underline)
Group.new('htmlBoldItalic', fg, c.none, b + i)
Group.new('htmlBoldUnderlineItalic', fg, c.none, b + i + ul)
Group.new('htmlUnderline', fg, c.none, ul)
Group.new('htmlUnderlineItalic', fg, c.none, i + ul)
Group.new('htmlItalic', c.blue1, c.none, i)
Group.new('htmlH1', c.blue0, c.none, b)
Group.new('htmlH2', c.aqua0, c.none, b)
Group.new('htmlH3', c.green, c.none, b)
Group.new('htmlH4', c.yellow, c.none, b)
Group.new('htmlH5', c.yellow, c.none, no)
Group.new('htmlH6', c.yellow, c.none, no)
-- Java
Group.new('javaAnnotation', c.blue0, c.none, no)
Group.new('javaDocTags', c.aqua0, c.none, no)
Group.new('javaCommentTitle', g.vimCommentTitle, g.vimCommentTitle, g.vimCommentTitle)
Group.new('javaParen', c.fg3, c.none, no)
Group.new('javaParen1', c.fg3, c.none, no)
Group.new('javaParen2', c.fg3, c.none, no)
Group.new('javaParen3', c.fg3, c.none, no)
Group.new('javaParen4', c.fg3, c.none, no)
Group.new('javaParen5', c.fg3, c.none, no)
Group.new('javaOperator', c.orange0, c.none, no)
Group.new('javaVarArg', c.green, c.none, no)
-- JavaScript
Group.new('javaScriptBraces', c.fg1, c.none, no)
Group.new('javaScriptFunction', c.aqua0, c.none, no)
Group.new('javaScriptIdentifier', c.red, c.none, no)
Group.new('javaScriptMember', c.blue0, c.none, no)
Group.new('javaScriptNumber', c.purple0, c.none, no)
Group.new('javaScriptNull', c.purple0, c.none, no)
Group.new('javaScriptParens', c.fg3, c.none, no)
Group.new('javascriptImport', c.aqua0, c.none, no)
Group.new('javascriptExport', c.aqua0, c.none, no)
Group.new('javascriptClassKeyword', c.aqua0, c.none, no)
Group.new('javascriptClassExtends', c.aqua0, c.none, no)
Group.new('javascriptDefault', c.aqua0, c.none, no)
Group.new('javascriptClassName', c.yellow, c.none, no)
Group.new('javascriptClassSuperName', c.yellow, c.none, no)
Group.new('javascriptGlobal', c.yellow, c.none, no)
Group.new('javascriptEndColons', c.fg1, c.none, no)
Group.new('javascriptFuncArg', c.fg1, c.none, no)
Group.new('javascriptGlobalMethod', c.fg1, c.none, no)
Group.new('javascriptNodeGlobal', c.fg1, c.none, no)
Group.new('javascriptBOMWindowProp', c.fg1, c.none, no)
Group.new('javascriptArrayMethod', c.fg1, c.none, no)
Group.new('javascriptArrayStaticMethod', c.fg1, c.none, no)
Group.new('javascriptCacheMethod', c.fg1, c.none, no)
Group.new('javascriptDateMethod', c.fg1, c.none, no)
Group.new('javascriptMathStaticMethod', c.fg1, c.none, no)
Group.new('javascriptURLUtilsProp', c.fg1, c.none, no)
Group.new('javascriptBOMNavigatorProp', c.fg1, c.none, no)
Group.new('javascriptDOMDocMethod', c.fg1, c.none, no)
Group.new('javascriptDOMDocProp', c.fg1, c.none, no)
Group.new('javascriptBOMLocationMethod', c.fg1, c.none, no)
Group.new('javascriptBOMWindowMethod', c.fg1, c.none, no)
Group.new('javascriptStringMethod', c.fg1, c.none, no)
Group.new('javascriptVariable', c.orange0, c.none, no)
Group.new('javascriptIdentifier', c.orange0, c.none, no)
Group.new('javascriptClassSuper', c.orange0, c.none, no)
Group.new('javascriptFuncKeyword', c.aqua0, c.none, no)
Group.new('javascriptAsyncFunc', c.aqua0, c.none, no)
Group.new('javascriptClassStatic', c.orange0, c.none, no)
Group.new('javascriptOperator', c.red1, c.none, no)
Group.new('javascriptForOperator', c.red1, c.none, no)
Group.new('javascriptYield', c.red1, c.none, no)
Group.new('javascriptExceptions', c.red1, c.none, no)
Group.new('javascriptMessage', c.red1, c.none, no)
Group.new('javascriptTemplateSB', c.aqua0, c.none, no)
Group.new('javascriptTemplateSubstitution', c.fg1, c.none, no)
Group.new('javascriptLabel', c.fg1, c.none, no)
Group.new('javascriptObjectLabel', c.fg1, c.none, no)
Group.new('javascriptPropertyName', c.fg1, c.none, no)
Group.new('javascriptLogicSymbols', c.fg1, c.none, no)
Group.new('javascriptArrowFunc', c.yellow, c.none, no)
Group.new('javascriptDocParamName', c.fg4, c.none, no)
Group.new('javascriptDocTags', c.fg4, c.none, no)
Group.new('javascriptDocNotation', c.fg4, c.none, no)
Group.new('javascriptDocParamType', c.fg4, c.none, no)
Group.new('javascriptDocNamedParamType', c.fg4, c.none, no)
Group.new('javascriptBrackets', c.fg1, c.none, no)
Group.new('javascriptDOMElemAttrs', c.fg1, c.none, no)
Group.new('javascriptDOMEventMethod', c.fg1, c.none, no)
Group.new('javascriptDOMNodeMethod', c.fg1, c.none, no)
Group.new('javascriptDOMStorageMethod', c.fg1, c.none, no)
Group.new('javascriptHeadersMethod', c.fg1, c.none, no)
Group.new('javascriptAsyncFuncKeyword', c.red1, c.none, b)
Group.new('javascriptAwaitFuncKeyword', c.red1, c.none, b)
Group.new('jsClassKeyword', g.Keyword, g.Keyword, g.Keyword)
Group.new('jsExtendsKeyword', g.Keyword, g.Keyword, g.Keyword)
Group.new('jsExportDefault', c.blue0, c.none, b)
Group.new('jsTemplateBraces', c.aqua0, c.none, no)
Group.new('jsGlobalNodeObjects', g.Keyword, g.Keyword, g.Keyword)
Group.new('jsGlobalObjects', g.Keyword, g.Keyword, g.Keyword)
Group.new('jsFunction', g.Function, g.Function, g.Function)
Group.new('jsFuncParens', c.orange0, c.none, no)
Group.new('jsParens', c.red1, c.none, no)
Group.new('jsNull', c.purple0, c.none, no)
Group.new('jsUndefined', g.ErrorMsg, g.ErrorMsg, g.ErrorMsg)
Group.new('jsClassDefinition', c.yellow, c.none, no)
Group.new('jsObjectProp', g.Identifier, g.Identifier, g.Identifier)
Group.new('jsObjectKey', c.blue, c.none, no)
Group.new('jsFunctionKey', c.blue1, c.none, no)
Group.new('jsBracket', c.red1, c.none, no)
Group.new('jsObjectColon', c.red1, c.none, no)
Group.new('jsFuncArgs', c.blue, c.none, no)
Group.new('jsFuncBraces', c.blue1, c.none, no)
Group.new('jsVariableDef', c.fg1, c.none, no)
Group.new('jsObjectBraces', g.Special, g.Special, g.Special)
Group.new('jsObjectValue', c.float, c.none, no)
Group.new('jsClassBlock', c.blue1, c.none, no)
Group.new('jsFutureKeys', c.orange0, c.none, b)
Group.new('jsFuncArgs', c.blue0, c.none, no)
Group.new('jsStorageClass', c.blue0, c.none, no)
Group.new('jsxRegion', c.blue0, c.none, no)
-- JSON
Group.new('jsonKeyword', c.green, c.none, no)
Group.new('jsonQuote', c.green, c.none, no)
Group.new('jsonBraces', c.fg1, c.none, no)
Group.new('jsonString', c.fg1, c.none, no)
-- Lua
Group.new('luaIn', c.red1, c.none, no)
Group.new('luaFunction', c.aqua0, c.none, no)
Group.new('luaTable', c.orange0, c.none, no)
-- Markdown (keep consistent with HTML, above
Group.new('markdownItalic', c.fg3, c.none, i)
Group.new('markdownH1', g.htmlH1, g.htmlH1, g.htmlH1)
Group.new('markdownH2', g.htmlH2, g.htmlH2, g.htmlH2)
Group.new('markdownH3', g.htmlH3, g.htmlH3, g.htmlH3)
Group.new('markdownH4', g.htmlH4, g.htmlH4, g.htmlH4)
Group.new('markdownH5', g.htmlH5, g.htmlH5, g.htmlH5)
Group.new('markdownH6', g.htmlH6, g.htmlH6, g.htmlH6)
Group.new('markdownCode', c.purple2, c.none, no)
Group.new('mkdCode', g.markdownCode, g.markdownCode, g.markdownCode)
Group.new('markdownCodeBlock', c.aqua0, c.none, no)
Group.new('markdownCodeDelimiter', c.orange0, c.none, no)
Group.new('mkdCodeDelimiter', g.markdownCodeDelimiter, g.markdownCodeDelimiter, g.markdownCodeDelimiter)
Group.new('markdownBlockquote', c.grey, c.none, no)
Group.new('markdownListMarker', c.grey, c.none, no)
Group.new('markdownOrderedListMarker', c.grey, c.none, no)
Group.new('markdownRule', c.grey, c.none, no)
Group.new('markdownHeadingRule', c.grey, c.none, no)
Group.new('markdownUrlDelimiter', c.fg3, c.none, no)
Group.new('markdownLinkDelimiter', c.fg3, c.none, no)
Group.new('markdownLinkTextDelimiter', c.fg3, c.none, no)
Group.new('markdownHeadingDelimiter', c.orange0, c.none, no)
Group.new('markdownUrl', c.purple0, c.none, no)
Group.new('markdownUrlTitleDelimiter', c.green, c.none, no)
Group.new('markdownLinkText', g.htmlLink, g.htmlLink, g.htmlLink)
Group.new('markdownIdDeclaration', g.markdownLinkText, g.markdownLinkText, g.markdownLinkText)
-- MoonScript
Group.new('moonSpecialOp', c.fg3, c.none, no)
Group.new('moonExtendedOp', c.fg3, c.none, no)
Group.new('moonFunction', c.fg3, c.none, no)
Group.new('moonObject', c.yellow, c.none, no)
-- Objective-C
Group.new('objcTypeModifier', c.red, c.none, no)
Group.new('objcDirective', c.blue0, c.none, no)
-- PureScript
Group.new('purescriptModuleKeyword', c.aqua0, c.none, no)
Group.new('purescriptModuleName', c.red1, c.none, b)
Group.new('purescriptWhere', c.aqua0, c.none, no)
Group.new('purescriptDelimiter', c.fg4, c.none, no)
Group.new('purescriptType', g.Type, g.Type, g.Type)
Group.new('purescriptImportKeyword', g.Keyword, g.Keyword, g.Keyword)
Group.new('purescriptHidingKeyword', g.Keyword, g.Keyword, g.Keyword)
Group.new('purescriptAsKeyword', g.Keyword, g.Keyword, g.Keyword)
Group.new('purescriptStructure', g.Structure, g.Structure, g.Structure)
Group.new('purescriptOperator', g.Operator, g.Operator, g.Operator)
Group.new('purescriptTypeVar', g.Type, g.Type, g.Type)
Group.new('purescriptConstructor', g.Function, g.Function, g.Function)
Group.new('purescriptFunction', g.Function, g.Function, g.Function)
Group.new('purescriptConditional', g.Conditional, g.Conditional, g.Conditional)
Group.new('purescriptBacktick', c.orange0, c.none, no)
-- Python
Group.new('pythonCoding', g.Comment, g.Comment, g.Comment)
-- Ruby
Group.new('rubyStringDelimiter', c.green, c.none, no)
Group.new('rubyInterpolationDelimiter', c.aqua0, c.none, no)
-- Rust
Group.new('rustSelf', c.blue0, c.none, b)
Group.new('rustPanic', c.red1, c.none, b)
Group.new('rustAssert', c.blue1, c.none, b)
-- Scala
Group.new('scalaNameDefinition', c.fg1, c.none, no)
Group.new('scalaCaseFollowing', c.fg1, c.none, no)
Group.new('scalaCapitalWord', c.fg1, c.none, no)
Group.new('scalaTypeExtension', c.fg1, c.none, no)
Group.new('scalaKeyword', c.red1, c.none, b)
Group.new('scalaKeywordModifier', c.red1, c.none, no)
Group.new('scalaSpecial', c.aqua0, c.none, no)
Group.new('scalaOperator', c.fg1, c.none, no)
Group.new('scalaTypeDeclaration', c.yellow, c.none, no)
Group.new('scalaTypeTypePostDeclaration', c.yellow, c.none, no)
Group.new('scalaInstanceDeclaration', c.fg1, c.none, no)
Group.new('scalaInterpolation', c.aqua0, c.none, no)
-- TypeScript
Group.new('typeScriptReserved', c.aqua0, c.none, no)
Group.new('typeScriptLabel', g.Label, g.Label, g.Label)
Group.new('typeScriptFuncKeyword', g.Function, g.Function, g.Function)
Group.new('typeScriptIdentifier', g.Identifier, g.Identifier, g.Identifier)
Group.new('typeScriptBraces', c.red1, c.none, no)
Group.new('typeScriptEndColons', c.fg1, c.none, no)
Group.new('typeScriptDOMObjects', c.fg1, c.none, no)
Group.new('typeScriptAjaxMethods', g.Function, g.Function, g.Function)
Group.new('typeScriptLogicSymbols', c.fg1, c.none, no)
Group.new('typeScriptDocSeeTag', g.Comment, g.Comment, g.Comment)
Group.new('typeScriptDocParam', g.Comment, g.Comment, g.Comment)
Group.new('typeScriptDocTags', g.vimCommentTitle, g.vimCommentTitle, g.vimCommentTitle)
Group.new('typeScriptGlobalObjects', g.Keyword, g.Keyword, g.Keyword)
Group.new('typeScriptParens', c.blue1, c.none, no)
Group.new('typeScriptOpSymbols', g.Operator, g.Operator, g.Operator)
Group.new('typeScriptHtmlElemProperties', g.Special, g.Special, g.Special)
Group.new('typeScriptNull', c.purple0, c.none, b)
Group.new('typeScriptInterpolationDelimiter', c.aqua0, c.none, no)
-- XML
Group.new('xmlTag', c.blue0, c.none, no)
Group.new('xmlEndTag', c.blue0, c.none, no)
Group.new('xmlTagName', c.blue0, c.none, no)
Group.new('xmlEqual', c.blue0, c.none, no)
Group.new('docbkKeyword', c.aqua0, c.none, b)
Group.new('xmlDocTypeDecl', c.grey, c.none, no)
Group.new('xmlDocTypeKeyword', c.purple0, c.none, no)
Group.new('xmlCdataStart', c.grey, c.none, no)
Group.new('xmlCdataCdata', c.purple0, c.none, no)
Group.new('xmlAttrib', c.aqua0, c.none, no)
Group.new('xmlProcessingDelim', c.grey, c.none, no)
Group.new('xmlAttribPunct', c.grey, c.none, no)
Group.new('xmlEntity', c.orange0, c.none, no)
Group.new('xmlEntityPunct', c.orange0, c.none, no)
-- Vim
Group.new('vimCommentTitle', c.blue1, c.none, b)
Group.new('vimNotation', c.orange0, c.none, no)
Group.new('vimBracket', c.orange0, c.none, no)
Group.new('vimMapModKey', c.orange0, c.none, no)
Group.new('vimCommand', c.blue0, c.none, b)
Group.new('vimLet', c.blue0, c.none, no)
Group.new('vimNorm', c.blue0, c.none, no)
Group.new('vimFuncSID', g.Function, g.Function, g.Function)
Group.new('vimFunction', g.Function, g.Function, g.Function)
Group.new('vimGroup', c.blue1, c.none, no)
Group.new('vimHiGroup', g.Type, g.Type, g.Type)
Group.new('vimSetSep', c.fg3, c.none, no)
Group.new('vimSep', c.fg3, c.none, no)
Group.new('vimContinue', c.yellow, c.none, no)

-------------------------
-- Plugin Highlighting --
-------------------------

-- ALE (dense-analysis/ale) 
Group.new('ALEError', c.fg0, c.none, uc)
Group.new('ALEWarning', c.fg0, c.none, uc)
Group.new('ALEInfo', c.fg0, c.none, uc)
Group.new('ALEErrorSign', c.red, c.none, no)
Group.new('ALEWarningSign', c.yellow, c.none, no)
Group.new('ALEInfoSign', c.blue0, c.none, no)
-- Buftabline (ap/vim-buftabline)
Group.new('BufTabLineCurrent', c.none, c.fg4, no)
Group.new('BufTabLineActive', c.fg4, c.bg2, no)
Group.new('BufTabLineHidden', c.purple4, c.bg1, no)
Group.new('BufTabLineFill', c.none, c.none, no)
-- Crates (mhinz/vim-crates)
Group.new('Crate', g.Comment, g.Comment, g.Comment)
-- CTRL P (ctrlpvim/ctrlp.vim)
Group.new('CtrlPMatch', c.yellow, c.none, no)
Group.new('CtrlPNoEntries', c.red, c.none, no)
Group.new('CtrlPPrtBase', c.bg2, c.none, no)
Group.new('CtrlPPrtCursor', c.blue0, c.none, no)
Group.new('CtrlPLinePre', c.bg2, c.none, no)
Group.new('CtrlPMode1', c.blue0, c.bg2, b)
Group.new('CtrlPMode2', c.none, c.blue0, b)
Group.new('CtrlPStats', c.fg4, c.bg2, b)
-- Current Word (dominikduda/vim_current_word)
Group.new('CurrentWord', c.fg0, c.purple, ul)
Group.new('CurrentWordTwins', c.fg0, c.purple, no)
-- Dirvish (justinmk/vim-dirvish)
Group.new('DirvishPathTail', c.aqua0, c.none, no)
Group.new('DirvishArg', c.yellow, c.none, no)
-- Easy Motion (easymotion/vim-easymotion)
Group.new('EasyMotionTarget', g.Search, g.Search, g.Search)
Group.new('EasyMotionShade', g.Comment, g.Comment, g.Comment)
-- Git Commit (tpope/vim-git)
Group.new('gitcommitSelectedFile', c.green, c.none, no)
Group.new('gitcommitDiscardedFile', c.red, c.none, no)
-- Gitgutter (airblade/vim-gitgutter)
Group.new('GitGutterAdd', c.green, c.none, b)
Group.new('GitGutterChange', c.orange0, c.none, b)
Group.new('GitGutterDelete', c.red, c.none, b)
Group.new('GitGutterChangeDelete', c.red1, c.none, b)
-- Git Messenger (rhysd/git-messenger.vim)
Group.new('gitmessengerPopupNormal', g.CursorLine, g.CursorLine, g.CursorLine) -- Normal color in popup window
Group.new('gitmessengerHeader', g.CursorLine, g.CursorLine, g.CursorLine) -- Header such as 'Commit:', 'Author:'
Group.new('gitmessengerHash', g.CursorLine, g.CursorLine, g.CursorLine) -- Commit hash at 'Commit:' header
Group.new('gitmessengerHistory', g.CursorLine, g.CursorLine, g.CursorLine) -- History number at 'History:' header    
-- Indent Guide (nathanaelkane/vim-indent-guides)
Group.new('IndentGuidesOdd', c.none, c.bg2, r)
Group.new('IndentGuidesEven', c.none, c.bg1, r)
-- Multi Cursors (mg979/vim-visual-multi)
Group.new('multiple_cursors_cursor', c.fg0, c.none, r)
Group.new('multiple_cursors_visual', c.fg0, c.bg2, no)
-- NerdTree (preservim/nerdtree)
Group.new('NERDTreeDir', c.blue0, c.none, b)
Group.new('NERDTreeDirSlash', c.blue0, c.none, no)
Group.new('NERDTreeOpenable', c.blue0, c.none, no)
Group.new('NERDTreeClosable', c.blue0, c.none, no)
Group.new('NERDTreeFile', c.fg1, c.none, no)
Group.new('NERDTreeExecFile', c.yellow, c.none, no)
Group.new('NERDTreeUp', c.red1, c.none, no)
Group.new('NERDTreeCWD', c.purple0, c.none, no)
Group.new('NERDTreeHelp', c.fg1, c.none, no)
Group.new('NERDTreeToggleOn', c.green, c.none, no)
Group.new('NERDTreeToggleOff', c.red, c.none, no)
-- Netrw (vim builtin)
Group.new('netrwDir', c.blue0, c.none, no)
Group.new('netrwClassify', c.blue0, c.none, no)
Group.new('netrwLink', c.grey, c.none, no)
Group.new('netrwSymLink', c.fg1, c.none, no)
Group.new('netrwExe', c.yellow, c.none, no)
Group.new('netrwComment', c.grey, c.none, no)
Group.new('netrwList', c.blue0, c.none, no)
Group.new('netrwHelpCmd', c.aqua0, c.none, no)
Group.new('netrwCmdSep', c.fg3, c.none, no)
Group.new('netrwVersion', c.green, c.none, no)
-- Show Marks (jacquesbh/vim-showmarks) -- Created by Andreas Politz
Group.new('ShowMarksHLl', c.blue0, c.none, b)
Group.new('ShowMarksHLu', c.blue0, c.none, b)
Group.new('ShowMarksHLo', c.blue0, c.none, b)
Group.new('ShowMarksHLm', c.blue0, c.none, b)
-- Signature (kshenoy/vim-signature)
Group.new('SignatureMarkText', c.blue0, c.none, b)
Group.new('SignatureMarkerText', c.purple0, c.none, b)
-- Signify (mhinz/vim-signify)
Group.new('SignifySignAdd', c.green, c.none, no)
Group.new('SignifySignChange', c.orange0, c.none, no)
Group.new('SignifySignDelete', c.red, c.none, no)
-- Startify (mhinz/vim-startify)
Group.new('StartifyBracket', c.fg3, c.none, no)
Group.new('StartifyFile', c.fg1, c.none, no)
Group.new('StartifyNumber', c.blue0, c.none, no)
Group.new('StartifyPath', c.blue1, c.none, b)
Group.new('StartifySlash', c.blue0, c.none, no)
Group.new('StartifySection', c.blue0, c.none, b)
Group.new('StartifySpecial', g.Type, g.Type, g.Type)
Group.new('StartifyHeader', c.purple2, c.none, no)
Group.new('StartifyFooter', c.purple2, c.none, no)
-- Syntastic (vim-syntastic/syntastic)
Group.new('SyntasticError', c.fg0, c.none, uc)
Group.new('SyntasticWarning', c.fg0, c.none, uc)
Group.new('SyntasticErrorSign', c.red, c.none, no)
Group.new('SyntasticWarningSign', c.yellow, c.none, no)
-- Which Key (liuchengxu/vim-which-key)
Group.new('WhichKey', g.Function, g.Function, g.Function)
Group.new('WhichKeySeperator', c.green, c.none, no)
Group.new('WhichKeyGroup', g.Keyword, g.Keyword, g.Keyword)
Group.new('WhichKeyDesc', g.Identifier, g.Identifier, g.Identifier)

---------------------
-- Neovim Builtins --
---------------------

-- +- Neovim Support -+
-- Group.new("healthError",c.nord_11, c.nord_1)
-- Group.new("healthSuccess",c.nord_14, c.nord_1)
-- Group.new("healthWarning",c.nord_13, c.nord_1)
-- Group.new("TermCursorNC",c.nord_1, c.nord_1)

-- LSP Groups (descriptions and ordering from `:h lsp-highlight`)
-- Group.new("LspDiagnosticsError", c.nord_11, c.none) -- used for "Error" diagnostic virtual text
-- Group.new("LspDiagnosticsErrorSign", c.nord_11, c.none) -- used for "Error" diagnostic signs in sign column
-- Group.new("LspDiagnosticsErrorFloating", c.nord_11, c.none) -- used for "Error" diagnostic messages in the diagnostics float
-- Group.new("LspDiagnosticsWarning", c.nord_11, c.none) -- used for "Warning" diagnostic virtual text
-- Group.new("LspDiagnosticsWarningSign", c.nord_13, c.none) -- used for "Warning" diagnostic signs in sign column
-- Group.new("LspDiagnosticsWarningFloating", c.nord_8, c.none) -- used for "Warning" diagnostic messages in the diagnostics float
-- Group.new("LSPDiagnosticsInformation", c.nord_10, c.none) -- used for "Information" diagnostic virtual text
-- Group.new("LspDiagnosticsInformationSign", c.nord_8, c.none)  -- used for "Information" diagnostic signs in sign column
-- Group.new("LspDiagnosticsInformationFloating", c.nord_10, c.none) -- used for "Information" diagnostic messages in the diagnostics float
-- Group.new("LspDiagnosticsHint", c.nord_8, c.none)  -- used for "Hint" diagnostic virtual text
-- Group.new("LspDiagnosticsHintSign", c.nord_10, c.none) -- used for "Hint" diagnostic signs in sign column
-- Group.new("LspDiagnosticsHintFloating", c.nord_8, c.none) -- used for "Hint" diagnostic messages in the diagnostics float
-- Group.new("LspReferenceText", c.nord_10, c.none) -- used for highlighting "text" references
-- Group.new("LspReferenceRead", c.nord_10, c.none) -- used for highlighting "read" references
-- Group.new("LspReferenceWrite", c.nord_10, c.none) -- used for highlighting "write" references

-- Nvim Treesitter Groups (descriptions and ordering from `:h nvim-treesitter-highlights`)
Group.new("TSError", g.Error, c.none, b) -- For syntax/parser errors
Group.new("TSPunctDelimiter", g.Delimiter, c.none) -- For delimiters ie: `.
-- Group.new("TSPunctBracket"       , c.fg     , nil) -- For brackets and parens
-- Group.new("TSPunctSpecial"       , c.fg     , nil) -- For special punctutation that does not fall in the catagories before
Group.new("TSConstant", g.Constant, c.none) -- For constants
Group.new("TSConstBuiltin", g.Constant, c.none) -- For constant that are built in the language: `nil` in Lua
Group.new("TSConstMacro", g.Constant, c.none) -- For constants that are defined by macros: `NULL` in C
Group.new("TSString", g.String, c.none) -- For strings
-- Group.new("TSStringRegex"        , c.fg_escape_char_construct , nil) -- For regexes
-- Group.new("TSStringEscape"       , c.fg_escape_char_backslash , nil) -- For escape characters within a string
Group.new("TSCharacter", g.Character, c.none) -- For characters
Group.new("TSNumber", g.Number, c.none) -- For integers
Group.new("TSBoolean", g.Boolean, c.none) -- For booleans
Group.new("TSFloat", g.Float, c.none) -- For floats
Group.new("TSFunction", g.Function, c.none) -- For function (calls and definitions
Group.new("TSFuncBuiltin", g.Function, c.none) -- For builtin functions: `table.insert` in Lua
Group.new("TSFuncMacro", g.Function, c.none) -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
-- Group.new("TSParameter"          , c.cyan              , c.none  , s.none) -- For parameters of a function.
-- Group.new("TSParameterReference" , g.TSParameter     , nil) -- For references to parameters of a function.
Group.new("TSMethod", g.Function, c.none) -- For method calls and definitions.
-- Group.new("TSField"    , c.magenta_alt_other , c.none  , s.none) -- For fields.
-- Group.new("TSProperty"    , TSField , c.none  , s.none) -- Same as `TSField`.
-- Group.new("TSConstructor"        , c.magenta_alt       , c.none)  -- For constructor calls and definitions: `{}` in Lua, and Java constructors
Group.new("TSConditional", g.Conditional, c.none) -- For keywords related to conditionnals
Group.new("TSRepeat", g.Repeat, c.none) -- For keywords related to loops
Group.new("TSLabel", g.Label, c.none) -- For labels: `label:` in C and `:label:` in Lua
Group.new("TSOperator", g.Operator, c.none) -- For any operator: `+`, but also `->` and `*` in C
Group.new("TSKeyword", g.Keyword, c.none) -- For keywords that don't fall in previous categories.
-- Group.new("TSKeywordFunction"    , c.magenta_alt       , c.none  , s.none) -- For keywords used to define a fuction.
Group.new("TSException", g.Exception, c.none) -- For exception related keywords.
Group.new("TSType", g.Type, c.none, s.none) -- For types.
Group.new("TSTypeBuiltin", g.Type, c.none, s.none) -- For builtin types (you guessed it, right ?).
Group.new("TSStructure", g.Structure, c.none) -- This is left as an exercise for the reader.
Group.new("TSInclude", g.Include, c.none) -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
-- Group.new("TSAnnotation"         , c.blue_nuanced_bg , c.none) -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
-- Group.new("TSText"             , c.fg              , c.bg           , b) -- For strings considered text in a markup language.
-- Group.new("TSStrong"             , c.fg              , c.bg           , b) -- For text to be represented with strong.
-- Group.new("TSEmphasis"            , c.blue_alt          , c.none  , b) -- For text to be represented with emphasis.
-- Group.new("TSUnderline"            , c.blue_alt          , c.none  , b) -- TSUnderline
-- Group.new("TSTitle"              , c.cyan_nuanced    , c.none) -- Text that is part of a title.
-- Group.new("TSLiteral"            , c.blue_alt          , c.none  , b) -- Literal text.
-- Group.new("TSURI"           , c.cyan              , c.none  , s.none) -- Any URI like a link or email.
-- Group.new("TSVariable"           , c.cyan              , c.none  , s.none) -- Any URI like a link or email.
-- Group.new("TSVariableBuiltin" , g.magenta_alt_other     , nil) -- Variable names that are defined by the languages, like `this` or `self`.
