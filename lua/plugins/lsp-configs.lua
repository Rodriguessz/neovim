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
          ensure_installed = 
            {"lua_ls", "eslint", "html", "emmet_ls", "cssls", "ast_grep", "jdtls", "jsonls", "harper_ls", "bashls"},
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
        lspconfig.eslint.setup({})
        lspconfig.html.setup({})
        lspconfig.emmet_ls.setup({})
        lspconfig.cssls.setup({})
        lspconfig.ast_grep.setup({})
        lspconfig.jdtls.setup({})
        lspconfig.jsonls.setup({})
        lspconfig.harper_ls.setup({})
        lspconfig.bashls.setup({})
      end
    }

  }

}
