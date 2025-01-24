return {
  'nvimdev/lspsaga.nvim',
  config = function()
    require('lspsaga').setup({
      request_timeout = 5000,
      breadcrumb = {
        delay = 500,
        enable = true,
        folder_level = 3,
        hide_keywords = false,
      },
      code_action = {
        enable = true, -- Ujisti se, že modul je zapnutý
        keys = {
          quit = "q", -- Klávesa pro ukončení nabídky
          exec = "<CR>", -- Klávesa pro potvrzení akce
        },
        num_shortcut = true,
        show_server_name = true,
      },
      diagnostic = {
        enable = true
      },
      lightbulb = {
        debounce = 10,
        enable = true,
        sign = false,
        sign_priority = 40,
        virtual_text = true,
      },
      outline = {
        win_position = "right",
        win_width = 60,
        auto_preview = false,
        detail = true,
        auto_close = true,
        close_after_jump = true,
        layout = 'float',
        -- layout = 'normal',
        max_height = 0.6,
        left_width = 0.3,
      }
    })
    vim.keymap.set('n', '<leader>lpd', '<cmd>Lspsaga peek_definition<CR>',
                   { noremap = true, silent = true, desc = '[L]SP Peek [D]efinition' })
    vim.keymap.set('n', '<leader>lgd', '<cmd>Lspsaga goto_definition<CR>',
                   { noremap = true, silent = true, desc = '[L]SP Goto [D]efinition' })
    vim.keymap.set('n', '<leader>lpt', '<cmd>Lspsaga peek_type_definition<CR>',
                   { noremap = true, silent = true, desc = '[L]SP Peek [T]ype Definition' })
    vim.keymap.set('n', '<leader>lgt', '<cmd>Lspsaga goto_type_definition<CR>',
                   { noremap = true, silent = true, desc = '[L]SP Goto [T]ype Definition' })
    vim.keymap.set('n', '<leader>lca', '<cmd>Lspsaga code_action<CR>',
                   { noremap = true, silent = true, desc = '[L]SP [C]ode [A]ction' })
    vim.keymap.set('n', '<leader>ldn', '<cmd>Lspsaga diagnostic_jump_next<CR>',
                   { noremap = true, silent = true, desc = '[L]SP [D]iagnostic jump [N]ext' })
    vim.keymap.set('n', '<leader>ldp', '<cmd>Lspsaga diagnostic_jump_prev<CR>',
                   { noremap = true, silent = true, desc = '[L]SP [D]iagnostic jump [P]rev' })
    vim.keymap.set('n', '<leader>lo', '<cmd>Lspsaga outline<CR>',
                   { noremap = true, silent = true, desc = '[L]SP [O]utline' })
  end,
  dependencies = {
    'nvim-treesitter/nvim-treesitter', -- optional
    'nvim-tree/nvim-web-devicons',     -- optional
  },
}
