return {
  {
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`
    'folke/tokyonight.nvim',
    name = 'tokyonight',
    priority = 1000, -- make sure to load this before all the other start plugins
    init = function()
    end,
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    init = function()
    end,
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
  },
  {
    "EdenEast/nightfox.nvim",
    priority = 1000,
    config = true,
  },
  {
    "slugbyte/lackluster.nvim",
    priority = 1000,
    config = true,
  },
}
