return {
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("cyberdream").setup({
        transparent = true, 
        extensions = {
          telescope = true,
          notify = true,
          mini = true,
        },
      })
      vim.cmd.colorscheme("cyberdream")
    end,
  },
  { "nvim-lualine/lualine.nvim", opts = {}, },
}
