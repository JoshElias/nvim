return {
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
	"nvim-tree/nvim-web-devicons", -- Icons for nvim-tree
	"numToStr/Comment.nvim",
	{
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},
}
