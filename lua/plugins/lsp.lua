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
        -- Disable other Elixir LSP servers
        expert = { enabled = false },
        lexical = { enabled = false },
        nextls = { enabled = false },
      },
    },
  },
}
