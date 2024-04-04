-- This code has been taken from https://pastebin.com/2Kr9CXAw and customized to be better

local player = game.Players.LocalPlayer -- Gets the LocalPlayer
local mouse = player:GetMouse() -- Gets the player's mouse
local title = Instance.new("TextLabel")

mouse.KeyDown:connect(function(key) -- Gets mouse, then gets the keyboard
    if key:lower() == "e" or key:upper() == "E" then 
        print("anti lock enabled")
        getgenv().Sky = true --disable or enable the antilock
        getgenv().SkyAmount = 90 --how far it should be

        game:GetService("RunService").heartbeat:Connect(function()
            if getgenv().Sky ~= false then 
            local vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
            game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,      getgenv().SkyAmount,0) 
            game:GetService("RunService").RenderStepped:Wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = vel
            end 
        end)
    end
end)

mouse.KeyDown:connect(function(key) -- Gets mouse, then gets the keyboard
    if key:lower() == "q" or key:upper() == "Q" then 
        print("anti lock disabled")
        getgenv().Sky = false --disable or enable the antilock
        getgenv().SkyAmount = 90 --how far it should be

        game:GetService("RunService").heartbeat:Connect(function()
            if getgenv().Sky ~= false then 
            local vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
            game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,      getgenv().SkyAmount,0) 
            game:GetService("RunService").RenderStepped:Wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = vel
            end 
        end)
    end
end)
