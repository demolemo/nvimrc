local opts = {
    -- this was broken after os upate beause runtime was nulled
    -- now we create this file separately not install those things again in the case of emergency
    
    ensure_installed = {
        'c',
        'lua',
        'vim',
        'vimdoc',
        'query',
        'markdown',
        'markdown_inline',
    },
}

local function config()
    require('nvim-treesitter.configs').setup(opts)
end
return {
    'nvim-treesitter/nvim-treesitter',
    config = config,
    build = ':TSUpdate',
}

