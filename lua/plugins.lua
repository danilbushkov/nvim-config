local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    keys = {
      { "<C-f>", "<cmd>Neotree toggle reveal<cr>" },
      { "<C-a>", "<cmd>Neotree reveal_force_cwd<cr>" },
      { "<C-b>", "<cmd>Neotree toggle reveal buffers right<cr>" },
      { "<C-s>", "<cmd>Neotree float git_status<cr>" },
    },
    config = function()
      require("plugins/neotree")
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("plugins/lsp")
    end
  },
  {
    "navarasu/onedark.nvim",
    config = function()
      require("onedark").load()
    end
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end
  },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("plugins/treesitter")
    end
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "L3MON4D3/LuaSnip",
      "hrsh7th/cmp-nvim-lsp"
    },
    config = function()
      require("plugins/cmp")
    end
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("plugins/telescope")
    end

  },
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("plugins/bufferline")
    end
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("plugins/lualine")
    end

  },
  {
    "nvimtools/none-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("plugins/null_ls")
    end
  },
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({})
    end
  },
  {
    "ellisonleao/glow.nvim",
    config = function()
      require("glow").setup()
    end

  },
  {
    "lervag/vimtex",
    tag = "v2.14",
    lazy = false,
    init = function()
      vim.g.vimtex_view_method = "zathura"
    end
  }
})
