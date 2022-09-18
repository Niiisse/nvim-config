-- require "completion"
require "lsp-config"
require "treesitter"
require "nvimtree"
require "line"
require "aline"
require "indent"
require "telescope-c"
require "bufline"
require "autotag"
require "lspsig"
require "neoclip-config"
require "windows-config"

require("lspsaga").init_lsp_saga {
    border_style = "round"
}

vim.g.symbols_outline = {
  relative_width = false,
  width = 30
}


