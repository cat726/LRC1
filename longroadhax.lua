--cheat by cat726
local UILibrary = loadstring(game:HttpGet("https://pastebin.com/raw/V1ca2q9s"))()
local MainUI = UILibrary.Load("-")
local FirstPage = MainUI.AddPage("Home")
local cPage = MainUI.AddPage("Vehicle")
local sPage = MainUI.AddPage("Guns")
local tPage = MainUI.AddPage("Teleports")
local mPage = MainUI.AddPage("Misc")
_G.dela = false

local function dropoff()
    firetouchinterest(game:GetService("Workspace").DropOff, game.Players.LocalPlayer.Character.HumanoidRootPart , 0)
    firetouchinterest(game:GetService("Workspace").DropOff, game.Players.LocalPlayer.Character.HumanoidRootPart , 1)
end

local function getbox()
    fireclickdetector(game:GetService("Workspace").Box.ClickDetector)
end

local function tppp(plyr)
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local pl2 = plyr
    local humanoid = game.Players.LocalPlayer.Character.Humanoid
    pl.CFrame = game.Players[pl2].Character.HumanoidRootPart.CFrame
end


local FirstLabel = FirstPage.AddLabel("Section 1")



local carButton = FirstPage.AddButton("Car Menu(Cycle)", function()
    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
	if v.Name == 'car spawn' then
		if v:FindFirstChild('ScreenPart') then
			fireclickdetector(v.ScreenPart.ClickDetector)
		end
	end
    end
end)

local ThirdButton = FirstPage.AddButton("Get Money", function()
    getbox()
    dropoff()
end)


local cardelToggle = FirstPage.AddButton("Delete All Cars", function()
    _G.dela = not _G.dela
    while _G.dela == true do
        for i, v in pairs(game.Players:GetPlayers()) do
            local data = tostring(v) .. 'sCar'
            local args = {
            [1] = workspace[data]
            }
            game:GetService("ReplicatedStorage").DeleteCar:FireServer(unpack(args))
        end
        wait(0.1)
    end
end)

local FirstLabel = cPage.AddLabel("Citzen Cars")
local FirstDropdown = cPage.AddDropdown("Spawn Car", {
    "silver",
    "commander"
    }, function(Value)
        local args = {
            [1] = Value
        }
        
        game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args))


end)
local FasdfLabel = cPage.AddLabel("State Troopers")
local FirstDropdown = cPage.AddDropdown("Spawn Car", {
    "Baron",
    "Albany"
    }, function(Value)
        if Value == 'Baron' then
            Value = 'sheriff'
        elseif Value == 'Albany' then
            Value = 'sheriff2'
        end
        local args = {
            [1] = Value
        }
        
        game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args))
end)

local SecondButton = sPage.AddButton("Fire ClickDetectors", function()
   -- fireclickdetector(game:GetService("Workspace").Model.BUYBUTTON.ClickDetector)
   for i,v in pairs(workspace:GetDescendants()) do
        if v:IsA("ClickDetector") then
            fireclickdetector(v)
        end
    end
end)

local secondlabelt1 = tPage.AddLabel("Location Teleports")
local fButton1 = tPage.AddButton("Main Spawn", function()
    local a = CFrame.new(2677, 17, 2925)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = a
end)
local fButton2 = tPage.AddButton("Gun Store / City #1", function()
    local a = CFrame.new(-1569, 18, -185)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = a
end)
local fButton221 = tPage.AddButton("Aberdeen Clinic(EMS)", function()
    local a = CFrame.new(-1241, 17, -157)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = a
end)
local fButton223 = tPage.AddButton("Gas Station #1 / Car Wash", function()
    local a = CFrame.new(-3259, 17, -255)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = a
end)
local fButton221 = tPage.AddButton("Pennyrile State Trooper Station 5", function()
    local a = CFrame.new(-4341, 17, -2787)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = a
end)
local fButton331 = tPage.AddButton("Water Tower #?", function()
    local a = CFrame.new(-7106, 153, -10650)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = a
end)
local fButton3 = tPage.AddButton("City 2", function()
    local a = CFrame.new(-8332, 18, -10667)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = a
end)
local fButton332 = tPage.AddButton("Desert Cabin", function()
    local a = CFrame.new(-19292, 18, -10858)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = a
end)
local fButton4 = tPage.AddButton("Alamo Poilce Department", function()
    local a = CFrame.new(-21783, 19, -10715)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = a
end)
local fButton5 = tPage.AddButton("Motel", function()
    local a = CFrame.new(-25903, 18, -10465)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = a
end)
local fButton6 = tPage.AddButton("Gas Station #2", function()
    local a = CFrame.new(-31891, 66, -10646)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = a
end)

local secondlabelt1 = tPage.AddLabel("Secret Location Teleports")
local fButton7 = tPage.AddButton("End Baseplate ", function()
    local a = CFrame.new(-38527, 64, -10527)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = a
end)
local fButton8 = tPage.AddButton("Gas Station #1 Garage", function()
    local a = CFrame.new(-3377, 17, -287)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = a
end)
local fButton9 = tPage.AddButton("Fossil Oil", function()
    local a = game:GetService("Workspace").GasStation["Toilet_Open"].Part.CFrame
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = a
end)


local aButton1 = mPage.AddButton("Speed Hack", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/shawnjbragdon-0/vmod/main/mini-modules/speedhack.lua", true))()
end)
local aButton2 = mPage.AddButton("Infinitey Yeild", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

