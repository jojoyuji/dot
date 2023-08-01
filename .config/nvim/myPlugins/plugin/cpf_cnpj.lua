local pickers = require "telescope.pickers"
local finders = require "telescope.finders"
local conf = require("telescope.config").values

vim.cmd([[
command! CPF :let @+ = system('node ./node/geradorCPF.js')  | echo 'CPF: '.@+
]])
vim.cmd([[command! CNPJ :let @+ = system('node ./node/geradorCNPJ.js') | echo 'CNPJ: '.@+ ]])

vim.api.nvim_create_user_command('Hello', function(input)
  -- local cpf = os.execute('node ./node/geradorCPF.js')
  vim.notify("hello")
end, { nargs = '*' }
)

 local colors = function(opts)
  opts = opts or {}
  pickers.new(opts, {
    prompt_title = "my Utilities",
    finder = finders.new_table {
      results = { "Gerador de CNPJ", "Gerador de CPF"  }
    },
    sorter = conf.generic_sorter(opts),
  }):find()
end
-- colors()


