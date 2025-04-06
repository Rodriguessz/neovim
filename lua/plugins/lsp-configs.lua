return {

  {
    --LSP Installation Manager
    {
      "williamboman/mason.nvim",
      config = function()
          require('mason').setup({})
      end
    },


    --LSP Configuration
    {
      "williamboman/mason-lspconfig.nvim",
      config = function()
        require("mason-lspconfig").setup({
          ensure_installed = {"lua_ls"}

        })
      end
    },

    --Neovim communication configuration for LSP servers
    {
      "neovim/nvim-lspconfig",
      config = function()
        local lspconfig = require("lspconfig")
        --initializing the communication between each lsp and the Neovim
        lspconfig.lua_ls.setup({})
        vim.keymap.set('n', "K", vim.lsp.buf.hover, {})
      end
    }

  }
}
