local wk = require("which-key")
-- Set highlight on search, but clear on pressing <Esc> in normal modevanteToggle

vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Root Level Commands

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Save and Close the current buffer
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save the current buffer" })
vim.keymap.set("n", "<leader>q", ":bd<CR>", { desc = "Close the current buffer" })
vim.keymap.set("n", "<leader>Q", ":bd!<CR>", { desc = "Force close the current buffer" })
vim.keymap.set("n", "<leader>c", ":q<CR>", { desc = "Close the current window" })
vim.keymap.set("n", "<leader>C", ":q!<CR>", { desc = "Force close the current window" })

-- Copy and Paste
vim.keymap.set("", "<C-c>", '"+y', { desc = "Copy to clipboard" })
vim.keymap.set("", "<C-x>", '"+p', { desc = "Paste from clipboard" })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Journalling
wk.add({ { "<leader>j", group = "[J]ournal" } })
vim.keymap.set("n", "<leader>jy", ":Neorg journal yesterday<CR>", { desc = "Journal for yesterday" })
vim.keymap.set("n", "<leader>jt", ":Neorg journal today<CR>", { desc = "Journal for today" })
vim.keymap.set("n", "<leader>jm", ":Neorg journal today<CR>", { desc = "Journal for tomorrow" })

-- Navigat to previous and next buffer
-- vim.keymap.set("n", "<leader>b", ":buffers<CR>", { desc = "Go to next buffer" })
-- vim.keymap.set("n", "<leader>n", ":bnext<CR>", { desc = "Go to next buffer" })
-- vim.keymap.set("n", "<leader>p", ":bprevious<CR>", { desc = "Go to previous buffer" })
vim.keymap.set("n", "<leader>]", "<C-i>", {
	desc = "Go to next buffer in jump list",
	noremap = true,
})
vim.keymap.set("n", "<leader>[", "<C-o>", {
	desc = "Go to previous buffer in jump list",
	noremap = true,
})

-- Diagnostic keymaps
-- vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
-- vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
-- vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
-- vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- F Key Mappings

-- File Explore
vim.keymap.set("", "<F3>", function()
	require("oil").toggle_float()
end, { desc = "Open file explorer" })

-- Avante
-- Hide/Show Avante Sidebar
wk.add({ mode = { "n", "v" }, { "<leader>a", group = "[A]vante" } })
vim.keymap.set({ "n", "i" }, "<F8>", "<Esc>:AvanteToggle<CR>", { desc = "Toggle Avante Sidebar" })

-- Git
vim.keymap.set("n", "<F4>", "<cmd>LazyGit<cr>", { desc = "Open Neogit" })

-- Buffer
local conform = require("conform")
wk.add({ mode = { "n", "v" }, { "<leader>b", group = "[B]uffer" } })
vim.keymap.set("", "<leader>bf", function()
	conform.format({ async = true })
end, { desc = "Format buffer" })

-- Autocomplete

vim.keymap.set("i", "<S-C-y>", 'copilot#Accept("\\<CR>")', {
	expr = true,
	replace_keycodes = false,
	desc = "Accept copilot suggestion",
})
vim.g.copilot_no_tab_map = true

-- Telescope

-- See `:help telescope.builtin`
local builtin = require("telescope.builtin")
wk.add({ { "<leader>s", group = "[S]earch" } })
vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<leader>st", builtin.builtin, { desc = "[S]earch Select [T]elescope" })
vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })
vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
vim.keymap.set("n", "<leader>sr", builtin.resume, { desc = "[S]earch [R]esume" })
vim.keymap.set("n", "<leader>s.", builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
vim.keymap.set("n", "<leader>sb", builtin.buffers, { desc = "[S]earch existing buffers" })
-- Fuzzy find all the symbols in your current workspace
--  Similar to document symbols, except searches over your whole project
vim.keymap.set(
	"n",
	"<leader>ssw",
	require("telescope.builtin").lsp_dynamic_workspace_symbols,
	{ desc = "[W]orkspace [S]ymbols" }
)
-- Fuzzy find all the symbols in your current document.
--  Symbols are things like variables, functions, types, etc.
vim.keymap.set("n", "<leader>ssd", require("telescope.builtin").lsp_document_symbols, { desc = "[D]ocument [S]ymbols" })
-- Slightly advanced example of overriding default behavior and theme
vim.keymap.set("n", "<leader>s/", function()
	-- You can pass additional configuration to telescope to change theme, layout, etc.
	builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
		winblend = 10,
		previewer = false,
	}))
