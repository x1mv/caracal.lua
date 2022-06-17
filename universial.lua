local library = loadstring(game.HttpGet(game, "https://raw.githubusercontent.com/x1mv/skidded-ui-lib/main/main.lua"))()

local w1 = library:Window("Universial") -- Text
print('\n made by cykahvh  \n ui lib by 0x')

w1:Label("Scripts")

w1:Button(
    "Fate's Admin",
    function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();
end)

w1:Button(
    "Fate's Admin",
    function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();
end)

w1:Button(
    "Infinite Yield",
    function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))();
end)

w1:Label("Others")

w1:Button(
    "Kick Yourself",
    function()
game:GetService("Players").LocalPlayer:Kick("Goodbye my nigger back to the lobby")
end)

w1:Slider(
    "WalkSpeed",
    "WS",
    16,
    300,
    function(value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
    end
) -- Text, Flag, Minimum, Maximum, Callback, Default (Optional), Flag Location (Optional)


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
