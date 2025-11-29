return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      nil_ls = {},
      gopls = {},
      rust_analyzer = {},

      intelephense = {},
      phpactor = {},

      dockerls = {},
      docker_language_server = {},
      yamlls = {},
    },
  },
}
