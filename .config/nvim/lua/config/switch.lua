local bind = vim.api.nvim_set_keymap
bind('n', '-', ':Switch<CR>', {noremap = true})
-- nnoremap - :Switch<cr>
vim.g.switch_custom_definitions = {
  { 'addClass', 'removeClass' },
  { 'GET', 'POST', 'PUT', 'DELETE', 'PATCH' } ,
  { 'get', 'set' } ,
  { 'left', 'right', 'center' } ,
  { 'width', 'height' } ,
  { 'error', 'success', 'warning' } ,
  { 'show', 'hide' } ,
  { 'const', 'let', 'var' } ,
  { 'after', 'before' } ,
  { 'padding', 'margin' } ,
  { 'top', 'bottom' } ,
  { 'relative', 'absolute', 'fixed', 'static' } ,
  { 'setTimeout', '$timeout', 'setInterval' } ,
  { '$scope', '$rootScope' },
  { '$emit', '$broadcast' },
  { 'console.log', 'alert' },
  { 'radio', 'checkbox' },
  { 'min', 'max' },
  { 'unshift', 'push' }
}
