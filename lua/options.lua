
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

vim.opt.fileformats = "unix,dos"
vim.opt.list = false
vim.opt.statusline = "%f %m %= %l:%c %p%% [%{&fileformat}]"

