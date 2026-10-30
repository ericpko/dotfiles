local hyper = "cmd+ctrl+alt+"

-- Tabs
rex.bind(hyper .. "h", "client.tab.previous")
rex.bind(hyper .. "l", "client.tab.next")
for i = 1, 9 do
  rex.bind(hyper .. i, "client.tab.goto", { index = i })
end

-- Panes
rex.bind(hyper .. "[", "pane.focus_previous")
rex.bind(hyper .. "]", "pane.focus_next")

-- Normal mode: Hyper+Space to enter, i or Escape to leave
rex.mode("nav", { exclusive = true })
rex.bind(hyper .. "space", "client.mode.enter", { name = "nav" })
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
