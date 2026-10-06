-- VSCode key bindings
vim.keymap.set("n", "<A-Up>",     "<cmd>move .-2<CR>==",            { silent = true }) -- move line up
vim.keymap.set("n", "<A-Down>",   "<cmd>move .+1<CR>==",            { silent = true }) -- move line down
vim.keymap.set("n", "<A-Right>",  "<cmd>vsplit<CR>",                { silent = true }) -- vertical window
vim.keymap.set("n", "<C-d>",      "yyp",                            { silent = true }) -- duplicate

-- Buffers / Windows
vim.keymap.set("n", "<A-Left>",   "<C-w>q",                         { silent = true }) -- quit window 
vim.keymap.set("n", "<S-Tab>",    "<cmd>bnext<CR>",                 { silent = true }) -- toggle bufferline
vim.keymap.set("n", "Q",          "<cmd>bd<CR>",                    { silent = true }) -- delete buffer

-- Diffview
-- Git / Diffview
vim.keymap.set("n", "<A-g>",      "<cmd>DiffviewOpen<CR>",          { silent = true })
vim.keymap.set("n", "<A-c>",      "<cmd>DiffviewClose<CR>",         { silent = true })
vim.keymap.set("n", "<A-h>",      "<cmd>DiffviewFileHistory %<CR>", { silent = true })
vim.keymap.set("n", "<A-l>",      "<cmd>.DiffviewFileHistory<CR>",  { silent = true })

-- Scolling Options 
vim.keymap.set({ "n", "x" },      "<PageDown>",   "<C-e>",          { silent = true })
vim.keymap.set({ "n", "x" },      "<PageUp>",     "<C-y>",          { silent = true })
vim.keymap.set({ "n", "x" },      "<C-PageDown>", "<C-d>",          { silent = true })
vim.keymap.set({ "n", "x" },      "<C-PageUp>",   "<C-u>",          { silent = true })

vim.keymap.set("c", "<C-v>",      "<C-r>+",                         { silent = true })

vim.keymap.set("n", "<F12>",      vim.lsp.buf.definition,           { silent = true })
vim.keymap.set("n", "<A-F12>",    vim.lsp.buf.references,           { silent = true })

