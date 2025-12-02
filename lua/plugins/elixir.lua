return {
  -- Expert LSP for Elixir (using built-in LSP config for nvim 0.11.5+)
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      -- Disable other Elixir LSP servers
      opts.servers = opts.servers or {}
      opts.servers.lexical = false
      opts.servers.nextls = false

      -- Configure Expert using built-in LSP
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "elixir", "eelixir", "heex" },
        callback = function()
          vim.lsp.config('expert', {
            cmd = { '/Users/pleuvens/expert/apps/expert/burrito_out/expert_darwin_arm64', '--stdio' },
            root_markers = { 'mix.exs', '.git' },
            filetypes = { 'elixir', 'eelixir', 'heex' },
          })
          vim.lsp.enable('expert')
        end,
        once = true,
      })

      return opts
    end,
  },

  -- Mix format on save
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        elixir = { "mix" },
        eelixir = { "mix" },
        heex = { "mix" },
      },
      formatters = {
        mix = {
          command = "mix",
          args = { "format", "-" },
          stdin = true,
        },
      },
    },
  },
}
