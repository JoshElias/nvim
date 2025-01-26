-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Set highlight on search, but clear on pressing <Esc> in normal modevanteToggle
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Save and Close the current buffer
vim.keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save the current buffer" })
vim.keymap.set("n", "<C-w>", ":q<CR>", { desc = "Close the current buffer" })
vim.keymap.set("n", "<C-W>", ":q!<CR>", { desc = "Force close the current buffer" })

-- Navigat to previous and next buffer
-- vim.keymap.set("n", "<leader>b", ":buffers<CR>", { desc = "Go to next buffer" })
-- vim.keymap.set("n", "<leader>n", ":bnext<CR>", { desc = "Go to next buffer" })
-- vim.keymap.set("n", "<leader>p", ":bprevious<CR>", { desc = "Go to previous buffer" })
vim.keymap.set("n", "<leader>n", "<C-i>", {
	desc = "Go to next buffer in jump list",
	noremap = true,
})
vim.keymap.set("n", "<leader>p", "<C-o>", {
	desc = "Go to previous buffer in jump list",
	noremap = true,
})

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Neorg
vim.keymap.set({ "n", "i", "v" }, "<leader>jy", ":Neorg journal yesterday<CR>", { desc = "Journal for yesterday" })
vim.keymap.set({ "n", "i", "v" }, "<leader>jt", ":Neorg journal today<CR>", { desc = "Journal for today" })
vim.keymap.set({ "n", "i", "v" }, "<leader>jm", ":Neorg journal today<CR>", { desc = "Journal for tomorrow" })

-- Code
local conform = require("conform")
vim.keymap.set("", "<leader>bf", function()
	conform.format({ async = true })
end, { desc = "Format buffer" })

-- File Explore
vim.keymap.set("", "<F3>", function()
	require("oil").toggle_float()
end, { desc = "Open file explorer" })

-- Avante
-- Hide/Show Avante Sidebar
vim.keymap.set({ "n", "i" }, "<F8>", "<Esc>:AvanteToggle<CR>", { desc = "Toggle Avante Sidebar" })

-- Git
vim.keymap.set("n", "<F4>", "<cmd>LazyGit<cr>", { desc = "Open Neogit" })

vim.keymap.set("i", "<S-C-y>", 'copilot#Accept("\\<CR>")', {
	expr = true,
	replace_keycodes = false,
	desc = "Accept copilot suggestion",
})
vim.g.copilot_no_tab_map = true

vim.keymap.set({ "v", "n", "i" }, "<C-c>", '"+y', { desc = "Copy to clipboard" })
vim.keymap.set({ "v", "n", "i" }, "<C-x>", '"+p', { desc = "Paste from clipboard" })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`
