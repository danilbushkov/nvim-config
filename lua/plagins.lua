vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
  }

  use {
    "hrsh7th/cmp-nvim-lsp"
  }
  use {
    "L3MON4D3/LuaSnip"
  }
  use {
    "saadparwaiz1/cmp_luasnip"
  }

  use {
    "neovim/nvim-lspconfig",
    config = function()
      require("plagins/lsp")
    end

  }


  use {
    "navarasu/onedark.nvim",
    config = function()
      require("onedark").load()
    end

  }

  use {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end

  }




  use {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require 'cmp'
      cmp.setup({
        completion = {
          autocompletion = false
        },
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
        window = {
          -- completion = cmp.config.window.bordered(),
          -- documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true })
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
        })
      })
    end
  }
end)
