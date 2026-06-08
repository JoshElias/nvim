local biome_filetypes = {
  "javascript",
  "javascriptreact",
  "typescript",
  "typescriptreact",
}

return {
  {
    "mason-org/mason.nvim",
    opts = { ensure_installed = { "biome" } },
  },
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft = opts.formatters_by_ft or {}

      for _, filetype in ipairs(biome_filetypes) do
        opts.formatters_by_ft[filetype] = { "biome" }
      end
    end,
  },
}
