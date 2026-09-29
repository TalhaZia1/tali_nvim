-- Basic editor settings
vim.opt.number = true
vim.opt.mouse = "a"
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"        -- keep gutter stable for gitsigns/diagnostics
vim.opt.scrolloff = 8

-- Windows-style selection
vim.opt.keymodel = "startsel,stopsel"
vim.opt.selection = "inclusive"
vim.opt.virtualedit = "block"

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

-- Statusline
local modes = {
    n = "NORMAL", i = "INSERT", v = "VISUAL", V = "V-LINE",
    ["\22"] = "V-BLOCK", c = "COMMAND", R = "REPLACE", t = "TERMINAL",
    s = "SELECT", S = "S-LINE", ["\19"] = "S-BLOCK",
}

function _G.stl_mode()
    local m = vim.fn.mode():sub(1, 1)
    return modes[m] or m
end

function _G.stl_git()
    local head = vim.b.gitsigns_head
    return head and ("  ⎇ " .. head) or ""
end

function _G.stl_diag()
    local c = vim.diagnostic.count(0)
    local e = c[vim.diagnostic.severity.ERROR] or 0
    local w = c[vim.diagnostic.severity.WARN] or 0
    local out = ""
    if e > 0 then out = out .. " E:" .. e end
    if w > 0 then out = out .. " W:" .. w end
    return out
end

vim.opt.statusline = table.concat({
    " %{v:lua.stl_mode()} ",
    " %f %m%r",
    "%{v:lua.stl_git()}",
    "%=",
    "%{v:lua.stl_diag()}",
    "  %y [%{&fileformat}]  %l:%c  %p%% ",
})
