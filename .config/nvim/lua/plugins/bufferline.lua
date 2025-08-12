return {
  "akinsho/bufferline.nvim",
  dependencies = "tiagovla/scope.nvim",
  config = function ()
    require("bufferline").setup({
      options = {
        numbers = "none",
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            separator = true
          }
        }
      }
    })
  end
}
