local AndroidGeeks = {}

function AndroidGeeks.setup()
    vim.cmd 'highlight clear'
    if vim.fn.exists 'syntax_on' then
        vim.cmd 'syntax reset'
    end
    vim.o.background = 'dark' -- or "light"
    vim.g.colors_name = 'androidgeeks'

    -- Define some colors
    local colors = {
        fg = '#f9f5d7',
        bg = '#282828',
        red = '#e46876',
        yellow1 = '#FFFF00',
        yellow = '#e6c384',
        blue = '#7fb4ca',
        magenta = '#957fb8',
        cyan = '#7aa89f',
        grey = '#727169',
    }

    -- Apply highlights
    vim.api.nvim_set_hl(0, 'Normal', { fg = colors.fg, bg = colors.bg })
    vim.api.nvim_set_hl(0, 'Comment', { fg = colors.grey, italic = true })
    vim.api.nvim_set_hl(0, 'Function', { fg = colors.blue })
    vim.api.nvim_set_hl(0, 'Keyword', { fg = colors.red })
    vim.api.nvim_set_hl(0, 'String', { fg = colors.yellow1 })
    -- Add more highlights as needed

    -- Hide the end-of-buffer tildes
    vim.opt.fillchars:append { eob = ' ' } -- put a space instead of '~'

    -- (optional) Make sure your theme doesn't repaint them later
    vim.api.nvim_set_hl(0, 'EndOfBuffer', { fg = 'NONE', bg = 'NONE' })
end

AndroidGeeks.setup()
return AndroidGeeks
