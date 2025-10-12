return {
  "folke/snacks.nvim",
  priority = 1000,
  opts = {
    picker = {
      sources = {
        explorer = {
          ignored = true,
          hidden = true,
        },
        files = {
          hidden = true,
        },
      },
    },
  },
}
