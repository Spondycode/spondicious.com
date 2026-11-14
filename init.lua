-- Rex configuration file
-- Documentation: https://www.superlogical.com/rex/docs/customize/config
-- Validate with: rex config check
-- Reload with:   rex config reload

-- Example keybindings:
rex.bind("cmd+d", "pane.split", { direction = "right" })
-- rex.bind("cmd+shift+d", "pane.split", { direction = "down" })
--

-- Custom action to open htop in a new tab:
rex.action{
  name  = "open_htop",
  title = "Open htop Window",
  run   = function()
    rex.session.new_window{
      title  = "htop",
      layout = rex.layout.block{
        flavor  = "com.superlogical.terminal.shell",
        options = { command = { "htop" } },
      },
    }
  end,
}

rex.bind("cmd+shift+h", "open_htop")

-- Toggle tabs between top bar and left sidebar (default is also cmd+shift+s):
rex.bind("cmd+shift+l", "client.tab_style.toggle")

rex.bind("ctrl+alt+left", "pane.resize", { direction = "left" })
rex.bind("ctrl+alt+shift+left", "pane.resize", {
  direction = "left",
  amount = 15,
})

rex.bind("ctrl+alt+right", "pane.resize", { direction = "right" })
rex.bind("ctrl+alt+shift+right", "pane.resize", {
  direction = "right",
  amount = 15,
})
