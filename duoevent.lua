-- hello
-- hello

local GN = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
if log then do
function webhook(TITLE, DESC)
   syn.request({
       Url = "https://discord.com/api/webhooks/987424436250628176/9r8Uga_D9MPoHk2nZqL1Wzut_LVlSqjoPZVzfYaTnf19lQOBMDOTxco_dE1c7YZVnwmm",
       Method = "POST",
       Headers = {
           ["Content-Type"] = "application/json"
       },
       Body = game:GetService("HttpService"):JSONEncode({
           embeds = {{
               title =  tostring(TITLE),
               description = tostring(DESC)
           }}
       })
   })
end

webhook("player: ".. game.Players.LocalPlayer.name, "joined game: ".. GN)
end
else
    print'Logging not enabled'
end
        
local library = loadstring(game.HttpGet(game, "https://raw.githubusercontent.com/x1mv/skidded-ui-lib/main/main.lua"))()

local w1 = library:Window("Duolingo | caracal.lua") -- Text

w1:Label("Unlock")

w1:Button(
    "Unlock All",
    function()
    local args = {
    [1] = "addCoin",
    [2] = 5000000000
}

game:GetService("ReplicatedStorage").CoinRemote:FireServer(unpack(args))

local args = {
    [1] = "BodySuit"
}

game:GetService("ReplicatedStorage").MerchBuyEvent:FireServer(unpack(args))

local args = {
    [1] = "Hat"
}

game:GetService("ReplicatedStorage").MerchBuyEvent:FireServer(unpack(args))
print('Unlocked all!')
    end
) -- Text, Callback

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
