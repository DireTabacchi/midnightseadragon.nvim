local theme = require("midnightseadragon.theme")
local M = {}

local function highlight(group, hl)
    vim.api.nvim_set_hl(0, group, hl)
end

function M.load()
    if vim.g.colors_name then
        vim.cmd("hi clear")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "midnightseadragon"

    for group, hls in pairs(theme.default) do
        highlight(group, hls)
    end
end

return M
