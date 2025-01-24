return {
  'azabiong/vim-highlighter',
  init = function()
    vim.cmd([[
      " key mappings
      let HiSet   = 'ff'
      let HiErase = 'fe'
      let HiClear = 'fc'
      let HiFind  = 'f<Tab>'
      let HiSetSL = 'f<CR>'

      " default key mappings
      " let HiSet   = 'f<CR>'
      " let HiErase = 'f<BS>'
      " let HiClear = 'f<C-L>'
      " let HiFind  = 'f<Tab>'
      " let HiSetSL = 't<CR>'

      " jump key mappings
      " nn fN <Cmd>Hi><CR>
      " nn fP <Cmd>Hi<<CR>
      nn fn <Cmd>Hi}<CR>
      nn fp <Cmd>Hi{<CR>
      " nn gj <Cmd>Hi]<CR>
      " nn gk <Cmd>Hi[<CR>

      " find key mappings
      " nn -        <Cmd>Hi/next<CR>
      " nn _        <Cmd>Hi/previous<CR>
      " nn f<Left>  <Cmd>Hi/older<CR>
      " nn f<Right> <Cmd>Hi/newer<CR>

      " sync mode
      " let HiSyncMode = 1

      " directory to store highlight files
      " let HiKeywords = '~/.config/keywords'

      " additional highlight colors
      " hi HiColor21 ctermfg=52  ctermbg=181 guifg=#8f5f5f guibg=#d7cfbf cterm=bold gui=bold
      " hi HiColor22 ctermfg=254 ctermbg=246 guifg=#e7efef guibg=#979797 cterm=bold gui=bold
    ]])
  end,
}
