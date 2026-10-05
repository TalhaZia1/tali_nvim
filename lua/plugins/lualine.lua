return {
    "nvim-lualine/lualine.nvim",

    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    config = function()
        require("lualine").setup({
            sections = {
                lualine_b = {
                    {
                        "branch",
                        source = function()
                            return vim.b.gitsigns_head
                        end,
                    },
                    "diff",
                    "diagnostics",
                },

                lualine_x = {
                    "encoding",
                    "fileformat",
                    "filetype",
                },
            },
        })
    end,
}
