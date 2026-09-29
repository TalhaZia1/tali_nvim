return {
    "jake-stewart/multicursor.nvim",
    branch = "1.0",

    config = function()
        local mc = require("multicursor-nvim")

        mc.setup()

        -- Normal mode
        vim.keymap.set("n", "<C-Down>", function()
            mc.lineAddCursor(1)
        end)

        vim.keymap.set("n", "<C-Up>", function()
            mc.lineAddCursor(-1)
        end)
    end,
}

