return {
  { "MagicDuck/grug-far.nvim", enabled = false },
  { "folke/persistence.nvim", enabled = false },
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = { enabled = false },
    },
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        html = { "prettier" },
        markdown = { "prettier" },
      },
    },
  },
}
