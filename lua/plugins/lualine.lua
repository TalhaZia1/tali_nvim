return {
    "nvim-lualine/lualine.nvim",

    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    config = function()
        local function bufferline()
            local buffers = vim.fn.getbufinfo({
                buflisted = 1,
            })

            local result = {}

            for _, buf in ipairs(buffers) do
                local name = vim.fn.fnamemodify(buf.name, ":t")

                if name == "" then
                    name = "[No Name]"
                end

                local current = buf.bufnr == vim.api.nvim_get_current_buf()

                table.insert(result, {
                    name = name,
                    bufnr = buf.bufnr,
                    current = current,
                })
            end

            return result
        end

        require("lualine").setup({
            options = {
                globalstatus = true,
                always_show_tabline = true,
            },

            -- =========================
            -- TOP BUFFERLINE
            -- =========================

            tabline = {
                lualine_a = {
                    {
                        "buffers",

                        -- Show only the filename
                        show_filename_only = true,

                        -- Click to select a buffer
                        on_click = function(number, button, modifiers)
                            if button == "l" then
                                vim.api.nvim_set_current_buf(number)
                            end
                        end,

                        -- Buffer appearance
                        buffers_color = {
                            active = "lualine_a_normal",
                            inactive = "lualine_a_inactive",
                        },

                        -- Buffer symbols
                        symbols = {
                            modified = "",
                            alternate_file = "",
                            directory = "",
                        },
                    },
                },

                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {},
            },

            -- =========================
            -- BOTTOM STATUSLINE
            -- =========================

            sections = {
                lualine_b = {
                    {
                        "branch",
                        source = function()
                            return vim.b.gitsigns_head
                        end,
                    },
                    "diff",
                    "diagnostics",
                },

                lualine_c = {
                    {
                        "filename",
                        path = 1,
                    },
                },

                lualine_x = {
                    "encoding",
                    "fileformat",
                    "filetype",
                },
            },
        })
    end,
}
