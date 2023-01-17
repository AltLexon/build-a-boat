local Workspace = game:GetService("Workspace")
local TweenService = game:GetService('TweenService')
local Character = require(script.Parent.character)

return function()

local currentTween

local function Farm()
  local function tween(hrp, position, time)
    local part = Instance.new('CFrameValue', Character())
    part.Value = Character():GetPrimaryPartCFrame()
    part:GetPropertyChangedSignal('Value'):Connect(function()
      Character():SetPrimaryPartCFrame(part.Value)
    end)
    currentTween = TweenService:Create(part, TweenInfo.new(time, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Value = position})
    currentTween:Play()
  end
  local positions = {
    [1] = {
      CFrame = CFrame.new(-100.5656, 100, 1330.09),
      Time = 1
    },
    [2] = {
      CFrame = CFrame.new(-100.5656, 100, 8299.09),
      Time = 20
    },
    ['End'] = {
      CFrame = CFrame.new(-55.7065, -356.74, 9492.36)
    }
  }

  local stagesPath = Workspace.BoatStages
  if stagesPath:FindFirstChild('OtherStages') ~= nil then
    stagesPath.OtherStages:Destroy()
  end

  -- Tween
  for i, v in next, positions do
    if type(i) == 'number' then
      tween(Character().HumanoidRootPart, v.CFrame, v.Time)
      task.wait(v.Time)
    else
      task.wait(0.1)
      Character().HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0, 2, 0)
    end
  end
end

-- Automatize --

for x = 1, 10 do
  Farm()
  task.wait(35)
end

end