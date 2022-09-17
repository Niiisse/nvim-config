require("nvim-tree").setup({
    filters = {
      dotfiles = true
    },
    git = {
      enable = true,
      ignore = false,
      timeout = 500,
    }
  })
