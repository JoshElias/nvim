return {
	"github/copilot.vim",
	-- {
	-- 	"yetone/avante.nvim",
	-- 	event = "VeryLazy",
	-- 	version = false, -- Never set this value to "*"! Never!
	-- 	opts = {
	-- 		-- add any opts here
	-- 		-- for example
	-- 		-- provider = "ollama",
	-- 		-- cursor_applying_provider = "ollama",
	-- 		-- behaviour = {
	-- 		-- 	enable_cursor_planning_mode = true,
	-- 		-- },
	-- 		-- ollama = {
	-- 		-- 	model = "qwen2.5-coder:14b",
	-- 		-- }
	-- 		claude = {
	-- 			endpoint = "https://api.anthropic.com",
	-- 			model = "claude-3-7-sonnet-20250219",
	-- 			temperature = 0,
	-- 			max_tokens = 4096,
	-- 		},
	-- 		-- openai = {
	-- 		-- 	endpoint = "https://api.openai.com/v1",
	-- 		-- 	model = "gpt-4o",           -- your desired model (or use gpt-4o, etc.)
	-- 		-- 	timeout = 30000,            -- Timeout in milliseconds, increase this for reasoning models
	-- 		-- 	temperature = 0,
	-- 		-- 	max_completion_tokens = 8192, -- Increase this to include reasoning tokens (for reasoning models)
	-- 		-- 	--reasoning_effort = "medium", -- low|medium|high, only used for reasoning models
	-- 		-- },
	-- 	},
	-- 	-- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
	-- 	build = "make",
	-- 	-- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
	-- 	dependencies = {
	-- 		"nvim-treesitter/nvim-treesitter",
	-- 		"stevearc/dressing.nvim",
	-- 		"nvim-lua/plenary.nvim",
	-- 		"MunifTanjim/nui.nvim",
	-- 		--- The below dependencies are optional,
	-- 		"echasnovski/mini.pick",       -- for file_selector provider mini.pick
	-- 		"nvim-telescope/telescope.nvim", -- for file_selector provider telescope
	-- 		"hrsh7th/nvim-cmp",            -- autocompletion for avante commands and mentions
	-- 		"ibhagwan/fzf-lua",            -- for file_selector provider fzf
	-- 		"nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
	-- 		"zbirenbaum/copilot.lua",      -- for providers='copilot'
	-- 		{
	-- 			-- support for image pasting
	-- 			"HakonHarnes/img-clip.nvim",
	-- 			event = "VeryLazy",
	-- 			opts = {
	-- 				-- recommended settings
	-- 				default = {
	-- 					embed_image_as_base64 = false,
	-- 					prompt_for_file_name = false,
	-- 					drag_and_drop = {
	-- 						insert_mode = true,
	-- 					},
	-- 					-- required for Windows users
	-- 					use_absolute_path = true,
	-- 				},
	-- 			},
	-- 		},
	-- 		{
	-- 			-- Make sure to set this up properly if you have lazy=true
	-- 			'MeanderingProgrammer/render-markdown.nvim',
	-- 			opts = {
	-- 				file_types = { "markdown", "Avante" },
	-- 			},
	-- 			ft = { "markdown", "Avante" },
	-- 		},
	-- 	},
	-- }
	{
		"olimorris/codecompanion.nvim",
		opts = {
			strategies = {
				chat = {
					adapter = "anthropic",
				},
				inline = {
					adapter = "anthropic",
				},
			},
		},
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
		-- },
		-- opts = {
		-- 	strategies = {
		-- 		chat = {
		-- 			adapter = "ollama",
		-- 		},
		-- 		inline = {
		-- 			adapter = "ollama",
		-- 		},
		-- 		agent = {
		-- 			adapter = "ollama",
		-- 		}
		-- 	},
		-- 	adapters = {
		-- 		ollama = function()
		-- 			return require('codecompanion.adapters').extend('ollama', {
		-- 				schema = {
		-- 					model = {
		-- 						default = 'qwen2.5-coder:14b',
		-- 					},
		-- 				},
		-- 			})
		-- 		end,
		-- 	}
		-- }
	},
	-- {
	--    'huggingface/llm.nvim',
	--    opts = {
	-- 		model = "codellama:7b",
	-- 		url = "http://localhost:11434",
	-- 		request_body = {
	-- 			options = {
	-- 				temperature = 0.2,
	-- 				top_p = 0.95,
	-- 			}
	-- 		}
	--    }
	--  },
	-- {
	-- 	'milanglacier/minuet-ai.nvim',
	-- 	config = function()
	-- 		require('minuet').setup {
	-- 			virtualtext = {
	-- 				auto_trigger_ft = {},
	-- 				keymap = {
	-- 					-- accept whole completion
	-- 					accept = '<A-A>',
	-- 					-- accept one line
	-- 					accept_line = '<A-a>',
	-- 					-- accept n lines (prompts for number)
	-- 					accept_n_lines = '<A-z>',
	-- 					-- Cycle to prev completion item, or manually invoke completion
	-- 					prev = '<A-[>',
	-- 					-- Cycle to next completion item, or manually invoke completion
	-- 					next = '<A-]>',
	-- 					dismiss = '<A-e>',
	-- 				},
	-- 			},
	-- 			provider = 'openai_fim_compatible',
	-- 			n_completions = 1, -- recommend for local model for resource saving
	-- 			-- I recommend you start with a small context window firstly, and gradually
	-- 			-- increase it based on your local computing power.
	-- 			context_window = 512,
	-- 			provider_options = {
	-- 				openai_fim_compatible = {
	-- 					api_key = 'TERM',
	-- 					name = 'Ollama',
	-- 					end_point = 'http://localhost:11434/v1/completions',
	-- 					model = 'deepseek-coder-v2:16b',
	-- 					optional = {
	-- 						max_tokens = 256,
	-- 						top_p = 0.9,
	-- 					},
	-- 				},
	-- 			},
	-- 		}
	-- 	end,
	-- },
	
}
