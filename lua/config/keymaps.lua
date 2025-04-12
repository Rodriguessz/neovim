--Util function for keymapping

function Map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, opts)
end


vim.g.mapleader = " "


--Navigation
Map("n", "<C-h>", "<C-w>h")
Map("n", "<C-j>", "<C-w>j")
Map("n", "<C-k>", "<C-w>k")
Map("n", "<C-l>", "<C-w>l")

--Resizing 
Map("n", "<D-h>", ":resize -2<CR>")
Map("n", "<D-j>", ":resize +2<CR>")
Map("n", "<D-k>", ":vertical resize -2<CR>")
Map("n", "<D-l>", ":vertical resize +2<CR>")

--Saving file
Map("n", "<D-s>", ":w<CR>")
Map("n", "<leader>wq", ":wqa<CR>")


--Buffers
Map("n", "<C-q>",":bdelete! %<CR>") --Close the current buffer
Map("n", "<leader>1", ":bprevious<CR>") -- Go to previous buffer
Map("n", "<leader>2", ":bnext<CR>") -- Go no next buffer

