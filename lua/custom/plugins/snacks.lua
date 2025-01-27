return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = true },
    bufdelete = { enabled = true },
    dashboard = { enabled = true },
    debug = { enabled = false },
    git = { enabled = false },
    indent = { enabled = false },
    input = { enabled = false },
    picker = { enabled = false },
    notifier = { enabled = false },
    quickfile = { enabled = false },
    scroll = { enabled = false },
    statuscolumn = { enabled = false },
  },
}
