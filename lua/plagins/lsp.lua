local lspconfig = require("lspconfig")
lspconfig.eslint.setup({})
lspconfig.lua_ls.setup({
  settings = {
    Lua = {

      enable = true,
      defaultConfig = {
        indent_style = "space",
        indent_size = "2",
      },
      diagnostics = {

        globals = {
          'vim',
          'require'
        },
      },
    }

  }
})
