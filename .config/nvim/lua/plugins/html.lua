return {

{
    'brianhuster/live-preview.nvim',
    dependencies = {
        'nvim-telescope/telescope.nvim',
        'ibhagwan/fzf-lua',
        'echasnovski/mini.pick',
        'folke/snacks.nvim',
    },
    config = function()
        require("live-preview").setup()
    end,
}
}
