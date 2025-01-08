-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("i", "jj", "<esc>")
map("i", "kk", "<esc>")

-- C-c does a hard exit and does not update diagnoses
-- map({ "i", "n" }, "<C-c>", "<esc>", { desc = "Escape and clear hlsearch" })
-- map({ "i", "n" }, "<C-c>", "<cmd>noh<cr><esc>", { desc = "Escape and Clear hlsearch" })

-- theprimagen maps
map("v", "<leader>p", [["_dP]])
map({ "n", "v" }, "<leader>h", [["_d]])

-- remap new file keymaps
map("n", "<leader>n", function()
  local ok, file_name = pcall(function()
    return vim.fn.input("Enter file name: ")
  end)
  if ok and file_name ~= "" then
    vim.cmd("edit " .. file_name)
  else
    print("No file name provided!")
  end
end, { desc = "Create new named file" })

-- vim-tmux-navigator
if os.getenv("TMUX") then
  map("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>")
  map("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>")
  map("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>")
  map("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>")
end
