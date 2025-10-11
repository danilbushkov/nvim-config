local lspconfig = require("lspconfig")


lspconfig.ts_ls.setup({
  on_attach = function(client)
    client.server_capabilities.document_formatting = false
    client.server_capabilities.document_range_formatting = false
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false
  end,
})

-- lspconfig.eslint.setup({})

lspconfig.rust_analyzer.setup({})

lspconfig.gopls.setup({})

lspconfig.phpactor.setup({})

lspconfig.dockerls.setup({})

lspconfig.yamlls.setup({})

lspconfig.texlab.setup({})

lspconfig.jdtls.setup({})

lspconfig.nil_ls.setup({
  settings = {
    ["nil"] = {
      formatting = {
        command = { "nixfmt" },
      },
    },
  },
})

lspconfig.lua_ls.setup({
  settings = {
    Lua = {

      enable = true,
      format = {
        enable = true,
        defaultConfig = {
          indent_style = "space",
          indent_size = "2",
          quote_style = "double",
          continuation_indent = "2",
        }
      },
      diagnostics = {

        globals = {
          "vim",
          "require"
        },
      },
    }

  }
})




local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.cssls.setup({
  capabilities = capabilities,

})

lspconfig.jsonls.setup({
  capabilities = capabilities,
})


lspconfig.html.setup({
  capabilities = capabilities,
})
