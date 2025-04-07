return {
    {
      'nvim-telescope/telescope.nvim', tag = '0.1.8', dependencies = { 'nvim-lua/plenary.nvim',  'andrew-george/telescope-themes', },
       config = function()
        local builtin = require("telescope.builtin")
        vim.keymap.set('n', '<D-p>', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
        vim.keymap.set("n", "<leader><leader>", builtin.oldfiles, {})
      end
    },
  --Plugin for better telescope UI
    {

      "nvim-telescope/telescope-ui-select.nvim",
      config = function()
        require("telescope").setup({
          extensions = {
            ["ui-select"] = {
              require("telescope.themes").get_dropdown{}
          }
        }
      })
      require("telescope").load_extension("ui-select")
      require("telescope").load_extension("themes")
      end
    }

}
