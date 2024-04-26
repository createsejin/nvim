local harpoon = require("harpoon")

harpoon:setup({})

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader><Space>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

-- vim.keymap.set("n", "<M-1>", function() harpoon:list():select(1) end)
-- vim.keymap.set("n", "<M-2>", function() harpoon:list():select(2) end)
-- vim.keymap.set("n", "<M-3>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end)
vim.keymap.set("n", "<leader>5", function() harpoon:list():select(5) end)
vim.keymap.set("n", "<leader>6", function() harpoon:list():select(6) end)
vim.keymap.set("n", "<leader>7", function() harpoon:list():select(7) end)
vim.keymap.set("n", "<leader>8", function() harpoon:list():select(8) end)
vim.keymap.set("n", "<leader>9", function() harpoon:list():select(9) end)
-- vim.keymap.set("n", "<leader>10", function() harpoon:list():select(10) end)
-- vim.keymap.set("n", "<leader>11", function() harpoon:list():select(11) end)
-- vim.keymap.set("n", "<leader>12", function() harpoon:list():select(12) end)
-- vim.keymap.set("n", "<leader>13", function() harpoon:list():select(13) end)
-- vim.keymap.set("n", "<leader>14", function() harpoon:list():select(14) end)
-- vim.keymap.set("n", "<leader>15", function() harpoon:list():select(15) end)
-- vim.keymap.set("n", "<leader>16", function() harpoon:list():select(16) end)
-- vim.keymap.set("n", "<leader>17", function() harpoon:list():select(17) end)
-- vim.keymap.set("n", "<leader>18", function() harpoon:list():select(18) end)
-- vim.keymap.set("n", "<leader>19", function() harpoon:list():select(19) end)
-- vim.keymap.set("n", "<leader>20", function() harpoon:list():select(20) end)
-- vim.keymap.set("n", "<leader>21", function() harpoon:list():select(21) end)
-- vim.keymap.set("n", "<leader>22", function() harpoon:list():select(22) end)
-- vim.keymap.set("n", "<leader>23", function() harpoon:list():select(23) end)
-- vim.keymap.set("n", "<leader>24", function() harpoon:list():select(24) end)
-- vim.keymap.set("n", "<leader>25", function() harpoon:list():select(25) end)
-- vim.keymap.set("n", "<leader>26", function() harpoon:list():select(26) end)
-- vim.keymap.set("n", "<leader>27", function() harpoon:list():select(27) end)
-- vim.keymap.set("n", "<leader>28", function() harpoon:list():select(28) end)
-- vim.keymap.set("n", "<leader>29", function() harpoon:list():select(29) end)
-- vim.keymap.set("n", "<leader>30", function() harpoon:list():select(30) end)
-- vim.keymap.set("n", "<leader>31", function() harpoon:list():select(31) end)
-- vim.keymap.set("n", "<leader>32", function() harpoon:list():select(32) end)
-- vim.keymap.set("n", "<leader>33", function() harpoon:list():select(33) end)
-- vim.keymap.set("n", "<leader>34", function() harpoon:list():select(34) end)
-- vim.keymap.set("n", "<leader>35", function() harpoon:list():select(35) end)
-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-p>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-n>", function() harpoon:list():next() end)
-- basic telescope configuration
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
    local file_paths = {}
    for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
    end

    require("telescope.pickers").new({}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
            results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
    }):find()
end

vim.keymap.set("n", "<leader>fd", function() toggle_telescope(harpoon:list()) end,
    { desc = "Open harpoon window" })
