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
                        function()
                            local result = {}

                            for _, buf in ipairs(bufferline()) do
                                local icon = " "

                                if buf.current then
                                    icon = "● "
                                end

                                table.insert(
                                    result,
                                    icon .. buf.name .. " ×"
                                )
                            end

                            return table.concat(result, " │ ")
                        end,

                        on_click = function(number, button, modifiers)
                            if button ~= "l" then
                                return
                            end

                            local buffers = bufferline()

                            -- Determine which buffer was clicked
                            local index = number

                            if buffers[index] then
                                vim.api.nvim_set_current_buf(
                                    buffers[index].bufnr
                                )
                            end
                        end,
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

