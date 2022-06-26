-- dogecoin mining tycoon --

local library = loadstring(game.HttpGet(game, "https://raw.githubusercontent.com/x1mv/skidded-ui-lib/main/main.lua"))()

local w1 = library:Window("DCMT | caracal.lua") -- Text


w1:Label("Exchange (Rate 500)")


w1:Button(
    "Exchange (Non-Tween)",
    function()
        LP = game:GetService('Players').LocalPlayer

prev = LP.Character:WaitForChild('HumanoidRootPart').CFrame
LP.Character:WaitForChild('HumanoidRootPart').CFrame = CFrame.new(3, 58, 197)
wait(1)
local args = {
    [1] = "OpenedExchange"
}

game:GetService("ReplicatedStorage").SpecWork.Shared.Network.Exchange:FireServer(unpack(args))
local args = {
    [1] = "Exchange",
    [2] = {
        ["Rate"] = 500
    }
}

game:GetService("ReplicatedStorage").SpecWork.Shared.Network.Exchange:FireServer(unpack(args))
wait(0.6)
LP.Character:WaitForChild('HumanoidRootPart').CFrame = prev 
    end
) -- Text, Callback

w1:Button(
    "Exchange (Tween)",
    function()
		LP = game:GetService('Players').LocalPlayer

prev = LP.Character:WaitForChild('HumanoidRootPart').CFrame
local CFrameEnd = CFrame.new(3, 58, 197) 
local Time = 0.6
local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
tween:Play()
tween.Completed:Wait()

wait(1)
local args = {
    [1] = "OpenedExchange"
}

game:GetService("ReplicatedStorage").SpecWork.Shared.Network.Exchange:FireServer(unpack(args))
local args = {
    [1] = "Exchange",
    [2] = {
        ["Rate"] = 500
    }
}

game:GetService("ReplicatedStorage").SpecWork.Shared.Network.Exchange:FireServer(unpack(args))
wait(0.6)
local CFrameEnd = prev
local Time = 0.6
local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
tween:Play()
tween.Completed:Wait()
 

-- thanks to guy998 on v3rmillion for tweengoto
-- cykahvh
    end
) -- Text, Callback

w1:Label("Plot")

w1:Button(
    "Clear GPUs",
    function()
local args = {
    [1] = "ClearGPUs"
}

game:GetService("ReplicatedStorage").SpecWork.Shared.Network.Placement:InvokeServer(unpack(args))

    end
)

w1:Button(
    "Clear Plot",
    function()
local args = {
    [1] = "ClearLot"
}

game:GetService("ReplicatedStorage").SpecWork.Shared.Network.Placement:InvokeServer(unpack(args))


    end
)


w1:Label("Teleport")


-- this is here so i can see easier


w1:Button(
    "Cooling Shop",
    function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-230.0565, 57.1581, -154.8091, -0.7273, 0, 0.6864, 0, 1, 0, -0.6864, 0, -0.7273) -- cooling
    end
)

w1:Button(
    "Ice GPUs",
    function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-247.7626, 57.1581, -300.4916, 0.8591, 0, 0.5118, 0, 1, 0, -0.5118, 0, 0.8591) -- ice gpu
    end
)

w1:Button(
    "SARK GPUs",
    function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-134.1103, 57.8005, -494.2109, 0.9948, 0, -0.1023, 0, 1, 0, 0.1023, 0, 0.9948) -- sark gpus
    end
)

w1:Button(
    "Desert GPUs",
    function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-321.6394, 57.2859, -704.2053, 0.9742, 0, -0.2255, 0, 1, 0, 0.2255, 0, 0.9742) -- desert gpus
    end
)

w1:Button(
    "Witch GPUs",
    function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-545.4717, 57.2451, -389.3175, 0.7282, 0, -0.6854, 0, 1, 0, 0.6854, 0, 0.7282) -- witch gpus
    end
)

w1:Button(
    "Cooling (Farm)",
    function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-778.9665, 57.3873, -291.2081, -0.9481, 0, -0.3181, 0, 1, 0, 0.3181, 0, -0.9481) -- farm cooling
    end
)

w1:Button(
    "GPUs (Farm)",
    function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-804.385, 104.7639, -462.163, -0.9833, 0, -0.1819, 0, 1, 0, 0.1819, 0, -0.9833) -- farm gpus
    end
)

w1:Button(
    "Volcano GPUs",
    function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-919.2617, 134.1238, -416.186, 0.9581, -0.0228, 0.2855, 0, 0.9968, 0.0794, -0.2864, -0.0761, 0.9551) -- volcano gpus
    end
)

w1:Label("Others")

w1:Slider(
    "WalkSpeed",
    "WS",
    16,
    300,
    function(value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
    end
) -- Text, Flag, Minimum, Maximum, Callback, Default (Optional), Flag Location (Optional)

w1:Slider(
    "JumpPower",
    "JP",
    50,
    300,
    function(value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
    end,
    100
) -- Text, Flag, Minimum, Maximum, Callback, Default (Optional), Flag Location (Optional)

w1:Toggle(
    "Freeze",
    "frz",
    false,
    function(toggled)
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = toggled
    end
) -- Text, Flag, Enabled, Callback, Flag Location (Optional)

w1:Button(
    "Destroy GUI",
    function()
        for i, v in pairs(game.CoreGui:GetChildren()) do
            if v:FindFirstChild("Top") then
                v:Destroy()
            end
        end
    end
) -- Text, Callback

w1:Label("cykahvh") -- Text
