return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
      config = function()
        require("catppuccin").setup({
          integrations = {
            telescope = true
        }
      })
        vim.cmd.colorscheme("catppuccin-frappe")
    end,
  }
}

