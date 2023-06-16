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




end)
