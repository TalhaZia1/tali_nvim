return {
    "sindrets/diffview.nvim",

    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    config = function()
        require("diffview").setup({
            enhanced_diff_hl = true,

            view = {
                default = {
                    layout = "diff2_horizontal",
                },

                file_history = {
                    layout = "diff2_horizontal",
                },
            },

            file_panel = {
                listing_style = "tree",
            },
        })
        vim.api.nvim_set_hl(0, "DiffAdd",    { bg = "#003D26" })
        vim.api.nvim_set_hl(0, "DiffDelete", { bg = "#520D2B" })
    end,
}

