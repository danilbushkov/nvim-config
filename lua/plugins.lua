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
      { "<C-a>", "<cmd>Neotree reveal<cr>" },
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
  }
})
