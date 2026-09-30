return {
    "mg979/vim-visual-multi",
    branch = "master",

    config = function()
        vim.g.VM_default_mappings = 1

        vim.g.VM_maps = {
            ["Add Cursor Down"] = "<C-Down>",
            ["Add Cursor Up"] = "<C-Up>",
        }
    end,
}

