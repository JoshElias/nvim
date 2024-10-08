vim.g.have_nerd_font = false
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.number = true
-- vim.opt.relativenumber = true
vim.opt.mouse = "a"
-- Don't show the mode, since it's already in status line
vim.opt.showmode = false
-- Sync clipboard between OS and Neovim.
vim.opt.clipboard = "unnamedplus"
vim.opt.breakindent = true
-- Save undo history
vim.opt.undofile = true
-- Case-insensitive searching UNLESS \C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"
-- Decrease update time
vim.opt.updatetime = 250
-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300
-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true
-- Sets how neovim will display certain whitespace in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"
vim.opt.cursorline = true
-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.filetype.add({
	extension = { rasi = "rasi" },
	pattern = {
		[".*/waybar/config"] = "jsonc",
		[".*/mako/config"] = "dosini",
		[".*/kitty/*.conf"] = "bash",
		[".*/hypr/.*%.conf"] = "hyprlang",
	},
})

vim.cmd("let g:netrw_liststyle = 3")
