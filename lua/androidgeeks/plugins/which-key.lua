return { -- Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    event = 'VeryLazy', -- Sets the loading event to 'VimEnter'
    opts = {
        -- delay between pressing a key and opening which-key (milliseconds)
        -- this setting is independent of vim.opt.timeoutlen
        delay = 0,
        preset = 'modern',
        colors = true,

        icons = {
            rules = false,
            breadcrumb = ' ', -- symbol used in the command line area that shows your active key combo
            separator = '󱦰  ', -- symbol used between a key and it's label
            group = '󰹍 ', -- symbol prepended to a group
        },

        plugins = {
            spelling = {
                enabled = false,
            },
        },

        win = {
            height = {
                max = math.huge,
            },
        },

        on_open = function()
            -- call your C binary in "which‑key fix" mode
            local bin = vim.fn.stdpath 'config' .. '/native-theme/androidgeeks'
            vim.fn.jobstart({ bin, '--whichkey' }, {
                stdout_buffered = true,
                on_stdout = function(_, data)
                    for _, line in ipairs(data) do
                        if line ~= '' then
                            vim.cmd(line)
                        end
                    end
                end,
            })
        end,
    },

    -- Document existing key chains
    spec = {},
}
