local Players = game:GetService('Players')
local LocalPlayer = Players.LocalPlayer

return function()
  repeat task.wait() until LocalPlayer.Character
  return LocalPlayer.Character
end