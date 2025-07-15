local AndroidGeeks = {}

-- Open a horizontal terminal at half screen height
AndroidGeeks.run_in_horizontal_term = function(cmd)
  vim.cmd 'split'
  vim.cmd('resize ' .. math.floor(vim.o.lines / 2))
  vim.cmd('term ' .. cmd)
end

-- Determine the right command based on filetype
AndroidGeeks.run_current_file = function()
  local ft = vim.bo.filetype
  local file = vim.fn.expand '%'
  local cmd = ''

  if ft == 'python' then
    cmd = 'python ' .. file
  elseif ft == 'javascript' or ft == 'typescript' then
    cmd = 'node ' .. file
  elseif ft == 'lua' then
    cmd = 'lua ' .. file
  elseif ft == 'sh' or ft == 'bash' then
    cmd = 'bash ' .. file
  elseif ft == 'go' then
    cmd = 'go run ' .. file
  elseif ft == 'rust' then
    cmd = 'cargo run'
  elseif ft == 'c' then
    cmd = 'gcc ' .. file .. ' -lm -o main && ./main'
  elseif ft == 'cpp' then
    cmd = 'g++ ' .. file .. ' -o temp && ./temp'
  elseif ft == 'php' then
    cmd = 'php ' .. file
  elseif ft == 'ruby' then
    cmd = 'ruby ' .. file
  elseif ft == 'java' then
    local class_name = vim.fn.fnamemodify(file, ':t:r')
    cmd = 'javac ' .. file .. ' && java ' .. class_name
  elseif ft == 'make' then
    cmd = 'make'
  elseif ft == 'markdown' then
    cmd = 'glow ' .. file
  end

  if cmd == '' then
    vim.notify('No run command for this filetype', vim.log.levels.WARN)
    return
  end

  AndroidGeeks.run_in_horizontal_term(cmd)
end

return AndroidGeeks
