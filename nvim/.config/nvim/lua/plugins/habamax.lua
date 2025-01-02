return{
    "ntk148v/habamax.nvim",
    dependencies = { "rktjmp/lush.nvim" },
    priority = 1000,
    config = function()
        vim.cmd('colorscheme habamax') 
        vim.cmd('highlight Normal guibg=#282a2e guifg=#c5c8c6')
    end,

}
