return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  opts = function()
    local dashboard = require("alpha.themes.dashboard")
    -- https://patorjk.com/software/taag/#p=display&f=ANSI%20Shadow&t=dundrevim
    local logo = [[
      ██████╗ ██╗   ██╗███╗   ██╗██████╗ ██████╗ ███████╗██╗   ██╗██╗███╗   ███╗
      ██╔══██╗██║   ██║████╗  ██║██╔══██╗██╔══██╗██╔════╝██║   ██║██║████╗ ████║
      ██║  ██║██║   ██║██╔██╗ ██║██║  ██║██████╔╝█████╗  ██║   ██║██║██╔████╔██║
      ██║  ██║██║   ██║██║╚██╗██║██║  ██║██╔══██╗██╔══╝  ╚██╗ ██╔╝██║██║╚██╔╝██║
      ██████╔╝╚██████╔╝██║ ╚████║██████╔╝██║  ██║███████╗ ╚████╔╝ ██║██║ ╚═╝ ██║
      ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚═╝  ╚═╝╚══════╝  ╚═══╝  ╚═╝╚═╝     ╚═╝
      ]]
    dashboard.section.header.val = vim.split(logo, "\n")
    return dashboard
  end,
}
