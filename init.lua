-- ==========================================
-- Neovim configuration
-- ==========================================

-- Basic editor settings
vim.opt.number = true
vim.opt.relativenumber = false

-- Mouse support
vim.opt.mouse = "a"

-- Tabs / indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Better scrolling
vim.opt.scrolloff = 8

-- Highlight current line
vim.opt.cursorline = true

-- Keep sign column stable
vim.opt.signcolumn = "yes"

-- Better split behavior
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Make Neovim background transparent to match terminal background
vim.api.nvim_set_hl(0, "Normal", { bg = "NONE", ctermbg = "NONE" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE", ctermbg = "NONE" })

-- Force Unix line endings (LF) for all files
vim.opt.fileformats = "unix,dos"

vim.keymap.set("n", "<A-Up>", ":move .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("n", "<A-Down>", ":move .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("v", "<A-Up>", ":move '<-2<CR>gv=gv", { desc = "Move selection up" })
vim.keymap.set("v", "<A-Down>", ":move '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("n", "<A-Right>", "<cmd>vsplit<CR>", { desc = "Vertical split" })


highlight = { enable = true }

require("config.lazy")



