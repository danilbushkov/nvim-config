return function()
  vim.keymap.set("n", "<space>e", vim.diagnostic.open_float)
  vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
  vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
  vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)

  -- Use LspAttach autocommand to only map the following keys
  -- after the language server attaches to the current buffer
  vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspConfig", {}),
    callback = function(ev)
      -- Enable completion triggered by <c-x><c-o>
      vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

      -- Buffer local mappings.
      -- See `:help vim.lsp.*` for documentation on any of the below functions
      local opts = { buffer = ev.buf }
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
      vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
      vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)
      vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts)
      vim.keymap.set("n", "<space>wl", function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end, opts)
      vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
      vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
      vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
      vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
      vim.keymap.set("n", "<space>f", function()
        vim.lsp.buf.format { async = true }
      end, opts)
    end,
  })


  vim.lsp.enable("gopls")

  vim.lsp.enable("lua_ls")
  vim.lsp.enable("rust_analyzer")

  vim.lsp.enable("nil_ls")
  vim.lsp.config("nil_ls", {
    settings = {
      ["nil"] = {
        formatting = {
          command = { "nixfmt" },
        },
      },
    },
  })

  vim.lsp.enable("marksman")

  vim.lsp.enable("intelephense")
  vim.lsp.enable("phpactor")
  vim.lsp.config("phpactor", {
    on_attach = function(client)
      client.server_capabilities.definitionProvider = false
      client.server_capabilities.referencesProvider = false
    end
  })

  -- ### deprecated ###
  --  local lspconfig = require("lspconfig")
  --
  --
  --  lspconfig.ts_ls.setup({
  --    on_attach = function(client)
  --      client.server_capabilities.document_formatting = false
  --      client.server_capabilities.document_range_formatting = false
  --      client.server_capabilities.documentFormattingProvider = false
  --      client.server_capabilities.documentRangeFormattingProvider = false
  --    end,
  --  })
  --
  --  -- lspconfig.eslint.setup({})
  --
  --
  --  -- lspconfig.gopls.setup({})
  --
  --  -- lspconfig.phpactor.setup({})
  --
  --  lspconfig.dockerls.setup({})
  --
  --  lspconfig.yamlls.setup({})
  --
  --  lspconfig.texlab.setup({})
  --
  --  lspconfig.jdtls.setup({})
  --
  --
  --
  --
  --  local capabilities = vim.lsp.protocol.make_client_capabilities()
  --  capabilities.textDocument.completion.completionItem.snippetSupport = true
  --
  --  lspconfig.cssls.setup({
  --    capabilities = capabilities,
  --
  --  })
  --
  --  lspconfig.jsonls.setup({
  --    capabilities = capabilities,
  --  })
  --
  --
  --  lspconfig.html.setup({
  --    capabilities = capabilities,
  --  })
end
