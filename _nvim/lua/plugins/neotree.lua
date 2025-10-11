return {
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
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
      },
    }
  },
}
