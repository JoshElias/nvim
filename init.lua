require 'options'
require 'keymaps'
require 'plugins'
require 'colorscheme'

require('toggleterm').setup {
  size = 20,
  open_mapping = [[<F7>]],
  hide_numbers = true,
  direction = 'float',
  terminal_mappings = true,
  close_on_exit = true,
}
