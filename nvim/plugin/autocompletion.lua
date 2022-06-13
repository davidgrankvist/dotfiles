-- https://github.com/hrsh7th/nvim-cmp#recommended-configuration
local cmp = require'cmp'

cmp.setup({
snippet = {
  expand = function(args)
	vim.fn["vsnip#anonymous"](args.body)
  end,
},
mapping = {
  ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
  ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
  ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
  ['<C-y>'] = cmp.config.disable,
  ['<C-e>'] = cmp.mapping({
	i = cmp.mapping.abort(),
	c = cmp.mapping.close(),
  }),
  ['<CR>'] = cmp.mapping.confirm({ select = true }),
  ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      -- elseif vim.fn["vsnip#available"](1) then
      --   vim.fn.feedkeys(t('<Plug>(vsnip-expand-or-jump)', ''))
      else
        fallback()
      end
    end, {
      "i",
      "s"
    }),
  ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      -- elseif vim.fn["vsnip#available"](1) then
      --   vim.fn.feedkeys(t('<Plug>(vsnip-expand-or-jump)', ''))
      else
        fallback()
      end
    end, {
      "i",
      "s"
    }),
},
sources = cmp.config.sources({
  { name = 'nvim_lsp' },
  { name = 'vsnip' },
}, {
  { name = 'buffer' },
})
})

cmp.setup.filetype('gitcommit', {
sources = cmp.config.sources({
  { name = 'cmp_git' },
}, {
  { name = 'buffer' },
})
})

-- does not work with native_menu
cmp.setup.cmdline('/', {
sources = {
  { name = 'buffer' }
}
})

-- does not work with native_menu
cmp.setup.cmdline(':', {
sources = cmp.config.sources({
  { name = 'path' }
}, {
  { name = 'cmdline', keyword_length=3 }
})
})

