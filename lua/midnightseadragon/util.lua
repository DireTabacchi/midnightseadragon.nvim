local theme = require("midnightseadragon.theme")
local M = {}

--- HEXtoHSB converts a hex colorcode to its HSB equivalent.
--- color is a string with a # followed by six hex digits (as in '#RRGGBB', where R, G, B are
--- hex digits). The returned value is a table with the keys H, S, B, which correspond to the Hue,
--- Saturation, and Brightness, respectively.
--@return {H number, S number, B number}
local function HEXtoHSB(color)
  local red = tonumber(string.sub(color, 2, 3), 16) / 255
  local green = tonumber(string.sub(color, 4, 5), 16) / 255
  local blue = tonumber(string.sub(color, 6, 7), 16) / 255

  local brightness = math.max(red, green, blue)

  local chroma = brightness - math.min(red, green, blue)
  local hue

  if chroma == 0 then
    hue = 0
  elseif brightness == red then
    hue = 60 * (((green - blue) / chroma) % 6)
  elseif brightness == green then
    hue = 60 * (((blue - red) / chroma) + 2)
  elseif brightness == blue then
    hue = 60 * (((red - green) / chroma) + 4)
  end

  local saturation
  if brightness == 0 then
    saturation = 0
  else
    saturation = chroma / brightness
  end

  return { h = hue, s = saturation, b = brightness }
end

local function HSBtoHEX(hsb)
  local chroma = hsb.b * hsb.s
  local hue_p = hsb.h / 60
  local x = chroma * (1 - math.abs(hue_p % 2 - 1))
  local i_rgb = {}
  if hue_p < 1 and hue_p >= 0 then
    i_rgb = { r = chroma, g = x, b = 0 }
  elseif hue_p < 2 and hue_p >= 1 then
    i_rgb = { r = x, g = chroma, b = 0 }
  elseif hue_p < 3 and hue_p >= 2 then
    i_rgb = { r = 0, g = chroma, b = x }
  elseif hue_p < 4 and hue_p >= 3 then
    i_rgb = { r = 0, g = x, b = chroma }
  elseif hue_p < 5 and hue_p >= 4 then
    i_rgb = { r = x, g = 0, b = chroma }
  elseif hue_p < 6 and hue_p >= 5 then
    i_rgb = { r = chroma, g = 0, b = chroma }
  end

  local m = hsb.b - chroma
  i_rgb.r = i_rgb.r + m
  i_rgb.g = i_rgb.g + m
  i_rgb.b = i_rgb.b + m

  local hex = string.format("#%X%X%X",
    math.floor(i_rgb.r * 255),
    math.floor(i_rgb.g * 255),
    math.floor(i_rgb.b * 255))

  return hex
end

-- darken subtracts percent from an HSB Brightness value of color and returns the hex color code
-- of that darkened color.
function M.darken(color, percent)
  local color_hsb = HEXtoHSB(color)
  local diff = color_hsb.b - percent
  if diff <= 0 then
    color_hsb.b = 0
  else
    color_hsb.b = diff
  end
  return HSBtoHEX(color_hsb)
end

function M.brighten(color, percent)
  local color_hsb = HEXtoHSB(color)
  local diff = color_hsb + percent
  if diff >= 1 then
    color_hsb.b = 1
  else
    color_hsb.b = diff
  end
  return HSBtoHEX(color_hsb)
end

function M.highlight(group, hl)
    vim.api.nvim_set_hl(0, group, hl)
end

function M.load()
    if vim.g.colors_name then
        vim.cmd("hi clear")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "midnightseadragon"

    for group, hls in pairs(theme.default) do
        M.highlight(group, hls)
    end
end

return M
