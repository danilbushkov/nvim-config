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
    config = function()
      require("plagins/neotree")
    end
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
      require("plagins/cmp")
    end
  }
  use { 'akinsho/bufferline.nvim',
    tag = "*",
    requires = 'nvim-tree/nvim-web-devicons',
    config = function()
      require("bufferline").setup {}
    end
  }
end)
