return {
  {
    "folke/snacks.nvim",
    opts = {
      explorer = { enabled = false },
      picker = {
        sources = {
          -- Show everything by default and explicitly hide any noise
          -- I do this because I often want to search for local dotfiles
          files = {
            hidden = true,
            ignored = true,
            exclude = {
              "node_modules",
              "dist",
              ".git",
              "build",
              "coverage",
              ".cache",
            },
          },
        },
      },
    },
  },
}
