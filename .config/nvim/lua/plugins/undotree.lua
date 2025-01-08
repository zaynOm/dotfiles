return {
  "mbbill/undotree",
  event = "VeryLazy",

  config = function()
    vim.keymap.set("n", "<leader>r", vim.cmd.UndotreeToggle, { desc = "Toggle UndoTree" })
  end,
}
