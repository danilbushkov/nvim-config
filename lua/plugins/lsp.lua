return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      nil_ls = {},
      gopls = {},

      intelephense = {},
      phpactor = {},

      docker_language_server = {},
      yamlls = {},
    },
  },
}
