--cheat by cat726
local UILibrary = loadstring(game:HttpGet("https://pastebin.com/raw/V1ca2q9s"))()

local MainUI = UILibrary.Load("-")
local FirstPage = MainUI.AddPage("Home")
local sPage = MainUI.AddPage("Guns")
local tPage = MainUI.AddPage("Misc")

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
local ThirdButton = FirstPage.AddButton("Get Money", function()
    getbox()
    dropoff()
end)


local SecondButton = sPage.AddButton("Fire ClickDetectors", function()
   -- fireclickdetector(game:GetService("Workspace").Model.BUYBUTTON.ClickDetector)
   for i,v in pairs(workspace:GetDescendants()) do
        if v:IsA("ClickDetector") then
            fireclickdetector(v)
        end
    end
end)
local fButton = tPage.AddButton("Speed Hack", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/shawnjbragdon-0/vmod/main/mini-modules/speedhack.lua", true))()
end)

