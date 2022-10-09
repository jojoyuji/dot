vim.api.nvim_set_keymap("n", "-", ":Switch<CR>", { noremap = true })
 -- import teste from 'asdada';

vim.cmd([[
 let b:switch_custom_definitions = 
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
  \   [ "setTimeout", "$timeout", "setInterval" ],
  \   [ "$scope", "$rootScope" ],
  \   [ "$emit", "$broadcast" ],
  \   [ "console.log", "alert" ],
  \   [ "radio", "checkbox" ],
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

]])
  -- '\(import\)\(.*\)\(from\s\)\([\'|"]\S.*[\'|"]\)'
--\(import\)\(.*\)\(from\)\s*\([\'|"]\S*[\'|"]\)
print('Switch loaded')



