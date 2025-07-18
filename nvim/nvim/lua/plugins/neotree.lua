return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", 
    "MunifTanjim/nui.nvim",
    {"3rd/image.nvim", opts = {}},
    -- OR use snacks.nvim's image module:
    -- "folke/snacks.nvim",
  },
  lazy = false, 
  ---@module "neo-tree"
  ---@type neotree.Config?
  opts = {
    -- add options here
  },
}
