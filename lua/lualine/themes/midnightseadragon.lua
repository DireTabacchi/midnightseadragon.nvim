local colors = require("midnightseadragon.colors").default

return {
  normal = {
    a = {bg = colors.bg4, fg = colors.fg2, gui = 'bold' },
    b = {bg = colors.bg2},
    c = {bg = colors.bg1},
    z = {bg = colors.bg4, fg = colors.fg2}
  },
  insert = {
    a = {bg = colors.green_l, fg = colors.bg2, gui = 'bold' },
    b = {bg = colors.green_d},
    c = {bg = colors.bg1},
    z = {bg = colors.green_l, fg = colors.bg2}
  }
}
