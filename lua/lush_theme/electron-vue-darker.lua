--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

local Color0 = hsl('#506686')
local Color1 = hsl('#6af699')
local Color2 = hsl('#ffbf7a')
local Color3 = hsl('#82aaff')
local Color4 = hsl('#c792ea')
local Color5 = hsl('#ff4579')
local Color6 = hsl('#00d9ff')
local Color7 = hsl('#99a3b8')
local Color8 = hsl('#0b0f13')
local Color9 = hsl('#bac7e4')
local Color10 = hsl('#1b202c')
local Color11 = hsl('#253b3a')
local Color12 = hsl('#392436')
local Color13 = hsl('#374053')
local Color14 = hsl('#444b5b')
local Color15 = hsl('#747d8f')
local Color16 = hsl('#13161f')
local Color17 = hsl('#f8fafd')
local Color18 = hsl('#e16464')
local Color19 = hsl('#495365')
local Color20 = hsl('#fffa9e')

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- groups, mostly used for styling UI elements.
    -- Comment them out and add your own properties to override the defaults.
    -- An empty definition `{}` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    -- To be able to link to a group, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    -- See :h highlight-groups
    --
    ColorColumn { bg = Color13 }, -- Columns set with 'colorcolumn'
    -- Conceal        { }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    -- Cursor         { }, -- Character under the cursor
    -- CurSearch      { }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
    -- lCursor        { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM       { }, -- Like Cursor, but used when in IME mode |CursorIM|
    -- CursorColumn   { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine { bg = Color13 }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory {},                -- (reset) Directory names (and other special names in listings)
    DiffAdd { fg = Color1 },     -- Diff mode: Added line |diff.txt|
    DiffChange { fg = Color2 },  -- Diff mode: Changed line |diff.txt|
    DiffDelete { fg = Color5 },  -- Diff mode: Deleted line |diff.txt|
    -- DiffText       { }, -- Diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer    { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    -- TermCursor     { }, -- Cursor in a focused terminal
    -- TermCursorNC   { }, -- Cursor in an unfocused terminal
    -- ErrorMsg       { }, -- Error messages on the command line
    -- VertSplit      { }, -- Column separating vertically split windows
    -- Folded         { }, -- Line used for closed folds
    -- FoldColumn     { }, -- 'foldcolumn'
    -- SignColumn     { }, -- Column where |signs| are displayed
    -- IncSearch      { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute     { }, -- |:substitute| replacement text highlighting
    LineNr { fg = Color19 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    -- LineNrAbove    { }, -- Line number for when the 'relativenumber' option is set, above the cursor line
    -- LineNrBelow    { }, -- Line number for when the 'relativenumber' option is set, below the cursor line
    CursorLineNr { fg = Color9 }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    -- CursorLineFold { }, -- Like FoldColumn when 'cursorline' is set for the cursor line
    -- CursorLineSign { }, -- Like SignColumn when 'cursorline' is set for the cursor line
    MatchParen { fg = Color1, bg = Color19 }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- ModeMsg        { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea        { }, -- Area for messages and cmdline
    -- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg        { }, -- |more-prompt|
    NonText { fg = Color3 },                                                -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal { bg = Color10, fg = Color9 },                                   -- Normal text
    NormalFloat { bg = Normal.bg.lighten(10), fg = Normal.fg.lighten(10) }, -- Normal text in floating windows.
    -- FloatBorder    { }, -- Border of floating windows.
    -- FloatTitle     { }, -- Title of floating windows.
    -- NormalNC       { }, -- normal text in non-current windows
    Pmenu { bg = Normal.bg.lighten(10), fg = Normal.fg.darken(20) }, -- Popup menu: Normal item.
    PmenuSel { bg = Pmenu.bg.lighten(5), fg = Pmenu.fg.lighten(5) }, -- Popup menu: Selected item.
    -- PmenuKind      { }, -- Popup menu: Normal item "kind"
    -- PmenuKindSel   { }, -- Popup menu: Selected item "kind"
    -- PmenuExtra     { }, -- Popup menu: Normal item "extra text"
    -- PmenuExtraSel  { }, -- Popup menu: Selected item "extra text"
    -- PmenuSbar      { }, -- Popup menu: Scrollbar.
    PmenuThumb { bg = Color10, fg = Color9 }, -- Popup menu: Thumb of the scrollbar.
    -- Question       { }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine   { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search { bg = Normal.fg.darken(20), fg = Color8, gui = "bold" }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    -- SpecialKey     { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad       { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap       { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal     { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare      { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    StatusLine { bg = Color8, fg = Color7 },    -- Status line of current window
    -- StatusLineNC   { }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine { bg = Color16, fg = Color15 },     -- Tab pages line, not active tab page label
    TabLineFill { bg = Color16, fg = Color15 }, -- Tab pages line, where there are no labels
    TabLineSel { bg = Color17, fg = Color10 },  -- Tab pages line, active tab page label
    Title {},                                   -- (reset) Titles for output from ":set all", ":autocmd" etc.
    Visual { bg = Color13 },                    -- Visual mode selection
    -- VisualNOS      { }, -- Visual mode selection when vim is "Not Owning the Selection".
    -- WarningMsg     { }, -- Warning messages
    Whitespace { fg = Color19 },            -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- Winseparator   { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    WildMenu { bg = Color10, fg = Color9 }, -- Current match in 'wildmenu' completion
    -- WinBar         { }, -- Window bar of current window
    -- WinBarNC       { }, -- Window bar of not-current windows

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment { fg = Color0 },    -- Any comment

    Constant { fg = Color3 },   -- (*) Any constant
    String { fg = Color1 },     --   A string constant: "this is a string"
    -- Character      { }, --   A character constant: 'c', '\n'
    Number { fg = Color2 },     --   A number constant: 234, 0xff
    Boolean { fg = Color5 },    --   A boolean constant: TRUE, false
    Float { fg = Color5 },      --   A floating point constant: 2.3e10

    Identifier { fg = Color9 }, -- (*) Any variable name
    Function { fg = Color3 },   --   Function name (also: methods for classes)

    -- Statement      { }, -- (*) Any statement
    Conditional { fg = Color4, italic = true }, --   if, then, else, endif, switch, etc.
    Repeat { fg = Color4, italic = true },      --   for, do, while, etc.
    Label { fg = Color4, italic = true },       --   case, default, etc.
    Operator { fg = Color6 },                   --   "sizeof", "+", "*", etc.
    Keyword { fg = Color4, italic = true },     --   any other keyword
    Exception { fg = Color4, italic = true },   --   try, catch, throw

    -- PreProc        { }, -- (*) Generic Preprocessor
    Include { Keyword }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    -- Macro          { }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

    Type { fg = Color20 }, -- (*) int, long, char, etc.
    -- StorageClass   { }, --   static, register, volatile, etc.
    -- Structure      { }, --   struct, union, enum, etc.
    -- Typedef        { }, --   A typedef

    Special { fg = Color20 }, -- (*) Any special symbol
    -- SpecialChar    { }, --   Special character in a constant
    -- Tag            { },            --   You can use CTRL-] on this
    Delimiter { fg = Color6 }, --   Character that needs attention
    -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
    -- Debug          { }, --   Debugging statements

    -- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    -- Error          { }, -- Any erroneous construct
    Todo { fg = Color15 }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError { fg = Color18 }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticWarn             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticInfo             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticHint             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticOk               { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
    -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
    -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
    -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
    -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
    -- DiagnosticUnderlineOk      { } , -- Used to underline "Ok" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
    -- DiagnosticSignOk           { } , -- Used for "Ok" signs in sign column.

    -- Tree-Sitter syntax groups.
    --
    -- See :h treesitter-highlight-groups, some groups may not be listed,
    -- submit a PR fix to lush-template!
    --
    -- Tree-Sitter groups are defined with an "@" symbol, which must be
    -- specially handled to be valid lua code, we do this via the special
    -- sym function. The following are all valid ways to call the sym function,
    -- for more details see https://www.lua.org/pil/5.html
    --
    -- sym("@text.literal")
    -- sym('@text.literal')
    -- sym"@text.literal"
    -- sym'@text.literal'
    --
    -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

    -- sym"@text.literal"      { }, -- Comment
    -- sym"@text.reference"    { }, -- Identifier
    -- sym"@text.title"        { }, -- Title
    -- sym"@text.uri"          { }, -- Underlined
    -- sym"@text.underline"    { }, -- Underlined
    -- sym"@text.todo"         { }, -- Todo
    -- sym"@comment"           { }, -- Comment
    -- sym"@punctuation"       { }, -- Delimiter
    -- sym"@constant"          { }, -- Constant
    -- sym"@constant.builtin"  { }, -- Special
    -- sym"@constant.macro"    { }, -- Define
    -- sym"@define"            { }, -- Define
    -- sym"@macro"             { }, -- Macro
    -- sym"@string"            { }, -- String
    -- sym"@string.escape"     { }, -- SpecialChar
    -- sym"@string.special"    { }, -- SpecialChar
    -- sym"@character"         { }, -- Character
    sym("@character.special") { bg = Color4 }, -- SpecialChar
    -- sym"@number"            { }, -- Number
    -- sym"@boolean"           { }, -- Boolean
    -- sym"@float"             { }, -- Float
    -- sym"@function"          { }, -- Function
    -- sym"@function.builtin"  { }, -- Special
    -- sym"@function.macro"    { }, -- Macro
    -- sym"@parameter"         { }, -- Identifier
    -- sym"@method"            { }, -- Function
    -- sym"@field"             { }, -- Identifier
    sym("@property") { fg = Color5 }, -- Identifier
    -- sym"@constructor"       { }, -- Special
    -- sym"@conditional"       { }, -- Conditional
    -- sym"@repeat"            { }, -- Repeat
    sym "@label" { fg = Color2 }, -- Label
    -- sym"@operator"          { }, -- Operator
    -- sym"@keyword"           { }, -- Keyword
    -- sym"@exception"         { }, -- Exception
    -- sym"@variable"          { }, -- Identifier
    sym("@type") { fg = Color5 }, -- Type
    -- sym"@type.definition"   { }, -- Typedef
    -- sym"@storageclass"      { }, -- StorageClass
    -- sym"@structure"         { }, -- Structure
    -- sym"@namespace"         { }, -- Identifier
    -- sym"@include"           { }, -- Include
    -- sym"@preproc"           { }, -- PreProc
    -- sym"@debug"             { }, -- Debug
    sym("@tag") { fg = Color5 },           -- Tag
    sym("@tag.attribute") { fg = Color2 }, -- Tag
    sym("@tag.delimiter") { fg = Color9 }, -- Tag

    -- semantic highlighting
    sym("@lsp.type.type") { fg = Color20 },
    sym("@lsp.type.property") { fg = Color5 },
    sym("@lsp.typemod.property.declaration") { fg = Color17 },

    -- semantic highlighting (typescript)
    sym("@lsp.typemod.property.declaration.typescript") { Identifier },
    sym("@lsp.typemod.member.declaration.typescript") { Function },
    sym("@lsp.typemod.function.declaration.typescript") { Function },
    sym("@lsp.mod.declaration.typescript") { Identifier },
    sym("@lsp.type.class.typescript") { fg = Color20 },

    -- semantic highlighting (lua)
    sym("@lsp.type.property.lua") { Identifier },

    -- treesitter

    -- vue
    sym("@punctuation.special.vue") { String },            -- attrs's quotes
    sym("@method.vue") { fg = Color20 },                   -- :property
    sym("@interpolation.vue") { fg = Color2 },             -- {{ }}
    sym("@directive.vue") { fg = Color4, italic = true },  -- v-if, v-else, v-else-if, etc..
    sym("@component_tag.vue") { fg = Color5.lighten(20) }, -- component on html <FakeComponent />

    -- tsx
    sym("@component_tag.tsx") { sym("@component_tag.vue") },                              -- component on html <FakeComponent />
    sym("@component_tag.property.tsx") { fg = sym("@component_tag.tsx").fg.lighten(30) }, -- component on html <FakeComponent />

    -- jsx
    sym("@component_tag.javascript") { sym("@component_tag.tsx") },                   -- component on html <FakeComponent />
    sym("@component_tag.property.javascript") { sym("@component_tag.property.tsx") }, -- component on html <FakeComponent />

    -- css
    sym("@type.qualifier.css") { fg = Color4, bold = true, italic = true }, -- !important
    sym("@type.definition.css") { fg = Color5 },                            -- variable definition e.g.: --border-color: red;
    sym("@type.css") { fg = Color5 },
    sym("@property.css") { Identifier },
    sym("@property_value.css") { fg = Color2 },
    sym("@class.name.css") { fg = Color2 },                           -- change class color, e.g.: .example
    sym("@tag.name.css") { fg = Color5 },                             -- change tag color, e.g.: div, span, h1, h2, etc.
    sym("@tag.pseudo_class.css") { fg = Color4 },                     -- :hover, :active, etc.
    sym("@tag.pseudo_element.css") { sym "@tag.pseudo_class.css" },   -- ::before, ::after
    sym("@tag.feature_name.css") { fg = Color6 },
    sym("@tag.id.css") { fg = Color3 },                               -- #example
    sym("@tag.attribute_name.css") { fg = Color2 },                   -- e.g.: div[class="example"] - change colro of "class" attribute
    sym("@unit.css") { fg = Color20 },                                -- e.g.: px, rem, em, etc.
    sym("@attribute_value.css") { fg = Color20 },                     -- change color of property's value
    sym("@call_expression.type.css") { sym("@type.definition.css") }, -- change color of variable when used in var()

    -- scss
    sym("@type.qualifier.scss") { sym("@type.qualifier.css") },   -- !important
    sym("@type.definition.scss") { sym("@type.definition.css") }, -- variable definition e.g.: --border-color: red;
    sym("@type.scss") { sym("@type.css") },
    sym("@property.scss") { sym("@property.css") },
    sym("@property_value.scss") { sym("@property_value.css") },
    sym("@class.name.scss") { sym("@class.name.css") },                     -- change class color, e.g.: .example
    sym("@tag.name.scss") { sym("@tag.name.css") },                         -- change tag color, e.g.: div, span, h1, h2, etc.
    sym("@tag.pseudo_class.scss") { sym("@tag.pseudo_class.css") },         -- :hover, :active, etc.
    sym("@tag.pseudo_element.scss") { sym("@tag.pseudo_class.scss") },      -- ::before, ::after
    sym("@tag.feature_name.scss") { sym("@tag.feature_name.css") },
    sym("@tag.id.scss") { sym("@tag.id.css") },                             -- #example
    sym("@tag.attribute_name.scss") { sym("@tag.attribute_name.css") },     -- e.g.: div[class="example"] - change colro of "class" attribute
    sym("@unit.scss") { sym("@unit.css") },                                 -- e.g.: px, rem, em, etc.
    sym("@attribute_value.scss") { sym("@attribute_value.css") },           -- change color of property's value
    sym("@call_expression.type.scss") { sym("@call_expression.type.css") }, -- change color of variable when used in var()

    -- typescript
    sym("@constant.builtin.typescript") { fg = Color3 },
    sym("@type.typescript") { fg = Color20 },               -- types inside import statements
    sym("@punctuation.special.typescript") { fg = Color5 }, -- `template ${variable}`
    sym("@type.qualifier.typescript") { fg = Color4 },
    sym("@variable.builtin.typescript") { Identifier },
    sym("@type.builtin.typescript") { fg = Color5 },
    sym("@constructor.typescript") { fg = Color3 },

    -- php
    sym("@constructor.php") { fg = Color20 },
    sym("@type.php") { fg = Color20 },                -- class color
    sym("@type.qualifier.php") { fg = Color4 },       -- public, const, private, static
    sym("@property.php") { Identifier },              -- variable color
    sym("@variable.builtin.php") { fg = Color4 },     -- $this, self
    sym("@dollar_sign.php") { fg = Color6 },          -- variable's dolar sign
    sym("@constant.builtin.php") { fg = Color3 },     -- null
    sym("@string.interpolation.php") { fg = Color5 }, -- "example: {$variable}"

    -- phpdoc
    sym("@attribute.phpdoc") { fg = Color3 },                          -- >>@property<< @var
    sym("@type.phpdoc") { fg = Color5, italic = true },                -- @property >>int<< $variable
    sym("@named_type.phpdoc") { fg = Color20, italic = true },         -- @property >>User<< $variable
    sym("@named_type.brackets.phpdoc") { fg = Color9, italic = true }, -- @property >>User<< $variable

    sym("@property.phpdoc") { fg = Color0 },                           -- @property int $>>variable<<
    sym("@keyword.phpdoc") { sym("@property.phpdoc") },                -- @property int >>$<<variable
  }
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
