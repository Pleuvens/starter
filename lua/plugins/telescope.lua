return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("fzf-lua").setup({
      winopts = {
        height = 0.85,
        width = 0.80,
        preview = {
          default = "bat",
          horizontal = "right:50%",
        },
      },
      files = {
        prompt = "Files> ",
        git_icons = true,
        file_icons = true,
        color_icons = true,
      },
      grep = {
        prompt = "Grep> ",
        input_prompt = "Grep For> ",
        rg_opts = "--column --line-number --no-heading --color=always --smart-case --max-columns=4096",
      },
    })
  end,
}
