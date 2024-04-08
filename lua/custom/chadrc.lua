---@type ChadrcConfig
local M = {}
M.ui = {
  theme = 'catppuccin',
  hl_override = { -- :redire @a | highlight | redire END
    -- ["@variable.builtin"] = {
    --   fg = "white",
    -- },
    -- ["@variable"] = { fg = "white" },
    -- ["@variable.member"] = { fg = "white" },
    -- ["@variable.member.key"] = { fg = "white" },
    -- Statement = { fg = "white" },
    -- ["@variable.parameter"] = { fg = "white" },
    -- Character = { fg = "white" },
    -- ["@character"] = { fg = "white" },
    ["@punctuation.bracket"] = { fg = "#d9e0ee" },
<<<<<<< HEAD
    ["@punctuation.delimiter"] = { fg = "#d9e0ee" },
=======
>>>>>>> 96d3c73dba38aefba76205aa31f6c9f0cdb64cb6
    Identifier = { fg = "#d9e0ee" },
  },
  statusline = {
    separator_style = "arrow",
    overriden_modules = function(modules)
      local config = require("core.utils").load_config().ui.statusline
      local sep_style = config.separator_style

      local default_sep_icons = {
        default = { left = "", right = " " },
        round = { left = "", right = "" },
        block = { left = "█", right = "█" },
        arrow = { left = "", right = "" },
      }
      local separators = (type(sep_style) == "table" and sep_style) or default_sep_icons[sep_style]
      local sep_r = separators["right"]
      local sep_l = separators["left"]

      modules[2] = (function()
        local icon = "󰈚"
        local filename = (vim.fn.expand "%" == "" and "Empty ") or vim.fn.expand "%:."

        if filename ~= "Empty " then
          ---@type boolean ,{get_icon: fun(string) : string?}
          local devicons_present, devicons = pcall(require, "nvim-web-devicons")

          if devicons_present then
            local ft_icon = devicons.get_icon(filename)
            icon = (ft_icon ~= nil and " " .. ft_icon) or ""
          end

          filename = " " .. filename .. " "
          return "%#St_file_info" ..
              "#" .. icon .. filename .. "%#St_file_sep" .. "#" .. sep_r
        else
          return "%#St_file_info" .. "# " .. filename .. "%#St_file_sep" .. "#" .. sep_r
        end
      end)()
      modules[9] = (function()
        local dir_icon = "%#St_cwd_icon" .. "#" .. "󰉋 "
        local dir_name = "%#St_cwd_text" .. "#" .. " " .. vim.fn.getcwd() .. " "
        return (vim.o.columns > 85 and ("%#St_cwd_sep" .. "#" .. sep_l .. dir_icon .. dir_name)) or ""
      end)()
    end,
  },
}
M.plugins = "custom.plugins"
M.mappings = require("custom.mappings")

return M
