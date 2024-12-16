local c_util = require("midnightseadragon.color_util")
local colors = require("midnightseadragon.colors").default

return {
  normal = {
    a = { bg = colors.bg4, fg = colors.fg0, gui = 'bold' },
    b = { bg = colors.bg2, fg = colors.fg0 },
    c = { bg = colors.bg1, fg = colors.fg1 },
    z = { bg = colors.bg4, fg = colors.fg0 }
  },
  insert = {
    a = { bg = colors.green_l, fg = c_util.darken(colors.green_d, 0.30), gui = 'bold' },
    b = { bg = c_util.darken(colors.green_d, 0.30), fg = colors.green_l },
    c = { bg = colors.bg1, fg = colors.green_d },
    z = { bg = colors.green_l, fg = c_util.darken(colors.green_d, 0.30) }
  },
  visual = {
    a = { bg = colors.orange_l, fg = c_util.darken(colors.orange_d, 0.30), gui = 'bold' },
    b = { bg = c_util.darken(colors.orange_d, 0.30), fg = colors.orange_l },
    c = { bg = colors.bg1, fg = colors.orange_d },
    z = { bg = colors.orange_l, fg = c_util.darken(colors.orange_d, 0.30) }
  },
  replace = {
    a = { bg = colors.red_l, fg = c_util.darken(colors.red_d, 0.30), gui = 'bold' },
    b = { bg = c_util.darken(colors.red_d, 0.30), fg = colors.red_l },
    c = { bg = colors.bg1, fg = colors.red_d },
    z = { bg = colors.red_l, fg = c_util.darken(colors.red_d, 0.30) },
  },
  command = {
    a = { bg = colors.seafoam_l, fg = c_util.darken(colors.seafoam_d, 0.30), gui = 'bold' },
    b = { bg = c_util.darken(colors.seafoam_d, 0.30), fg = colors.seafoam_l },
    c = { bg = colors.bg1, fg = colors.seafoam_d },
    z = { bg = colors.seafoam_l, fg = c_util.darken(colors.seafoam_d, 0.30) },
  },
  inactive = {
    a = { bg = colors.bg2, fg = colors.fg2, gui = 'bold' },
    b = { bg = colors.bg1, fg = colors.fg3 },
    c = { bg = colors.bg0, fg = colors.fg4 },
    z = { bg = colors.bg2, fg = colors.fg2 },
  }
}
