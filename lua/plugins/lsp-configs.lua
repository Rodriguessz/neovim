---@diagnostic disable: trailing-space
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
         ensure_installed = {"lua_ls", "ts_ls"}

        })
      end
    },

    --Neovim communication configuration for LSP servers
    {
      "neovim/nvim-lspconfig",
      config = function()
        local lspconfig = require("lspconfig")

      --Function on_Attach, callback tha only executes when the LSP is connected to the buffer
        local on_attach = function(_, bufnr)
          
          --Configuring LSP shortcuts
          vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
          vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
          vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

          --Callback definitions
          vim.keymap.set("n", "<leader>dh", function()
            vim.cmd("split")
            vim.lsp.buf.definition()
          end, {desc ="Open definition with a Horizontal split"})
         
          vim.keymap.set("n", "<leader>ds", function()
            vim.cmd("vsplit")
            vim.lsp.buf.definition()
          end, {desc ="Open definition with a Horizontal split"})
        end

        --initializing the communication between each lsp and the Neovim
        lspconfig.lua_ls.setup({on_attach = on_attach})
        lspconfig.ts_ls.setup({on_attach = on_attach})

      end
    }

  }
}
