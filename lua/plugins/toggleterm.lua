return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup({
				size = 20,
				open_mapping = [[<f7>]],
				hide_numbers = true,
				direction = "float",
				terminal_mappings = true,
				close_on_exit = true,
			})
		end,
	},
}
