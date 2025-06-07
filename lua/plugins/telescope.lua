return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>" },
    { "<leader>fr", "<cmd>Telescope resume<cr>" },
    { "<leader>fh", "<cmd>Telescope pickers<cr>" }
  },
  opts = function()
    local layout = require("telescope.actions.layout")
    local actions = require("telescope.actions")
    return {
      defaults = {
        cache_picker = {
          num_pickers = 50,
        },
        mappings = {
          i = {
            ["<C-s>"] = layout.toggle_preview,
            ["<M-n>"] = actions.cycle_history_next,
            ["<M-p>"] = actions.cycle_history_prev
          },
          n = {
            ["<C-s>"] = layout.toggle_preview
          }
        }
      }
    }
  end

}
