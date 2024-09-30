local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettierd,
    require("none-ls.diagnostics.eslint"),
    require("none-ls.code_actions.eslint"),
  },
})
