return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    options = {
      separator_style = "slant",
      offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
    },
  },
  config = function()
    -- Configuration de bufferline
    require("bufferline").setup {
      options = {
        separator_style = "slant",
        offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
      },
    }

    -- Configuration des raccourcis pour naviguer entre les buffers
    vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true, desc = "Next buffer" })
    vim.keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true, desc = "Previous buffer" })

    -- Fermer le buffer courant
    vim.keymap.set('n', '<leader>bd', ':bdelete<CR>', { noremap = true, silent = true, desc = "Close buffer" })

    -- Fermer tous les autres buffers
    vim.keymap.set('n', '<leader>bo', ':BufferLineCloseLeft<CR>:BufferLineCloseRight<CR>', { noremap = true, silent = true, desc = "Close other buffers" })

    -- Mapper la touche `<Esc>` pour quitter le mode terminal
    vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true, desc = "Exit terminal mode" })

    -- Autocommandes pour recharger automatiquement les buffers
    vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold", "CursorHoldI" }, {
      pattern = "*",
      command = "checktime",
    })

    -- Notifier lorsque le fichier a été rechargé
    vim.api.nvim_create_autocmd("FileChangedShellPost", {
      pattern = "*",
      callback = function()
        vim.notify("File changed on disk. Buffer reloaded!", vim.log.levels.INFO)
      end,
    })
  end
}
