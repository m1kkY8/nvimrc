return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local harpoon_files = require 'harpoon_files'
    require('lualine').setup({

      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', },
        lualine_c = { { harpoon_files.lualine_component }, },
        lualine_x = { 'encoding', 'filetype' },
        lualine_y = {},
        lualine_z = { 'location' }
      },
    })
  end
}
