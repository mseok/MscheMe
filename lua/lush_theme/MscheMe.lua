local lush = require('lush')
local hsl = lush.hsl

local black   = hsl("#1c1b19")
local white   = hsl("#f8f6f2")
local red     = hsl("#ff2c4b")
local green   = hsl("#aeee31")
local yellow  = hsl("#fade3d")
local blue    = hsl("#0e9dfc")
local magenta = hsl("#a72e9c")
local cyan    = hsl("#8dfbba")
local grey1   = hsl("#767676")
local grey2   = hsl("#666462")
local grey3   = hsl("#45413b")
local grey4   = hsl("#35322d")
local grey5   = hsl("#857f78")

local MLocal             = hsl("#FF875F")
local MGlobal            = hsl("#FFAF00")
local MImported          = hsl("#FFAF00") -- cterm=bold gui=bold
local MParameters        = hsl("#5FAFFF")
local MParameterUnused   = hsl("#87D7FF") -- cterm=underline gui=underline
local MFree              = hsl("#FFAFD7")
local MBuiltin           = hsl("#FF5FFF")
local MAttribute         = hsl("#00D787")
local MSelf              = hsl("#B2B2B2")

local theme = lush(function()
  return {
    Normal       { fg = white, bg = black },
    ColorColumn  { fg = white, bg = grey1 },
    Directory    { fg = hsl("#f4cf86"), gui = "bold" },
    EndOfBuffer  { fg = white, gui = "italic" },
    VertSplit    { fg = hsl("#998F84"), bg = black },
    Folded       { fg = grey2, bg = black },
    FoldColumn   { fg = grey2, bg = black },
    SignColumn   { fg = cyan, bg = black },
    Search       { fg = black, bg = yellow, gui = "bold" },
    IncSearch    { fg = black, bg = blue, gui = "bold" },
    Substitute   { Search },
    MatchParen   { fg = yellow, bg = hsl("#242321"), gui = "bold" },
    ModeMsg      { fg = hsl("#f4cf86"), gui = "bold" },
    MoreMsg      { fg = yellow, gui = "bold" },
    Pmenu        { fg = white, bg = grey4 },
    PmenuSel     { fg = black, bg = blue, gui = "bold" },
    PmenuSbar    { bg = grey4 },
    PmenuThumb   { fg = hsl("#d9cec3"), bg = white },
    Title        { fg = cyan, gui = "bold" },
    Visual       { bg = grey3 },
    ErrorMsg     { fg = white, bg = red, gui = "bold" },
    WarningMsg   { ErrorMsg },

    Comment        { fg = grey5 , gui = "italic" },
    Constant       { fg = hsl("#b88853"), gui = "bold" },
    String         { fg = hsl("#f4cf86") },
    Character      { Constant },
    Number         { Constant },
    Boolean        { Constant },
    Float          { Constant },

    Identifier     { fg = MGlobal },
    Function       { fg = MGlobal },

    Statement      { fg = red, gui = "bold" },
    Conditional    { Statement },
    Repeat         { Statement },
    Label          { fg = red },
    Operator       { fg = red },
    Keyword        { Statement },
    Exception      { fg = green, gui = "bold"},
    
    PreProc        { fg = red, gui = "bold" },
    Include        { PreProc },
    Define         { fg = green },
    Macro          { fg = green },
    PreCondit      { fg = green, gui = "bold"},
    
    Type           { fg = hsl("#ff9eb8") },
    StorageClass   { fg = red },
    Structure      { fg = red },
    Typedef        { fg = red, gui = "bold" },
    
    Special        { fg = white },
    SpecialChar    { fg = hsl("#ff9eb8"), gui = "bold" },
    Tag            { fg = white, gui = "bold" },
    Delimiter      { Special },
    SpecialComment { fg = hsl("#ffffff"), gui = "bold" },
    Debug          { fg = hsl("#ffffff"), gui = "bold" },
    
    Underlined     { gui = "underline" },
    Bold           { gui = "bold" },
    Italic         { gui = "italic" },
    
    Error          { fg = hsl("#ffffff"), bg = red, gui = "bold" },
    Todo           { fg = hsl("#ffffff"), bg = black, gui = "bold" },
    
    -- TSError              { Error },
    TSPunctDelimiter     { Delimiter },
    TSPunctBracket       { Delimiter },
    TSPunctSpecial       { Delimiter },
    TSConstant           { Constant },
    TSConstBuiltin       { Special },
    TSConstMacro         { Define },
    TSString             { String },
    TSStringRegex        { String, gui = "italic" },
    TSStringEscape       { SpecialChar },
    TSCharacter          { Character },
    TSNumber             { Number },
    TSBoolean            { Boolean },
    TSFloat              { Float },
    TSFunction           { Function },
    TSFuncBuiltin        { fg = MBuiltin },
    TSFuncMacro          { Macro },
    TSMethod             { Function },
    TSField              { Identifier },
    TSProperty           { Identifier },
    TSConstructor        { Special },
    TSConditional        { Conditional },
    TSRepeat             { Repeat },
    TSLabel              { Label },
    TSOperator           { Operator },
    TSKeyword            { Keyword },
    TSKeywordFunction    { Keyword },
    TSException          { Exception },
    TSType               { Type },
    TSTypeBuiltin        { Type },
    TSNamespace          { Include },
    TSInclude            { Include },
    TSAnnotation         { PreProc },
    TSNone               { fg = white },
    TSText               { TSNone },
    TSStrong             { gui = "bold" },
    TSEmphasis           { gui = "italic" },
    TSUnderline          { gui = "underline"},
    TSTitle              { Title },
    TSLiteral            { String },
    TSURI                { Underlined },
    TSVariable           { fg = white },
    TSVariableBuiltin    { fg = MBuiltin },
    TSAttribute          { fg = MAttribute },
    TSParameter          { TSVariable },
    TSParameterReference { TSParameter },

    IndentBlanklineChar                   { fg = hsl("#45413b") },
    IndentBlanklineSpaceChar              { fg = hsl("#45413b"), gui = "nocombine" },
    IndentBlanklineSpaceCharBlankline     { fg = hsl("#45413b"), gui = "nocombine" },
    IndentBlanklineContextChar            { fg = red, gui = "nocombine" },

    pythonStatement         { Statement },
    pythonFunction          { Function },
    pythonConditional       { Conditional },
    pythonRepeat            { Repeat },
    pythonOperator          { fg = red, gui = "bold" },
    pythonMatrixMultiply    { pythonOperator },
    pythonException         { Structure },
    pythonInclude           { Include },
    pythonAsync             { Statement },
    pythonDecorator         { Function },
    pythonDecoratorName     { Function },
    pythonDoctestValue      { Define },
    pythonTodo              { Todo },
    pythonComment           { Comment },
    pythonQuotes            { String },
    pythonEscape            { Special },
    pythonString            { String },
    pythonTripleQuotes      { pythonQuotes },
    pythonDoctest           { Special },
    pythonRawString         { String },
    pythonNumber            { Number },
    pythonBuiltin           { Special },
    pythonExceptions        { Structure },

    pythonTSInclude             { TSInclude },
    pythonTSPunctDelimiter      { TSPunctDelimiter },
    pythonTSKeyword             { TSKeyword },
    pythonTSType                { fg = MGlobal, gui = "bold" },
    pythonTSConstant            { fg = MFree, gui = "bold" },
    pythonTSVariable            { TSVariable },
    pythonTSConstBuiltin        { Constant },
    pythonTSMethod              { TSMethod },
    pythonTSPunctBracket        { TSPunctBracket },
    pythonTSKeywordFunction     { TSKeywordFunction },
    pythonTSFunction            { fg = MGlobal },
    pythonTSConstructor         { fg = MGlobal, gui = "bold" },
    pythonTSParameter           { fg = MParameters },
    pythonTSVariableBuiltin     { fg = MSelf },
    pythonTSFuncBuiltin         { TSFuncBuiltin },
    pythonTSField               { fg = MAttribute },
    pythonTSOperator            { fg = red.rotate(25), gui = "bold" },
    pythonTSNumber              { TSNumber },
    pythonTSBoolean             { TSBoolean, gui = "italic" },
    pythonTSFloat               { TSFloat },
    pythonTSRepeat              { TSRepeat },
    pythonTSKeywordOperator     { pythonOperator },
    pythonTSConditional         { TSConditional, gui = "italic"},
  }
end)

return theme
