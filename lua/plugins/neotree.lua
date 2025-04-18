  return {

  {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
      require("neo-tree").setup({
        close_if_last_window = true,
          filesystem = {
            --Window components configuration
          window = { position = "right"},

          --Neotree configuration files
          filtered_items = {},
        },

          source_selector = {
            winbar = true,
            statuline = true,
          }

      })
      vim.keymap.set('n', '<D-b>', ':Neotree toggle filesystem right<CR>')
      vim.keymap.set('n', '<C-g>', ':Neotree float git_status git_base=main<CR>')
      vim.keymap.set("n", "nn", function()
        vim.cmd("Neotree focus")
      end, { desc = "Focus on Neo-tree" })
  end
}


}
