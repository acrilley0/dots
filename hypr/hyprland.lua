hl.monitor({
  output = "DP-1",
  mode = "2560x1440@240",
  position = "0x0",
  scale = "1",
})

hl.on("hyprland.start", function()
  hl.exec_cmd("waybar")
  hl.exec_cmd("awww-daemon & awww img /home/acrilley/bgs/japanese_pedestrian_street.png")
  hl.exec_cmd("hyprctl setcursor Bibata-Modern-Classic 20")
end)

local mod = "SUPER"
local terminal = "kitty"
local browser = "chromium"

for i = 1, 10 do
  local key = i % 10  -- maps 10 → key 0
  hl.bind(mod .. " + " .. key,         hl.dsp.focus({ workspace = i }))
  hl.bind(mod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

hl.bind(mod .. " + T", hl.dsp.exec_cmd(terminal))
hl.bind(mod .. " + B", hl.dsp.exec_cmd(browser))
hl.bind(mod .. " + M", hl.dsp.exec_cmd("spotify-launcher"))
hl.bind(mod .. " + W", hl.dsp.window.close())

hl.bind(mod .. " + H", hl.dsp.focus({ direction = "l" }))
hl.bind(mod .. " + L", hl.dsp.focus({ direction = "r" }))
hl.bind(mod .. " + K", hl.dsp.focus({ direction = "u" }))
hl.bind(mod .. " + J", hl.dsp.focus({ direction = "d" }))

hl.layer_rule({
  name = "waybar",
  match = { namespace = "waybar" },
  blur = true,
  ignore_alpha = 0.1,
})

hl.config({
  general = {
    border_size = 2,
    col = {
      active_border   = { colors = {"rgba(33ccffee)", "rgba(00ff99ee)"}, angle = 45 },
      inactive_border = "rgba(595959aa)",
    },
  },
  input = {
    repeat_rate = 50,
    repeat_delay = 300,
  },
  decoration = {
    rounding = 10,
  },
})
