local library = loadstring(game.HttpGet(game, "https://raw.githubusercontent.com/x1mv/skidded-ui-lib/main/main.lua"))()

local w1 = library:Window("Airsoft 3 | caracal.lua") -- Text
print('made by cykahvh \n ui lib by 0x')

w1:Button(
    "Kill All",
    function()
local children = game:GetService("Players"):GetChildren()
for i = 1, #children do
    local child = children[i]
local args = {
    [1] = child.Character.Humanoid,
    [2] = 136,
    [3] = 0,
    [4] = 0
}

game:GetService("ReplicatedStorage").ACS_Engine.Eventos.Damage:FireServer(unpack(args))
end
end)

w1:Button(
    "Annoy All",
    function()
        for i = 0, 2000 do
        local children = game:GetService("Players"):GetChildren()
for i = 1, #children do
    local child = children[i]
        local args = {
    [1] = child
}

game:GetService("ReplicatedStorage").ACS_Engine.Eventos.Whizz:FireServer(unpack(args))
local args = {
    [1] = child
}

game:GetService("ReplicatedStorage").ACS_Engine.Eventos.Suppression:FireServer(unpack(args))
end
end
end) -- Text, Callback

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
