vim.api.nvim_set_keymap("n", "-", ":Switch<CR>", { noremap = true })

--  \   switch#NormalizedCase(['one', 'two']),
-- \   switch#Words(['three', 'four']),
-- \   switch#NormalizedCaseWords(['five', 'six']),

vim.cmd[[
 let g:switch_custom_definitions = 
  \ [
  \   [ "addClass", "removeClass" ],
  \   [ "GET", "POST", "PUT", "DELETE", "PATCH" ],
  \   [ "get", "set" ],
  \   [ "left", "right", "center" ],
  \   [ "width", "height" ],
  \   [ "error", "success", "warning" ],
  \   [ "show", "hide" ],
  \   [ "after", "before" ],
  \   [ "padding", "margin" ],
  \   [ "top", "bottom" ],
  \   [ "relative", "absolute", "fixed", "static" ],
  \   [ "setTimeout", "setInterval" ],
  \   [ "$scope", "$rootScope" ],
  \   [ "$emit", "$broadcast" ],
  \   [ "console.log", "alert" ],
  \   [ "radio", "checkbox", "hidden" ],
  \   [ "min", "max" ],
  \   [ "unshift", "push" ],
  \   { 
  \     '\<[a-z0-9]\+_\k\+\>': {
  \       '_\(.\)': '\U\1'
  \     },
  \     '\<[a-z0-9]\+[A-Z]\k\+\>': {
  \       '\([A-Z]\)': '_\l\1'
  \     },
  \   },
  \   { 
  \     '\(import\)\(.*\)\(from\s\)\(.*\)': 'const\2= require(\4)',
  \     '\(const\|var\|let\)\(.*\)\(=.*require(\)\(.*\)\()\)': 'import\2from \4'
  \   },
  \ ]

]]

