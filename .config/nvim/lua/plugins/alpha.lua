return {
  "goolord/alpha-nvim",
  config = function()
    local theta = require("alpha.themes.theta")
    theta.file_icons.enabled = false
    require("alpha").setup(
      theta.config
    )
  end
}
