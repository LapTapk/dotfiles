return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
        filters = {
            git_ignored = false
        },
        view = {
            side = "right"
        },
        actions = {
            change_dir = {
                enable = true,
                global = true,
            }
        },
        update_focused_file = {
            enable = true,
            update_root = true
        }
    }
  end,
}
