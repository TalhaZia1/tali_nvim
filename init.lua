-- ==========================================
-- Neovim configuration
-- ==========================================

-- Make Neovim background transparent to match terminal background
vim.api.nvim_set_hl(0, "Normal", { bg = "NONE", ctermbg = "NONE" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE", ctermbg = "NONE" })

require("options")
require("keybinding")
require("config.lazy")

