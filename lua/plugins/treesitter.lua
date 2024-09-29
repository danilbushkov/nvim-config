local configs = require("nvim-treesitter.configs")

configs.setup({
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
    "java"
  },
  highlight = {
    enable = true,
  }
})
