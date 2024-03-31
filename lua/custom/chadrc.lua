---@type ChadrcConfig
local M = {}
M.ui = {
  theme = 'catppuccin',
  hl_override = {
    -- ["@variable.builtin"] = {
    --   fg = "white",
    -- },
    -- ["@variable"] = { fg = "white" },
    -- ["@variable.member"] = { fg = "white" },
    -- ["@variable.member.key"] = { fg = "white" },
    -- Statement = { fg = "white" },
    -- ["@variable.parameter"] = { fg = "white" },
    -- Character = { fg = "white" },
    Identifier = { fg = "white" },
    -- ["@character"] = { fg = "white" },
  },
}
M.plugins = "custom.plugins"
M.mappings = require("custom.mappings")

return M
