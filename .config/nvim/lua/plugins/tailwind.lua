-- tailwind-tools.lua
return {
  "luckasRanarison/tailwind-tools.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  lazy = true,
  opts = {
    conceal = {
      enabled = true,
    },
    document_color = {
      kind = "background", -- "inline" | "foreground" | "background"
    },
  },
}
