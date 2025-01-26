return {
	{ -- Useful plugin to show you pending keybinds.
		"folke/which-key.nvim",
		event = "VimEnter", -- Sets the loading event to 'VimEnter'
		opts = {
			-- delay between pressing a key and opening which-key (milliseconds)
			-- this setting is independent of vim.opt.timeoutlen
			delay = 0,
			icons = {
				-- set icon mappings to true if you have a Nerd Font
				mappings = vim.g.have_nerd_font,
				-- If you are using a Nerd Font: set icons.keys to an empty table which will use the
				-- default which-key.nvim defined Nerd Font icons, otherwise define a string table
				keys = vim.g.have_nerd_font and {} or {
					Up = "<Up> ",
					Down = "<Down> ",
					Left = "<Left> ",
					Right = "<Right> ",
					C = "<C-…> ",
					M = "<M-…> ",
					D = "<D-…> ",
					S = "<S-…> ",
					CR = "<CR> ",
					Esc = "<Esc> ",
					ScrollWheelDown = "<ScrollWheelDown> ",
					ScrollWheelUp = "<ScrollWheelUp> ",
					NL = "<NL> ",
					BS = "<BS> ",
					Space = "<Space> ",
					Tab = "<Tab> ",
					F1 = "<F1>",
					F2 = "<F2>",
					F3 = "<F3>",
					F4 = "<F4>",
					F5 = "<F5>",
					F6 = "<F6>",
					F7 = "<F7>",
					F8 = "<F8>",
					F9 = "<F9>",
					F10 = "<F10>",
					F11 = "<F11>",
					F12 = "<F12>",
				},
			},
			-- Document existing key chains
			-- spec = {
			-- 	{ "<leader>c", group = "[C]ode", mode = { "n", "x" } },
			-- 	{ "<leader>d", group = "[D]ocument" },
			-- 	{ "<leader>r", group = "[R]ename" },
			-- 	{ "<leader>f", group = "[F]ind", name = "Find" },
			-- 	{ "<leader>w", group = "[W]orkspace" },
			-- 	{ "<leader>t", group = "[T]oggle" },
			-- 	{ "<leader>h", group = "Git [H]unk", mode = { "n", "v" } },
			-- },
		},
	},
}
-- local opts = {
--   mode = 'n', -- NORMAL mode
--   prefix = '<leader>',
--   buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
--   silent = true, -- use `silent` when creating keymaps
--   noremap = true, -- use `noremap` when creating keymaps
--   nowait = true, -- use `nowait` when creating keymaps
-- }
--
-- local mappings = {
--   ['p'] = { '<cmd>Lazy<CR>', '[P]lugin Manager' }, -- Invoking plugin manager
--   ['w'] = { '<cmd>qall!<CR>', 'Quit' }, -- Quit Neovim
--   ['s'] = { '<cmd>w!<CR>', '[S]ave' }, -- Save current file
-- }
-- require('which-key').setup {
--   opts,
--   mappings,
-- }
-- local wk = require("which-key")
--
-- wk.add({
-- 	{ "<leader>f", group = "[F]indggieaiaia", desc = "heyo", remap = true },
-- 	{ "<leader>z", group = "[Fuck]z" },
-- 	{ "<leader>1", group = "[N]um Gang" },
-- })
