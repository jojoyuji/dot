local actions = require("telescope.actions")
require("telescope").setup({
  defaults = {
    theme = "center",
    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
    },
    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
    },
    selection_caret = "> ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "vertical",
    -- layout_strategy = "horizontal",
    -- layout_defaults = {
    --   horizontal = {
    --     mirror = false,
    --   },
    --   vertical = {
    --     mirror = false,
    --   },
    -- },
    layout_config = {
      horizontal = {
        width = 0.75,
      },
      vertical = {
        height = 0.95,
      },
      prompt_position = "bottom",
      -- prompt_prefix = "> ",
      preview_cutoff = 120,
      -- preview_cutoff = 1,
    },
    file_sorter = require("telescope.sorters").get_fuzzy_file,
    file_ignore_patterns = {
      "%.pdf",
      "%.png",
      "%.jpeg",
      "%.jpg",
      "%.opus",
      "%.ogg",
      "%.mp3",
      "%.m4p",
      "%.ttf",
      "%.gz",
      "%.zip",
    },
    generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
    -- shorten_path = true,
    path_display = {},
    winblend = 20,
    results_height = 1,
    results_width = 0.8,
    border = {},
    borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
    color_devicons = true,
    use_less = true,
    set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
    file_previewer = require("telescope.previewers").vim_buffer_cat.new,
    grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
    qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,

    -- Developer configurations: Not meant for general override
    buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
  },
  pickers = {
    oldfiles = {
      theme = "ivy",
    },
    buffers = {
      theme = "ivy",

    },

  },

})

require("telescope").load_extension("neoclip")


local action_state = require("telescope.actions.state")

M = {}
M.my_buffer = function()
  require("telescope.builtin").buffers({
    attach_mappings = function(prompt_bufnr, map)
      local delete_buf = function()
        local selection = action_state.get_selected_entry()
        actions.close(prompt_bufnr)
        vim.api.nvim_buf_delete(selection.bufnr, { force = true })
      end

      map("i", "<c-d>", delete_buf)
      return true
    end,
  })
end

vim.api.nvim_set_keymap("n", "<leader>b", ":lua m.my_buffer()<cr>", { noremap = true })

local utils = require('telescope.utils')
local builtin = require('telescope.builtin')

M.project_files = function()
  local _, ret, _ = utils.get_os_command_output({ 'git', 'rev-parse', '--is-inside-work-tree' })
  if ret == 0 then
    builtin.git_files(require('telescope.themes').get_ivy({ winblend = 20 }))
  else
    builtin.find_files(require('telescope.themes').get_ivy({ winblend = 20 }))
  end
end
-- project_files()

vim.api.nvim_set_keymap("n", "<leader>y", "<CMD>Telescope neoclip a extra=star,plus,b<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>mr", "<CMD>Telescope oldfiles<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>b", "<CMD>Telescope buffers<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>ps", "<CMD>Telescope live_grep<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>pc", "<CMD>Telescope colorscheme<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>pm", "<CMD>Telescope marks<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>pf", ":lua m.project_files()<cr>", { noremap = true })

-- vim.cmd [[ nnoremap <leader>jo :lua require'telescope.builtin'.find_files(require('telescope.themes').get_ivy({ winblend = 10 }))<cr> ]]


