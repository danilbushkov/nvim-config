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
      "markdown"
    },
    highlight = {
      enable = true,
    }
  }
}
