return {
  'akinsho/toggleterm.nvim',
  version = '*',
  enabled = false,
  config = function()
    require('toggleterm').setup {
      size = 15,
      open_mapping = [[<c-\>]], -- Raccourci pour ouvrir le terminal
      shading_factor = 2,
      direction = 'horizontal', -- Vous pouvez changer cela à "vertical", "tab", ou "float"
      float_opts = {
        border = 'curved',
        winblend = 3,
      },
    }

    -- Mapper une commande pour basculer le terminal
    vim.keymap.set('n', '<leader>tt', '<cmd>ToggleTerm<cr>', { noremap = true, silent = true, desc = 'Toggle Terminal' })
  end,
}
