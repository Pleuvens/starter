return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "lexical",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Disable conflicting LSP servers (using lexical instead)
        nextls = false,
        expert = true,
        -- lexical is configured via elixir.lua
      },
    },
  },
}
