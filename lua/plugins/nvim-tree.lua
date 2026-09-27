return {
    "nvim-tree/nvim-tree.lua",

    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    config = function()
        require("nvim-tree").setup({
            view = {
                width = 30,
                side = "left",
            },

            renderer = {
                group_empty = true,
            },

            filters = {
                dotfiles = false,
            },
        })

        vim.keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>", {
            silent = true,
            desc = "Toggle file tree",
        })

        vim.keymap.set("n", "<C-n>", ":NvimTreeFocus<CR>", {
            silent = true,
            desc = "Focus file tree",
        })
    end,
}
