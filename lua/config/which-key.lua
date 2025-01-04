local opts = {
  mode = 'n', -- NORMAL mode
  prefix = '<leader>',
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}

local mappings = {
  ['p'] = { '<cmd>Lazy<CR>', '[P]lugin Manager' }, -- Invoking plugin manager
  ['w'] = { '<cmd>qall!<CR>', 'Quit' }, -- Quit Neovim
  ['s'] = { '<cmd>w!<CR>', '[S]ave' }, -- Save current file
}
require('which-key').setup {
  opts,
  mappings,
}
