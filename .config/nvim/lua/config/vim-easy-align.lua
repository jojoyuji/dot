local bind = vim.api.nvim_set_keymap

-- Start interactive EasyAlign in visual mode (e.g. vipga)
bind('x', 'ga', '<Plug>(EasyAlign)', {} )
-- xmap ga <Plug>(EasyAlign)

-- Start interactive EasyAlign for a motion/text object (e.g. gaip)
bind('n', 'ga', '<Plug>(EasyAlign)', {} )
-- nmap ga <Plug>(EasyAlign)
