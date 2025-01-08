return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    { "<leader>e", "<leader>fE", desc = "Explorer NeoTree (cwd)", remap = true },
    { "<leader>E", "<leader>fe", desc = "Explorer NeoTree (root dir)", remap = true },
  },
  opts = {
    window = {
      position = "right",
    },
  },
}
