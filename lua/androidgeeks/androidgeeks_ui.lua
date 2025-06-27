local AndroidGeeks = {}

function AndroidGeeks.setup()
    vim.cmd 'highlight clear'
    if vim.fn.exists 'syntax_on' then
        vim.cmd 'syntax reset'
    end
    vim.o.background = 'dark' -- or "light"
    vim.g.colors_name = 'androidgeeks'

    -- Define some colors
    local c = {
        bg0 = '#282828',
        bg1 = '#3c3836',
        bg2 = '#504945',
        fg0 = '#fbf1c7',
        fg1 = '#ebdbb2',
        red = '#cc241d',
        green = '#98971a',
        yellow = '#d79921',
        blue = '#458588',
        purple = '#b16286',
        aqua = '#689d6a',
        gray = '#928374',
    }

    -- Core UI
    vim.api.nvim_set_hl(0, 'Normal', { fg = c.fg0, bg = c.bg0 })
    vim.api.nvim_set_hl(0, 'NormalFloat', { fg = c.fg0, bg = c.bg1 })
    vim.api.nvim_set_hl(0, 'CursorLine', { bg = c.bg1 })
    vim.api.nvim_set_hl(0, 'CursorColumn', { bg = c.bg1 })
    vim.api.nvim_set_hl(0, 'LineNr', { fg = c.gray, bg = c.bg0 })
    vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = c.yellow, bold = true })
    vim.api.nvim_set_hl(0, 'Comment', { fg = c.gray, italic = true })
    vim.api.nvim_set_hl(0, 'Visual', { bg = c.bg2 })
    vim.api.nvim_set_hl(0, 'EndOfBuffer', { fg = c.bg0, bg = c.bg0 })

    -- Syntax
    vim.api.nvim_set_hl(0, 'Identifier', { fg = c.blue })
    vim.api.nvim_set_hl(0, 'Function', { fg = c.blue })
    vim.api.nvim_set_hl(0, 'Statement', { fg = c.purple })
    vim.api.nvim_set_hl(0, 'Keyword', { fg = c.red })
    vim.api.nvim_set_hl(0, 'Conditional', { fg = c.red })
    vim.api.nvim_set_hl(0, 'Repeat', { fg = c.red })
    vim.api.nvim_set_hl(0, 'String', { fg = c.green })
    vim.api.nvim_set_hl(0, 'Character', { fg = c.green })
    vim.api.nvim_set_hl(0, 'Number', { fg = c.yellow })
    vim.api.nvim_set_hl(0, 'Boolean', { fg = c.yellow })
    vim.api.nvim_set_hl(0, 'Float', { fg = c.yellow })
    vim.api.nvim_set_hl(0, 'Operator', { fg = c.aqua })
    vim.api.nvim_set_hl(0, 'Type', { fg = c.yellow })
    vim.api.nvim_set_hl(0, 'Special', { fg = c.aqua })
    vim.api.nvim_set_hl(0, 'Todo', { fg = c.purple, bg = c.bg2, bold = true })

    -- Hide the end-of-buffer tildes
    vim.opt.fillchars:append { eob = ' ' } -- put a space instead of '~'

    -- (optional) Make sure your theme doesn't repaint them later
    vim.api.nvim_set_hl(0, 'EndOfBuffer', { fg = 'NONE', bg = 'NONE' })
end

AndroidGeeks.setup()
return AndroidGeeks
