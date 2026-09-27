return {
    "nvim-telescope/telescope.nvim",

    dependencies = {
        "nvim-lua/plenary.nvim",
    },

    config = function()
        local telescope = require("telescope")

        telescope.setup({
            pickers = {
                find_files = {
                    previewer = false,
                },           
                live_grep = {
                    previewer = false,
                },
            }
        })

        vim.keymap.set("n", "<C-p>", "<cmd>Telescope find_files<CR>", {
            desc = "Find files",
        })

        vim.keymap.set("n", "<A-p>", "<cmd>Telescope live_grep<CR>", {
            desc = "Search entire project",
        })
    end,
}

