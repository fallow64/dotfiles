return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  config = function()
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_by_name = { ".git" },
        },
      },
      window = {
        mappings = {
          ["<space>"] = {
            "open",
          },
        },
      },
    })
  end,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
}
