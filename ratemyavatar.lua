

local nawh_table = {
    "9835255720",
    "9835255646",
    "9835255659",
    "9835255657",
    "9835255675",
    "9835255686",
    "9835255688",
    "9835255685",
    "9835255683"
}

local yippee_table = {
    "9834224327",
    "9834224367",
    "9834224378",
    "9834224390",
    "9834224358",
    "9834224395",
    "9834224420",
    "9834224394",
    "9834224333",
    "9834224348",
    "9834224386",
    "9834224368",
    "9834224407"
}

local grove_table = {
    "9933564327",
    "9933565137",
    "9933565918",
    "9933566571",
    "9933567485",
    "9933883597",
    "9933884359",
    "9933885083",
    "9933885607",
    "9933886200",
    "9933886797",
    "9933563326"
}

local figglebottom_table = {
    "9936824901",
    "9936825717",
    "9936826312",
    "9936826940",
    "9936827747",
    "9936829408",
    "9936830059",
    "9936831361",
    "9936832837",
    "9936842237",
    "9936843080"
}

local BLANK TABLE = {
    "",
    ""
}

local BLANK TABLE = {
    "",
    ""
}

local BLANK TABLE = {
    "",
    ""
}

local BLANK TABLE = {
    "",
    ""
}

local BLANK TABLE = {
    "",
    ""
}

local BLANK TABLE = {
    "",
    ""
}

local turip_table = {
    "9936767374",
    "9936776576"
}

local BLANK TABLE = {
    "",
    ""
}

local fuck_table = {
    "3170108676",
    "2069817939",
    "419503640",
    "26989108"
}

local stupid_cat_table = {

    "9835462423",

    "9835462430",

    "9835462441",

    "9835462438",

    "9835462440",

    "9835462448",

    "9835462445",

    "9835462435"
}

local args = {
    [1] = "Update",
    [2] = {
        ["DescriptionText"] = "Welcome to caracal.lua for: Rate My Avatar!",
        ["ImageId"] = 7103784562
    }
}

game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(args))

local library = loadstring(game.HttpGet(game, "https://raw.githubusercontent.com/x1mv/skidded-ui-lib/main/main.lua"))()

local w1 = library:Window("Rate My Avatar | caracal.lua") -- Text
print('\n made by cykahvh  \n ui lib by 0x')

w1:Label("Animations")

w1:Button(
    "figglebottom",
    function()
_G.loop = true

while _G.loop do
for i, v in pairs(figglebottom_table) do
    wait(0.09)
    local args = {
    [1] = "Update",
    [2] = {
        ["DescriptionText"] = "figglebottom",
        ["ImageId"] = v
    }
}

game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(args))
end
end
end)


w1:Button(
    "turip",
    function()
_G.loop = true

while _G.loop do
for i, v in pairs(turip_table) do
    wait(0.9)
    local args = {
    [1] = "Update",
    [2] = {
        ["DescriptionText"] = "Turip ip ip ip, ip ip ip tsha ik",
        ["ImageId"] = v
    }
}

game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(args))
end
end
end)

w1:Button(
    "grove street, home",
    function()
_G.loop = true

while _G.loop do
for i, v in pairs(grove_table) do
    wait(0.07)
    local args = {
    [1] = "Update",
    [2] = {
        ["DescriptionText"] = "grove street, home.",
        ["ImageId"] = v
    }
}

game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(args))
end
end
end)

w1:Button(
    "yippee",
    function()
_G.loop = true

while _G.loop do
for i, v in pairs(yippee_table) do
    wait(0.07)
    local args = {
    [1] = "Update",
    [2] = {
        ["DescriptionText"] = "yippeeeeee",
        ["ImageId"] = v
    }
}

game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(args))
end
end
end)

w1:Button(
    "oh nawh",
    function()
_G.loop = true

while _G.loop do
for i, v in pairs(nawh_table) do
    wait(0.07)
    local args = {
    [1] = "Update",
    [2] = {
        ["DescriptionText"] = "oh nahh bruh fr? oh naww bruh bruh fr",
        ["ImageId"] = v
    }
}

game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(args))
end
end
end)


w1:Button(
    "stupid cat",
    function()
_G.loop = true

while _G.loop do
for i, v in pairs(stupid_cat_table) do
    wait(0.06)
    local args = {
    [1] = "Update",
    [2] = {
        ["DescriptionText"] = "Stupid cat think it water but no BOOM HAHAAH",
        ["ImageId"] = v
    }
}

game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(args))
end
end
end)

w1:Label("Swears")

w1:Button(
    "fuck",
    function()
_G.loop = true

while _G.loop do
for i, v in pairs(fuck_table) do
    wait(0.7)
    local args = {
    [1] = "Update",
    [2] = {
        ["DescriptionText"] = "VERY BAD SWAR WORD!!",
        ["ImageId"] = v
    }
}

game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(args))
end
end
end)


w1:Label("Stop")

w1:Button(
    "Stop",
    function()
_G.loop = false
end) -- Text, Callback

w1:Button(
    "Abandon Booth",
    function()
        local args = {
    [1] = "Abandon"
}

game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(args))
end)

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
