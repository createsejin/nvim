local M = {}
M.dap = {
  plugin = true,
  n = {
    ["<leader>B"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<F5>"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    },
    ["<leader>du"] = {
      function ()
        local widgets = require("dap.ui.widgets");
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar",
    },
    ["<F10>"] = {
      function ()
        require("dap").step_over();
      end,
      "step_over",
    },
    ["<F11>"] = {
      function ()
        require("dap").step_into();
      end,
      "step_into",
    },
    ["<F12>"] = {
      function ()
        require("dap").step_out();
      end,
      "step_out",
    },
    ["<leader>dl"] = {
      function ()
        require("dap").run_last();
      end,
      "Run last configuration",
    },
  }
}

M.crates = {
  n = {
    ["<leader>rcu"] = {
      function ()
        require('crates').upgrade_all_crates()
      end,
      "update crates",
    }
  }
}

M.my_general = {
  t = {
    ["<C-h>"] = { "<C-\\><C-N><C-w>h", "Window left" },
    ["<C-l>"] = { "<C-\\><C-N><C-w>l", "Window right" },
    ["<C-j>"] = { "<C-\\><C-N><C-w>j", "Window down" },
    ["<C-k>"] = { "<C-\\><C-N><C-w>k", "Window up" },
  },
  n = {
    ["<leader>cg"] = { "<cmd> Copilot enable <CR>", "Copilot enable" },
    ["<leader>cb"] = { "<cmd> Copilot disable <CR>", "Copilot disable" },
  }
}

M.copilot_chat = {
  n = {
    ["<leader>ct"] = { "<cmd> CopilotChatToggle <CR>", "CopilotChat Toggle" },
  },
  v = {
    ["<leader>ct"] = { "<cmd> CopilotChatToggle <CR>", "CopilotChat Toggle" },
    ["<leader>cf"] = { "<cmd> CopilotChatFix <CR>", "CopilotChat Fix" },
  }
}
return M
