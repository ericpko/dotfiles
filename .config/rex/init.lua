-- Panes
rex.bind("alt+h", "pane.focus.left")
rex.bind("alt+j", "pane.focus.down")
rex.bind("alt+k", "pane.focus.up")
rex.bind("alt+l", "pane.focus.right")
rex.bind("cmd+[", "pane.focus_previous")
rex.bind("cmd+]", "pane.focus_next")

-- Tabs
rex.bind("cmd+h", "client.tab.previous")
rex.bind("cmd+l", "client.tab.next")

-- Normal mode: Cmd+Escape to enter, i or Escape to leave
rex.mode("nav", { exclusive = true })
rex.bind("cmd+escape", "client.mode.enter", { name = "nav" })
rex.bind("nav/h", "pane.focus.left")
rex.bind("nav/j", "pane.focus.down")
rex.bind("nav/k", "pane.focus.up")
rex.bind("nav/l", "pane.focus.right")
rex.bind("nav/shift+h", "client.tab.previous")
rex.bind("nav/shift+l", "client.tab.next")
for i = 1, 9 do
  rex.bind("nav/" .. i, "client.tab.goto", { index = i })
end
rex.bind("nav/i", "client.mode.exit")
