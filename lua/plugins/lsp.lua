return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {},
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Elixir LSP is managed by elixir-tools.nvim
      },
    },
  },
}
