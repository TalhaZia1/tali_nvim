return {
    "akinsho/bufferline.nvim",

    version = "*",

    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    config = function()
        require("bufferline").setup({
            options = {
                buffer_close_icon = "×",
                close_icon = "×",
                show_close_icon = true,
                show_buffer_close_icons = true,
            }
        })
    end,
}

