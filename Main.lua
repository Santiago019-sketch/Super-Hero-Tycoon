local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Auto Collect Hub", HidePremium = false, SaveConfig = true})

-- Variables
_G.autoMoney = false
_G.autoCrate = false

-- Main Tab
local MainTab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Auto Collect Money
MainTab:AddToggle({
    Name = "Auto Collect Money",
    Default = false,
    Callback = function(Value)
        _G.autoMoney = Value
        while _G.autoMoney do
            local args = {
                [1] = 11,
                [2] = "collectMoney",
                [3] = game:GetService("Players").LocalPlayer
            }
            
            game:GetService("ReplicatedStorage").ReplicaRemoteEvents.Replica_ReplicaSignal:FireServer(unpack(args))
            wait(0.1) -- Adjust delay as needed
        end
    end
})

-- Auto Collect Crates
MainTab:AddToggle({
    Name = "Auto Collect Crates",
    Default = false,
    Callback = function(Value)
        _G.autoCrate = Value
        while _G.autoCrate do
            local args = {
                [1] = "9d0e9184-22de-4e1a-8117-e6c15a13fdb2"
            }
            
            game:GetService("ReplicatedStorage").SharedPackages._Index:FindFirstChild("sleitnick_net@0.1.0").net:FindFirstChild("RE/claimCrate"):FireServer(unpack(args))
            wait(0.1) -- Adjust delay as needed
        end
    end
})

-- Info Label
MainTab:AddLabel("Press RightShift to Toggle GUI")

-- Notification on Load
OrionLib:MakeNotification({
    Name = "Script Loaded",
    Content = "Auto Collect Hub is ready!",
    Image = "rbxassetid://4483345998",
    Time = 5
})

-- Anti AFK
local VirtualUser = game:GetService('VirtualUser')
game:GetService('Players').LocalPlayer.Idled:connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)
