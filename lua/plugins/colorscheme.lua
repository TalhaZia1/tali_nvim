return {
    "catppuccin/nvim",

    name = "catppuccin",

    priority = 1000,

    config = function()
        require("catppuccin").setup({
            flavour = "mocha",

            transparent_background = true,

            integrations = {
                treesitter = true,
                gitsigns = true,
                nvimtree = true,
                telescope = true,
                bufferline = true,
            },
        })

        vim.cmd.colorscheme("catppuccin")
    end,
}