end, { desc = "[S]earch Fuzzily in current buffer" })
-- Also possible to pass additional configuration options.
--  See `:help telescope.builtin.live_grep()` for information about particular keys
vim.keymap.set("n", "<leader>so", function()
	builtin.live_grep({
		grep_open_files = true,
		prompt_title = "Live Grep in Open Files",
	})
end, { desc = "[S]earch [O]pen Files" })
-- Shortcut for searching your neovim configuration files
vim.keymap.set("n", "<leader>sn", function()
	builtin.find_files({ cwd = vim.fn.stdpath("config") })
end, { desc = "[S]earch [N]eovim files" })

-- LSP
--
wk.add({ { "<leader>g", group = "[G]o To" } })
-- Jump to the definition of the word under your cursor.
--  This is where a variable was first declared, or where a function is defined, etc.
--  To jump back, press <C-t>.
vim.keymap.set("n", "<leader>gd", builtin.lsp_definitions, { desc = "[G]oto [D]efinition" })
-- Jump to the declaration of the word under your cursor.
vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, { desc = "[G]oto [D]eclaration" })
-- Find references for the word under your cursor.
vim.keymap.set("n", "<leader>gr", require("telescope.builtin").lsp_references, { desc = "[G]oto [R]eferences" })
-- Jump to the implementation of the word under your cursor.
--  Useful when your language has ways of declaring types without an actual implementation.
vim.keymap.set(
	"n",
	"<leader>gI",
	require("telescope.builtin").lsp_implementations,
	{ desc = "[G]oto [I]mplementation" }
)

wk.add({ { "<leader>l", group = "[L]SP" } })
-- Jump to the type of the word under your cursor.
--  Useful when you're not sure what type a variable is and you want to see
--  the definition of its *type*, not where it was *defined*.
vim.keymap.set("n", "<leader>ld", require("telescope.builtin").lsp_type_definitions, { desc = "Type [D]efinition" })
-- Opens a popup that displays documentation about the word under your cursor
--  See `:help K` for why this keymap
vim.keymap.set("n", "<leader>lk", vim.lsp.buf.hover, { desc = "Hover Documentation" })
-- Rename the variable under your cursor
--  Most Language Servers support renaming across files, etc.
vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, { desc = "[R]ename" })
-- Execute a code action, usually your cursor needs to be on top of an error
-- or a suggestion from your LSP for this to activate.
vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, { desc = "Code [A]ction" })
vim.keymap.set("n", "<leader>lq", "<cmd>LspRestart<CR>", { desc = "[L]SP Restart" })

-- Git Portal
-- Opens the current file in your browser at the correct branch/commit.
-- When in visual mode, selected lines are included in the permalink.
local gitportal = require("gitportal")
wk.add({ mode = { "n", "v" }, { "<leader>r", group = "Git [R]emote Portal" } })
vim.keymap.set({ "n", "v" }, "<leader>rp", gitportal.open_file_in_browser, { desc = "Open file in [P]ortal" })
-- Opens a Githost link directly in Neovim, optionally switching to the branch/commit.
vim.keymap.set("n", "<leader>ri", gitportal.open_file_in_neovim, { desc = "Open file in [I]nternal Git" })

-- Generates and copies the permalink of your current file to your clipboard.
-- When in visual mode, selected lines are included in the permalink.
vim.keymap.set({ "n", "v" }, "<leader>rc", gitportal.copy_link_to_clipboard, { desc = "[C]opy Current file link" })

-- Git Signs
wk.add({ mode = { "n", "v" }, { "<leader>h", group = "Git [Hunk]" } })
