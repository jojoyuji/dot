vim.cmd([[command! CPF :let @+ = system('node ../../myUtils/geradorCPF.js')  | echo 'CPF: '.@+ ]]) 
vim.cmd([[command! CNPJ :let @+ = system('node ../../myUtils/geradorCNPJ.js') | echo 'CNPJ: '.@+ ]])

