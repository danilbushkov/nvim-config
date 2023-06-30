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

  use {
    'akinsho/bufferline.nvim',
    tag = "*",
    requires = 'nvim-tree/nvim-web-devicons',
    config = function()
      require("plagins/bufferline")
    end
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true },
    config = function()
      require("plagins/lualine")
    end
  }

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require("plagins/telescope")
    end
  }
  use {
    "jose-elias-alvarez/null-ls.nvim",
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require("plagins/null_ls")
    end
  }

  use {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({})
    end
  }
end)
