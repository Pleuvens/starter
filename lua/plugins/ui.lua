return {
  {
    "folke/noice.nvim",
    opts = {
      cmdline = {
        view = "cmdline", -- use classic cmdline at bottom
      },
      messages = {
        enabled = true,
        view = "notify", -- show messages in notify popup
        view_error = "notify", -- show errors in notify
        view_warn = "notify", -- show warnings in notify
      },
      presets = {
        bottom_search = true, -- use classic bottom search
        command_palette = false, -- don't use command palette
        long_message_to_split = true, -- long messages go to split
      },
    },
  },
}
