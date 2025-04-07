vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader= " "


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


--Configuration for buffer navigation
vim.keymap.set('n', '<leader>.', '<C-w>l', {desc = "Go to right buffer"})
vim.keymap.set('n', '<leader>,', '<C-w>h', {desc = "Go to left buffer"})


