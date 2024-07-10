return {
  {
    "neoclide/coc.nvim",
    branch = "release",
    config = function()
      vim.cmd([[
        " Use <Enter> to confirm completion, `<C-g>u` breaks undo sequence, `coc#_select_confirm()` selects confirm
        inoremap <silent><expr> <CR> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
      ]])
    end
  }
}

