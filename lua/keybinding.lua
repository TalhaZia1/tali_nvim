
vim.keymap.set("n", "<A-Up>",     "<cmd>move .-2<CR>==",          { silent = true }) -- move line up
vim.keymap.set("n", "<A-Down>",   "<cmd>move .+1<CR>==",          { silent = true }) -- move line down
vim.keymap.set("n", "<A-Right>",  "<cmd>vsplit<CR>",              { silent = true }) -- vertical window
vim.keymap.set("n", "<A-Left>",   "<C-w>q",                       { silent = true }) -- quit window 
vim.keymap.set("n", "<S-Tab>",    "<cmd>bnext<CR>",               { silent = true }) -- toggle bufferline
vim.keymap.set("n", "<C-d>",      "yyp",                          { silent = true }) -- duplicate

-- Scolling Options 
vim.keymap.set({ "n", "x" }, "<PageDown>",   "<C-e>", { silent = true })
vim.keymap.set({ "n", "x" }, "<PageUp>",     "<C-y>", { silent = true })
vim.keymap.set({ "n", "x" }, "<C-PageDown>", "<C-d>", { silent = true })
vim.keymap.set({ "n", "x" }, "<C-PageUp>",   "<C-u>", { silent = true })

-- select all (all modes)
vim.keymap.set("n", "<C-a>", "ggVG",         { silent = true, desc = "Select all" })
vim.keymap.set("x", "<C-a>", "<Esc>ggVG",    { silent = true, desc = "Select all" })
vim.keymap.set("i", "<C-a>", "<Esc>ggVG",    { silent = true, desc = "Select all" })

-- copy / cut (visual)
vim.keymap.set("x", "<C-c>", '"+y',          { silent = true, desc = "Copy" })
vim.keymap.set("x", "<C-x>", '"+d',          { silent = true, desc = "Cut" })

-- paste
vim.keymap.set("n", "<C-v>", '"+p',          { silent = true, desc = "Paste" })
vim.keymap.set("x", "<C-v>", '"+P',          { silent = true, desc = "Paste over selection" })
vim.keymap.set("i", "<C-v>", "<C-r><C-o>+",  { silent = true, desc = "Paste" })
vim.keymap.set("c", "<C-v>", "<C-r>+",       { desc = "Paste" })

-- restore what got replaced
vim.keymap.set("n", "<C-q>", "<C-v>",        { silent = true, desc = "Visual block" })
vim.keymap.set("i", "<C-q>", "<C-v>",        { silent = true, desc = "Insert literal char" })
vim.keymap.set("n", "+",     "<C-a>",        { silent = true, desc = "Increment number" })
vim.keymap.set("n", "-",     "<C-x>",        { silent = true, desc = "Decrement number" })
