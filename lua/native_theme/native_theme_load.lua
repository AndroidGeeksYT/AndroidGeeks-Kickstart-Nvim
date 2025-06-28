local AndroidGeeks = {}

function AndroidGeeks.load()
    local bin = vim.fn.stdpath 'config' .. '/native-theme/androidgeeks'
    if vim.fn.filereadable(bin) == 0 then
        vim.notify('native theme binary not found → falling back to Lua theme', vim.log.levels.WARN)
        vim.cmd('luafile ' .. vim.fn.stdpath 'config' .. '/lua/androidgeeks/androidgeeks.lua')
        return
    end

    vim.fn.jobstart(bin, {
        stdout_buffered = true,
        on_stdout = function(_, data)
            for _, line in ipairs(data) do
                if line ~= '' then
                    vim.cmd(line)
                end
            end
        end,
    })
    vim.g.colors_name = 'androidgeeks'
end

return AndroidGeeks
