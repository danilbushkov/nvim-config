return {
  "nvimtools/none-ls.nvim",
  dependencies = { "nvimtools/none-ls-extras.nvim" },
  config = function()
    local none_ls = require("null-ls")

    none_ls.setup({
      sources = {
        none_ls.builtins.formatting.prettierd,
        require("none-ls.diagnostics.eslint"),
        require("none-ls.code_actions.eslint"),
      },
    })
  end
}
