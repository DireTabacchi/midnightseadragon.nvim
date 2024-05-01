local theme = require("midnightseadragon.theme")
local M = {}

--@param group string
function M.highlight(group, hl)
    --print(group)
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
