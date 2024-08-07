local Tab = Window:CreateTab("Teleport, etc.")
local Section = Tab:CreateSection("Teleport")

local mouse = game.Players.LocalPlayer:GetMouse()
local connection

local function onMouseClick()
    if not connection then
        connection = mouse.Button1Click:Connect(function()
            if not Toggle:GetValue() then return end  -- Check if toggle is off
            local targetPosition = mouse.Hit.Position
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
            
            if humanoidRootPart then
                humanoidRootPart.CFrame = CFrame.new(targetPosition)
            end
        end)
    end
end
