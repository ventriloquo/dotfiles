return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function ()
      require("nvim-tree").setup({
          view = {
            width = 25,
          },
--        renderer = {
--          icons = {
--            show = {
--              file = false,
--              folder = false,
--              folder_arrow = false,
--              git = false,
--              modified = false,
--              hidden = false,
--              diagnostics = false,
--              bookmarks = false,
--            }
--          }
--        }
      })
    end
  }
}

