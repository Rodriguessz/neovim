--Enable the line count
vim.opt.number = true

-- Enable break indent
vim.opt.breakindent = true

--Configuration for diagnostics
vim.diagnostic.config({
  virtual_text = false,
  float = {
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
})
vim.cmd([[
  autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])
vim.o.updatetime = 300

--Neovim Window configurations
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader= " "


vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


