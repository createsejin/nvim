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
      function()
        local widgets = require("dap.ui.widgets");
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar",
    },
    ["<F10>"] = {
      function()
        require("dap").step_over();
      end,
      "step_over",
    },
    ["<F11>"] = {
      function()
        require("dap").step_into();
      end,
      "step_into",
    },
    ["<F12>"] = {
      function()
        require("dap").step_out();
      end,
      "step_out",
    },
    ["<leader>dl"] = {
      function()
        require("dap").run_last();
      end,
      "Run last configuration",
    },
  }
}

M.crates = {
  n = {
    ["<leader>rcu"] = {
      function()
        require('crates').upgrade_all_crates()
      end,
      "update crates",
    }
  }
}

M.fugitive = {
  n = {
    ["gh"] = { "<cmd> diffget //2 <CR>", "get diff //2" },
    ["gl"] = { "<cmd> diffget //3 <CR>", "get diff //3" },
  }
}

M.my_general = {
  -- n = {
  --   ["<C-h>"] = { "<cmd> TmuxNavigateLeft <CR>", "Window left" },
  --   ["<C-l>"] = { "<cmd> TmuxNavigateRight <CR>", "Window right" },
  --   ["<C-j>"] = { "<cmd> TmuxNavigateDown <CR>", "Window down" },
  --   ["<C-k>"] = { "<cmd> TmuxNavigateUp <CR>", "Window up" },
  -- },
  t = {
    ["<C-h>"] = { "<C-\\><C-N><C-w>h", "Window left" },
    ["<C-l>"] = { "<C-\\><C-N><C-w>l", "Window right" },
    ["<C-j>"] = { "<C-\\><C-N><C-w>j", "Window down" },
    ["<C-k>"] = { "<C-\\><C-N><C-w>k", "Window up" },
  },
}

M.trouble = {
  n = {
    ["<leader>tt"] = { "<cmd> TroubleToggle <CR>", "toggle Trouble list" }
  }
}

-- auto session
M.auto_session = {
  n = {
    ["<leader>wr"] = { "<cmd> SessionRestore <CR>", "Restore session for cwd" },
    ["<leader>ws"] = { "<cmd> SessionSave <CR>", "Save session for root dir" },
    ["<leader>wd"] = { "<cmd> lua require('auto-session').DisableAutoSave() <CR>",
      "disable session auto-save" },
    ["<leader>we"] = { "<cmd> lua require('auto-session').AutoSaveSession() <CR>",
      "enable session auto-save" },
  }
}

M.copilot = {
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
