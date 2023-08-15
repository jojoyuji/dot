require("settings")
require("autocmd")
require("keybinds")
require("plugins")
require("plugins_config")
require("optimizations")

-- vim.api.nvim_create_autocmd("UIEnter", {
--   callback = function()
--     vim.fn.timer_start(2000, function()
--      vim.cmd[[set guifont=monospace:h12]]
--       vim.print(vim.opt.lines)
--         local bind = vim.api.nvim_set_keymap
--         bind("n", "<d-d>", "<c-d>zz", {})
--         bind("n", "<d-e>", "<c-u>zz", {})
--         bind("n", "<d-u>", "<c-u>zz", {})
--       if(vim.opt.lines < 15) then
--         vim.print(vim.opt.lines)
--         vim.cmd [[echo 'less than 15']]
--         vim.opt.lines = 15
--       end
--       vim.cmd [[echo 'hello firenvim!']]
--     end)
--   end,
-- })
