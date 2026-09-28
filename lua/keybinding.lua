
vim.keymap.set("n", "<A-Up>", ":move .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("n", "<A-Down>", ":move .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("v", "<A-Up>", ":move '<-2<CR>gv=gv", { desc = "Move selection up" })
vim.keymap.set("v", "<A-Down>", ":move '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("n", "<A-Right>", "<cmd>vsplit<CR>", { desc = "Vertical split" })

