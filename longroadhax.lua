--cheat by cat726
local UILibrary = loadstring(game:HttpGet("https://pastebin.com/raw/V1ca2q9s"))()
local MainUI = UILibrary.Load("-")
local FirstPage = MainUI.AddPage("Home")
local sPage = MainUI.AddPage("Guns")
local tPage = MainUI.AddPage("Teleports")
local mPage = MainUI.AddPage("Misc")

local function dropoff()
    firetouchinterest(game:GetService("Workspace").DropOff, game.Players.LocalPlayer.Character.HumanoidRootPart , 0)
    firetouchinterest(game:GetService("Workspace").DropOff, game.Players.LocalPlayer.Character.HumanoidRootPart , 1)
end

local function getbox()
    fireclickdetector(game:GetService("Workspace").Box.ClickDetector)
end



local FirstLabel = FirstPage.AddLabel("Section 1")
local FirstButton = FirstPage.AddButton("Spawn Car(Commmander)", function()
local args = {
    [1] = "commander"
}

game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args))
end)

local SecondButton = FirstPage.AddButton("Spawn Car(Silver)", function()
local args = {
    [1] = "silver"
}

game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args))

end)
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

_G.toggle1 = false
local FirstToggle = FirstPage.AddToggle("Tree Collision", true, function(Value)
    _G.toggle1 = not _G.toggle1
    if _G.toggle1 == true then
        for i,v in pairs(workspace:GetDescendants()) do
            if v.Parent.Name == 'Tree' then
                v.CanCollide = false
            elseif v.Parent.Name == 'Pine Tree Wide' then
                v.CanCollide = false
            elseif v.Parent.Name == 'Pine Tree' then
                v.CanCollide = false
            elseif v.Parent.Name == 'SwampTrees' then
                v.CanCollide = false
            end
        end
    else
        for i,v in pairs(workspace:GetDescendants()) do
            if v.Parent.Name == 'Tree' then
                v.CanCollide = true
            elseif v.Parent.Name == 'Pine Tree Wide' then
                v.CanCollide = true
            elseif v.Parent.Name == 'Pine Tree' then
                v.CanCollide = true
            elseif v.Parent.Name == 'SwampTrees' then
                v.CanCollide = true
            end
        end
    end
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


local aButton1 = mPage.AddButton("Speed Hack", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/shawnjbragdon-0/vmod/main/mini-modules/speedhack.lua", true))()
end)




