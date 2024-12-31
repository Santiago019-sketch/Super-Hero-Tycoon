local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Auto Collect Hub", HidePremium = false, SaveConfig = true})

-- Variables
_G.autoCollectMoney = false

-- Main Tab
local MainTab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Auto Collect Money Toggle
MainTab:AddToggle({
    Name = "Auto Collect Money",
    Default = false,
    Callback = function(Value)
        _G.autoCollectMoney = Value
        if Value then
            -- Start auto collection
            spawn(function()
                while _G.autoCollectMoney do
                    for i = 1, 10 do
                        local args = {
                            [1] = i, -- Money ID
                            [2] = "collectMoney", -- Action
                            [3] = game:GetService("Players").LocalPlayer -- Player reference
                        }

                        local remoteEvent = game:GetService("ReplicatedStorage"):WaitForChild("ReplicaRemoteEvents"):WaitForChild("Replica_ReplicaSignal")
                        remoteEvent:FireServer(unpack(args))
                        wait(0.1) -- Adjust delay as needed
                    end
                end
            end)
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
