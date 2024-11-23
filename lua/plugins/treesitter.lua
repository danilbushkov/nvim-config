return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "c",
      "cpp",
      "lua",
      "rust",
      "go",
      "css",
      "html",
      "javascript",
      "json",
      "make",
      "sql",
      "toml",
      "typescript",
      "yaml",
      "bash",
      "dockerfile",
      "tsx",
      "php",
      "java",
      "scala",
      "markdown"
    },
    highlight = {
      enable = true,
    },
    indent = { enable = true },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
