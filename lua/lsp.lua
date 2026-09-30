vim.lsp.config("clangd", {
    cmd = {
        "clangd",
        "--background-index",
    },
    filetypes = { "c", "cpp" },
    root_markers = { "compile_commands.json", ".clangd", ".git" },
})
vim.lsp.enable("clangd")

vim.diagnostic.config({
    underline = true,
    virtual_text = { prefix = "●" },
    severity_sort = true,
    update_in_insert = true,
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "E",
            [vim.diagnostic.severity.WARN]  = "W",
            [vim.diagnostic.severity.INFO]  = "I",
            [vim.diagnostic.severity.HINT]  = "H",
        },
    },
    float = { border = "rounded", source = true },
})

