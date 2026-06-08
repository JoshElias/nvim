local vue_filetypes = { "vue" }

local vue_typescript_plugin = {
  name = "@vue/typescript-plugin",
  location = LazyVim.get_pkg_path("vue-language-server", "/node_modules/@vue/language-server"),
  languages = vue_filetypes,
  configNamespace = "typescript",
  enableForWorkspaceTypeScriptVersions = true,
}

return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "vue", "css" } },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vue_ls = {},
        vtsls = {
          enabled = true,
          filetypes = vue_filetypes,
          settings = {
            vtsls = {
              tsserver = {
                globalPlugins = { vue_typescript_plugin },
              },
            },
          },
        },
      },
    },
  },
}
