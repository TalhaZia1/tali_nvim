-- Basic editor settings
vim.opt.number = true
vim.opt.mouse = "a"
vim.opt.cursorline = false
vim.opt.signcolumn = "yes"        -- keep gutter stable for gitsigns/diagnostics
vim.opt.scrolloff = 8

-- Windows-style selection
vim.opt.keymodel = "startsel,stopsel"
vim.opt.selection = "inclusive"
vim.opt.virtualedit = "block"
vim.opt.clipboard = "unnamedplus"

-- Behavior
vim.opt.undofile = true           -- undo survives closing the file
vim.opt.updatetime = 250          -- faster gitsigns/diagnostic updates
vim.opt.showmode = false          -- statusline shows the mode

-- Tabs / indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Splits
vim.opt.splitright = true
vim.opt.splitbelow = true

