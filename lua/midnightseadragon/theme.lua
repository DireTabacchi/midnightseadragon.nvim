local d_colors = {}
--local c_colors = {}
local c_util = require("midnightseadragon.color_util")

if vim.g.MdsCompat then
  --c_colors = require("midnightseadragon.colors").compat256
else
  d_colors = require("midnightseadragon.colors").default
end

local M = {}

M.default = {
    Normal = { fg = d_colors.fg0, bg = d_colors.bg0 },
    StatusLine = { fg = d_colors.seafoam_l, bg = d_colors.bg2 },
    StatusLineNC = { fg = d_colors.fg3, bg = d_colors.bg1 },
    CursorLine = { bg = d_colors.bg1 },
    CursorColumn = { bg = d_colors.bg1 },
    MatchParen = { fg = d_colors.yellow_l },
    ColorColumn = { bg = d_colors.bg3 },
    Conceal = { fg = d_colors.bg2 },
    NonText = { fg = d_colors.bg2 },
    SpecialKey = { fg = d_colors.bg2 },
    Visual = { bg = d_colors.bg4 },
    VisualNOS = { bg = d_colors.fg4 },
    Search = { fg = d_colors.yellow_l, bg = d_colors.black_l },
    IncSearch = {  fg = d_colors.black_d, bg = d_colors.ice_d },
    CurSearch = { fg = d_colors.black_d, bg = d_colors.ice_d },
    VertSplit = { fg = d_colors.bg2, bg = d_colors.bg0 },
    Directory = { fg = d_colors.blue_d },
    Title = { fg = d_colors.seafoam_l },
    ErrorMsg = { fg = d_colors.red_l, bg = d_colors.bg0, bold = true },
    MoreMsg = { fg = d_colors.cyan_d },
    ModeMsg = { fg = d_colors.white_d, bold = true, reverse = true },
    Question = { fg = d_colors.magenta_l, bold = true },
    WarningMsg = { fg = d_colors.bg1, bg = d_colors.yellow_l, bold = true, italic = true },
    EndOfBuffer = { fg = d_colors.fg4, bg = d_colors.bg0 },
    Pmenu = { fg = d_colors.fg3, bg = d_colors.bg1 },
    PmenuSel = { fg = d_colors.cyan_l, bg = d_colors.bg2 },
    PmenuSbar = { fg = d_colors.fg4, bg = d_colors.bg3 },
    PmenuThumb = { fg = d_colors.seafoam_d, bg = d_colors.fg4 },
    CursorLineNr = { fg = d_colors.seafoam_l },
    LineNr = { fg = d_colors.cyan_d },
    Folded = { fg = d_colors.fg4, bg = d_colors.bg1, bold = true, italic = true },
    FoldColumn = { fg = d_colors.fg4, bg = d_colors.bg1, bold = true, italic = true },
    SignColumn = { fg = d_colors.fg4, bg = d_colors.bg1, bold = true, italic = true },
    DiagnosticWarn = { fg = d_colors.orange_l },
    DiagnosticError = { fg = d_colors.red_l },
    DiagnosticInfo = { fg = d_colors.cyan_l },
    DiagnosticHint = { fg = d_colors.fg1 },
    DiagnosticUnderlineWarn = { sp = d_colors.orange_l, undercurl = true },
    DiagnosticUnderlineError = { sp = d_colors.red_l, undercurl = true },
    DiagnosticUnderlineInfo = { sp = d_colors.cyan_l, undercurl = true },
    DiagnosticUnderlineHint = { sp = d_colors.fg1, underline = true },
    DiagnosticSignWarn = { fg = d_colors.orange_l, bg = d_colors.bg1 },
    DiagnosticSignError = { fg = d_colors.red_l, bg = d_colors.bg1 },
    DiagnosticSignInfo = { fg = d_colors.cyan_l, bg = d_colors.bg1 },
    DiagnosticSignHint = { fg = d_colors.fg1, bg = d_colors.bg1 },

    -- Syntax highlighting
    Comment = {fg = d_colors.fg4 },
    Constant = {fg = d_colors.green_l },
    String = {fg = d_colors.green_l },
    Character = {fg = d_colors.green_d },
    Number = {fg = d_colors.yellow_d },
    Float = {fg = d_colors.yellow_d },
    Boolean = {fg = d_colors.yellow_d },
    Identifier = {fg = d_colors.cyan_l },
    Function = {fg = d_colors.seafoam_l },
    Statement = {fg = d_colors.orange_l },
    Conditional = {fg = d_colors.red_l },
    Repeat = {fg = d_colors.red_l },
    Label = { fg = d_colors.orange_d },
    Operator = { fg = d_colors.white_d },
    Keyword = { fg = d_colors.orange_l },
    Exception = { fg = d_colors.red_l },
    PreProc = { fg = d_colors.blue_d },
    Include = { fg = d_colors.blue_d },
    Define = { fg = d_colors.blue_d },
    Macro = { fg = d_colors.blue_d },
    PreCondit = { fg = d_colors.magenta_d },
    Type = { fg = d_colors.magenta_l },
    StorageClass = { fg = d_colors.yellow_d },
    Structure = { fg = d_colors.cyan_d },
    Typedef = { fg = d_colors.magenta_d },
    Special = { fg = d_colors.yellow_l },
    SpecialChar = { fg = d_colors.yellow_l },
    Tag = { fg = d_colors.seafoam_d },
    Delimiter = { fg = d_colors.white_d },
    SpecialComment = { fg = d_colors.bg4 },
    Debug = { fg = d_colors.white_l },
    Underlined = { fg = d_colors.seafoam_l, underline = true },
    Error = { fg = d_colors.red_d, bold = true },
    Todo = { fg = d_colors.yellow_l, bold = true },

    -- TreeSitter defines

    ["@variable"] = { fg = d_colors.cyan_l },
    ["@variable.builtin"] = { fg = d_colors.cyan_d },
    ["@variable.parameter"] = { fg = d_colors.cyan_d },
    ["@variable.parameter.builtin"] = { fg = d_colors.magenta_l },
    ["@variable.member"] = { fg = d_colors.blue_l },

    ["@constant"] = { fg = d_colors.blue_d },
    ["@constant.builtin"] = { fg = d_colors.magenta_d },
    ["@constant.macro"] = { fg = d_colors.blue_d },

    ["@module"] = { fg = d_colors.seafoam_d },
    ["@module.builtin"] = { fg = d_colors.seafoam_d },
    ["@label"] = { fg = d_colors.blue_d },

    ["@string"] = { fg = d_colors.green_l },
    ["@string.documentation"] = { fg = d_colors.green_d },
    ["@string.regexp"] = { fg = d_colors.yellow_l },
    ["@string.escape"] = { fg = d_colors.yellow_l },
    ["@string.special"] = { fg = d_colors.yellow_l },
    ["@string.special.symbol"] = { fg = d_colors.seafoam_l },
    ["@string.special.path"] = { fg = d_colors.green_d },
    ["@string.special.url"] = { fg = d_colors.seafoam_l },

    ["@character"] = { fg = d_colors.green_d },
    ["@character.special"] = { fg = d_colors.seafoam_l },

    ["@boolean"] = { fg = d_colors.yellow_d },
    ["@number"] = { fg = d_colors.yellow_d },
    ["@number.float"] = { fg = d_colors.yellow_d },

    ["@type"] = { fg = d_colors.magenta_d },
    ["@type.builtin"] = { fg = d_colors.magenta_l },
    ["@type.definition"] = { fg = d_colors.blue_l },

    ["@attribute"] = { fg = d_colors.yellow_d },
    ["@attribute.builtin"] = { fg = d_colors.yellow_l },
    ["@property"] = { fg = d_colors.blue_l },

    ["@function"] = { fg = d_colors.seafoam_l },
    ["@function.builtin"] = { fg = d_colors.orange_l },
    ["@function.call"] = { fg = d_colors.seafoam_l },
    ["@function.macro"] = { fg = d_colors.seafoam_d },

    ["@function.method"] = { fg = d_colors.seafoam_l },
    ["@function.method.call"] = { fg = d_colors.seafoam_l },

    ["@constructor"] = { fg = d_colors.magenta_l },
    ["@operator"] = { fg = d_colors.white_d },

    ["@keyword"] = { fg = d_colors.orange_l },
    ["@keyword.coroutine"] = { fg = d_colors.orange_d },
    ["@keyword.function"] = { fg = d_colors.orange_l },
    ["@keyword.operator"] = { fg = d_colors.orange_d },
    ["@keyword.import"] = { fg = d_colors.blue_d },
    ["@keyword.type"] = { fg = d_colors.orange_l },
    ["@keyword.modifier"] = { fg = d_colors.yellow_d },
    ["@keyword.repeat"] = { fg = d_colors.red_d },
    ["@keyword.return"] = { fg = d_colors.red_l },
    ["@keyword.debug"] = { fg = d_colors.red_l },
    ["@keyword.exception"] = { fg = d_colors.red_l },

    ["@keyword.conditional"] = { fg = d_colors.red_d },
    ["@keyword.conditional.ternary"] = { fg = d_colors.red_d },

    ["@keyword.directive"] = { fg = d_colors.magenta_d },
    ["@keyword.directive.define"] = { fg = d_colors.blue_d },

    ["@punctuation.delimiter"] = { fg = d_colors.white_d },
    ["@punctuation.bracket"] = { fg = d_colors.white_l },
    ["@punctuation.special"] = { fg = d_colors.yellow_l },

    ["@comment"] = { fg = d_colors.fg4 },
    ["@comment.documentation"] = { fg = d_colors.white_d },

    ["@comment.error"] = { fg = d_colors.red_l },
    ["@comment.warning"] = { fg = d_colors.orange_l },
    ["@comment.todo"] = { fg = d_colors.yellow_l },
    ["@comment.note"] = { fg = d_colors.white_d },

    ["@markup.strong"] = { fg = d_colors.blue_l, bold = true },
    ["@markup.italic"] = { fg = d_colors.green_l, italic = true },
    ["@markup.strikethrough"] = { fg = d_colors.white_d, strikethrough = true },
    ["@markup.underline"] = { underline = true },

    ["@markup.heading"] = { fg = d_colors.magenta_l, bold = true },
    ["@markup.heading.1"] = { fg = d_colors.red_l, bold = true },
    ["@markup.heading.2"] = { fg = d_colors.orange_l, bold = true },
    ["@markup.heading.3"] = { fg = d_colors.yellow_l, bold = true },
    ["@markup.heading.4"] = { fg = d_colors.green_l, bold = true },
    ["@markup.heading.5"] = { fg = d_colors.blue_l, bold = true },
    ["@markup.heading.6"] = { fg = d_colors.magenta_l, bold = true },

    ["@markup.quote"] = { fg = d_colors.seafoam_d },
    ["@markup.math"] = { fg = d_colors.seafoam_d },

    ["@markup.link"] = { fg = d_colors.blue_d },
    ["@markup.link.label"] = { fg = d_colors.cyan_l },
    ["@markup.link.url"] = { fg = d_colors.seafoam_l },

    -- Lualine specific
    LuaLineDiffAdd = { fg = d_colors.green_l },
    LuaLineDiffChange = { fg = c_util.darken(d_colors.magenta_l, 0.20) },
    LuaLineDiffDelete = { fg = d_colors.red_l },

    -- gitsigns specific
    GitSignsAdd = { fg = d_colors.green_l, bg = d_colors.bg1 },
    GitSignsChange = { fg = d_colors.magenta_l, bg = d_colors.bg1 },
    GitSignsDelete = { fg = d_colors.red_l, bg = d_colors.bg1 },

    -- Language Specific
    rustDerive = { fg = d_colors.magenta_l },
    rustSigil = { fg = d_colors.orange_l },
    rustQuestionMark = { fg = d_colors.orange_l },
    rustAttribute = { fg = d_colors.blue_d },
    rustStructure = { fg = d_colors.orange_d },
    rustStorage = { fg = d_colors.magenta_d },
    rustFuncCall = { fg = d_colors.seafoam_l },
    rustIdentifier = { fg = d_colors.cyan_l },
    rustType = { fg = d_colors.seafoam_l },
    rustTrait = { fg = d_colors.magenta_l },
    rustOperator = { fg = d_colors.white_d },
}

return M
