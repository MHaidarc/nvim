return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
         'neovim/nvim-lspconfig',
         'hrsh7th/cmp-nvim-lsp',
         'hrsh7th/cmp-buffer',
         'hrsh7th/cmp-path',
         'hrsh7th/cmp-cmdline',
        'hrsh7th/nvim-cmp',
         'L3MON4D3/LuaSnip',
         'saadparwaiz1/cmp_luasnip',
     },

     config = function()
         local cmp = require("cmp")
         local luasnip = require("luasnip")

         require("luasnip.loaders.from_vscode").lazy_load()
         vim.opt.completeopt = "menu,menuone,noselect"

        cmp.setup({
            snippet = {
            expand = function(args)
                luasnip.lsp_expand(args.body)
            end,
        },

            window = {
            },
            mapping = cmp.mapping.preset.insert({
                  ['<C-p>'] = cmp.mapping.select_prev_item(),
                  ['<C-n>'] = cmp.mapping.select_next_item(),


                ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-e>'] = cmp.mapping.abort(),
                ['<CR>'] = cmp.mapping.confirm({ select = true }),
            }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'luasnip' },
      { name = 'buffer' },
      { name = 'path' },
    })
  })
  end,
}
