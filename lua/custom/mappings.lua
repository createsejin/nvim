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
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft <CR>", "Window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight <CR>", "Window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown <CR>", "Window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp <CR>", "Window up" },

    -- nvim tree toggle
    ["<C-q>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
    -- argument keys
    ["<M-s>"] = { "<cmd> call Arg_number_list() <CR>" },
    ["<M-n>"] = { "<cmd> n <CR>" },
    ["2<M-n>"] = { "<cmd> 2n <CR>" },
    ["3<M-n>"] = { "<cmd> 3n <CR>" },
    ["4<M-n>"] = { "<cmd> 4n <CR>" },
    ["5<M-n>"] = { "<cmd> 5n <CR>" },
    ["6<M-n>"] = { "<cmd> 6n <CR>" },
    ["7<M-n>"] = { "<cmd> 7n <CR>" },
    ["<M-p>"] = { "<cmd> N <CR>" },
    ["2<M-p>"] = { "<cmd> 2N <CR>" },
    ["3<M-p>"] = { "<cmd> 3N <CR>" },
    ["4<M-p>"] = { "<cmd> 4N <CR>" },
    ["5<M-p>"] = { "<cmd> 5N <CR>" },
    ["6<M-p>"] = { "<cmd> 6N <CR>" },
    ["7<M-p>"] = { "<cmd> 7N <CR>" },
    ["g1"] = { "<cmd> argu1 <CR>" },
    ["g2"] = { "<cmd> argu2 <CR>" },
    ["g3"] = { "<cmd> argu3 <CR>" },
    ["g4"] = { "<cmd> argu4 <CR>" },
    ["g5"] = { "<cmd> argu5 <CR>" },
    ["g6"] = { "<cmd> argu6 <CR>" },
    ["g7"] = { "<cmd> argu7 <CR>" },
    ["g8"] = { "<cmd> argu8 <CR>" },
    ["g9"] = { "<cmd> argu9 <CR>" },
    ["g10"] = { "<cmd> argu10 <CR>" },
    ["g11"] = { "<cmd> argu11 <CR>" },
    ["g12"] = { "<cmd> argu12 <CR>" },
    ["g13"] = { "<cmd> argu13 <CR>" },
    ["g14"] = { "<cmd> argu14 <CR>" },
    ["g15"] = { "<cmd> argu15 <CR>" },
    ["g16"] = { "<cmd> argu16 <CR>" },
    ["g17"] = { "<cmd> argu17 <CR>" },
    ["g18"] = { "<cmd> argu18 <CR>" },
    ["g19"] = { "<cmd> argu19 <CR>" },
    ["g20"] = { "<cmd> argu20 <CR>" },
    ["g21"] = { "<cmd> argu21 <CR>" },
    ["g22"] = { "<cmd> argu22 <CR>" },
    ["g23"] = { "<cmd> argu23 <CR>" },
    ["g24"] = { "<cmd> argu24 <CR>" },
    ["g25"] = { "<cmd> argu25 <CR>" },
    ["g26"] = { "<cmd> argu26 <CR>" },
    ["g27"] = { "<cmd> argu27 <CR>" },
    ["g28"] = { "<cmd> argu28 <CR>" },
    ["g29"] = { "<cmd> argu29 <CR>" },
    ["g30"] = { "<cmd> argu30 <CR>" },
    ["g31"] = { "<cmd> argu31 <CR>" },
    ["g32"] = { "<cmd> argu32 <CR>" },
    ["g33"] = { "<cmd> argu33 <CR>" },
    ["g34"] = { "<cmd> argu34 <CR>" },
    ["g35"] = { "<cmd> argu35 <CR>" },
    ["g36"] = { "<cmd> argu36 <CR>" },
    ["g37"] = { "<cmd> argu37 <CR>" },
    ["g38"] = { "<cmd> argu38 <CR>" },
    ["g39"] = { "<cmd> argu39 <CR>" },
    -- mks! populate key
    ["<leader>mk"] = { "<cmd> lua Mksession() <CR>", "populate ':mks! ~/se/'" },
    ["<leader>ms"] = { "<cmd> lua Source_session() <CR>", "populate ':so ~/se/'" },
    -- /@# search populate
    ["<leader>s"] = { "/@#", "populate /@#" },
    -- horizontal scroll
    ["<M-H>"] = { "3zh" },
    ["<M-L>"] = { "3zl" },
  },
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
