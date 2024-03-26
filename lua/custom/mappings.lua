local M = {}
M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    }
  }
}
M.my_general = {
  t = {
    ["<C-h>"] = { "<C-\\><C-N><C-w>h", "Window left" },
    ["<C-l>"] = { "<C-\\><C-N><C-w>l", "Window right" },
    ["<C-j>"] = { "<C-\\><C-N><C-w>j", "Window down" },
    ["<C-k>"] = { "<C-\\><C-N><C-w>k", "Window up" },
  }
}
return M
