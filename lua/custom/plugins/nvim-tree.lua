return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  --enabled = false,
  config = function()
    require("nvim-tree").setup({
      filters = {
        dotfiles = false, -- Masquer les fichiers cachés (commençant par un point)
        custom = { '^.git$', '^.aider.' }, -- Ajouter ici les répertoires ou fichiers spécifiques que vous voulez masquer
      },
      git = {
        ignore = false,  -- Désactive le filtrage des fichiers par .gitignore
      }
    })

    -- On utilise <leader>e pour ouvrir/fermer l'explorateur
    vim.keymap.set(
      "n",
      "<leader>e",
      "<cmd>NvimTreeFindFileToggle<CR>",
      { desc = "Ouverture/fermeture de l'explorateur de fichiers" }
    )
  end,
}

