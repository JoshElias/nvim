return {
	{
		"nvim-neorg/neorg",
		lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
		version = "*", -- Pin Neorg to the latest stable release
		config = function()
			require("neorg").setup({
				event = "VeryLazy",
				load = {
					["core.defaults"] = {},
					["core.concealer"] = {},
					["core.completion"] = {
						config = {
							engine = "nvim-cmp",
						},
					},
					["core.integrations.nvim-cmp"] = {},
					["core.dirman"] = {
						config = {
							workspaces = {
								home = "~/Documents/notes/home",
								work = "~/Documents/notes/work",
							},
							default_workspace = "work",
						},
					},
					["core.keybinds"] = {
						config = {
							hook = {
								-- Disable specific keybinds
								["norg"] = {
									-- Example: disable specific keybind
									["n"] = {
										-- Disable the keybind for creating a new note
										["<leader>nn"] = false,
									},
								},
							},
						},
					},
				},
			})
			vim.wo.foldlevel = 99
			vim.wo.conceallevel = 2
		end,
	},
}
