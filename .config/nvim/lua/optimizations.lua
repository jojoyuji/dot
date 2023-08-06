function SaveCursorPos()
  local fname = vim.fn.expand('%:t')
  local line_col_pair = vim.api.nvim_win_get_cursor(0) -- row is 1, column is 0 indexed
  local fnamecol = fname .. ':' .. tostring(line_col_pair[1]) .. ':' .. tostring(line_col_pair[2])
  _G.lastCol = line_col_pair[1];
  _G.lastLin = line_col_pair[2];
  vim.fn.setreg('+', fnamecol)                         -- register + has filename:row:column
end
function RestoreCursorPos()
  vim.fn.cursor(_G.lastCol, _G.lastLin+1)
end

-- useful macros
vim.cmd [[ let @b=":lua SaveCursorPos()\<cr>0ys$*:lua RestoreCursorPos()\<cr>l" ]] -- surrounds * (bold in markdown)
