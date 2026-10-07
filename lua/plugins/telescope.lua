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
                    previewer = true,

                    layout_strategy = "horizontal",

                    layout_config = {
                        width = 0.95,
                        height = 0.88,
                        preview_width = 0.55,
                    },
                },
            }
        })

        vim.keymap.set("n", "<C-p>", "<cmd>Telescope find_files<CR>", {
            desc = "Find files",
        })

        vim.keymap.set("n", "<A-p>", "<cmd>Telescope live_grep<CR>", {
            desc = "Search entire project",
        })

        vim.keymap.set("n", "<A-f>", function()
            local word = vim.fn.expand("<cword>")

            require("telescope.builtin").live_grep({
                default_text = word,
            })
        end, {
            desc = "Search current word",
        })
    end,
}

