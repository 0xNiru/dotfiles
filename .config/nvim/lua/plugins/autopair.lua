return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter", -- load only when entering insert mode
    config = function()
      require("nvim-autopairs").setup({
        check_ts = true,      -- use treesitter to avoid closing inside strings/comments
        enable_moveright = true,
        enable_afterquote = true,
      })
    end,
  },

  {
    "windwp/nvim-ts-autotag",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
}
