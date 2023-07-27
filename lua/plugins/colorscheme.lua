return {
  -- add monokai-pro
  {
    "loctvl842/monokai-pro.nvim",
    opts = {
      transparent_background = true,
      filter = "pro", -- classic | octagon | pro | machine | ristretto | spectrum
      background_clear = {
        "toggleterm",
        "telescope",
        "which-key",
        "renamer",
        "notify",
        "neo-tree",
        "which-key",
      },
    },
  },

  -- configure LazyVim to load monokai-pro
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "monokai-pro",
    },
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#000000",
    },
  },
}
