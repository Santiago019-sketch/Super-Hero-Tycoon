-- Create the AdminPanel GUI
local AdminPanel = Instance.new("ScreenGui")
local MainFrame = Instance.new("ImageLabel")
local Title = Instance.new("TextLabel")
local Buttons = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")

-- Add the GUI to the player's PlayerGui instead of CoreGui
AdminPanel.Name = "AdminPanel"
AdminPanel.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- MainFrame setup
MainFrame.Name = "MainFrame"
MainFrame.Parent = AdminPanel
MainFrame.BackgroundTransparency = 1
MainFrame.Position = UDim2.new(0.4, 0, 0.3, 0)
MainFrame.Size = UDim2.new(0, 360, 0, 300)
MainFrame.Image = "rbxassetid://605740338"
MainFrame.ImageColor3 = Color3.new(0.439216, 0.439216, 0.439216)
MainFrame.ScaleType = Enum.ScaleType.Slice
MainFrame.SliceCenter = Rect.new(24, 24, 216, 216)
MainFrame.Active = true
MainFrame.Selectable = true
MainFrame.Draggable = true

-- Title setup
Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(1, 0, 0.15, 0)
Title.Font = Enum.Font.Cartoon
Title.Text = "Admin Panel v1.0"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextScaled = true
Title.TextWrapped = true

-- Buttons container setup
Buttons.Name = "Buttons"
Buttons.Parent = MainFrame
Buttons.BackgroundTransparency = 1
Buttons.Position = UDim2.new(0, 0, 0.2, 0)
Buttons.Size = UDim2.new(1, 0, 0.8, 0)

-- Add UIListLayout to arrange buttons
UIListLayout.Parent = Buttons
UIListLayout.Padding = UDim.new(0.05, 0)

-- Function to create buttons
local function createButton(name, text, callback)
    local button = Instance.new("ImageLabel")
    button.Name = name
    button.Parent = Buttons
    button.BackgroundTransparency = 1
    button.Size = UDim2.new(0, 348, 0, 36)
    button.Image = "rbxassetid://605740338"
    button.ImageColor3 = Color3.new(0.156863, 0.156863, 0.156863)
    button.ScaleType = Enum.ScaleType.Slice
    button.SliceCenter = Rect.new(24, 24, 216, 216)

    local buttonText = Instance.new("TextButton")
    buttonText.Name = name .. "Text"
    buttonText.Parent = button
    buttonText.BackgroundTransparency = 1
    buttonText.Size = UDim2.new(1, 0, 1, 0)
    buttonText.Font = Enum.Font.Cartoon
    buttonText.Text = text
    buttonText.TextColor3 = Color3.new(1, 1, 1)
    buttonText.TextScaled = true
    buttonText.TextWrapped = true
    buttonText.MouseButton1Click:Connect(callback)

    return button
end

-- Button Actions
createButton("AllInf", "Give All Infinite Cash", function()
    local amount = 99999999999999
    for _, player in ipairs(game.Players:GetPlayers()) do
        local playerMoney = game.ReplicatedStorage:FindFirstChild("PlayerMoney")
        if playerMoney and playerMoney:FindFirstChild(player.Name) then
            game.ReplicatedStorage.Events.changeValue:InvokeServer(playerMoney[player.Name], amount)
        end
    end
end)

createButton("LPInf", "Give Yourself Infinite Cash", function()
    local player = game.Players.LocalPlayer
    local playerMoney = game.ReplicatedStorage:FindFirstChild("PlayerMoney")
    if playerMoney and playerMoney:FindFirstChild(player.Name) then
        game.ReplicatedStorage.Events.changeValue:InvokeServer(playerMoney[player.Name], 99999999999999)
    end
end)

createButton("ROC", "Reset Others Cash", function()
    local amount = 0
    local localPlayer = game.Players.LocalPlayer
    local playerMoney = game.ReplicatedStorage:FindFirstChild("PlayerMoney")
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player ~= localPlayer and playerMoney and playerMoney:FindFirstChild(player.Name) then
            game.ReplicatedStorage.Events.changeValue:InvokeServer(playerMoney[player.Name], amount)
        end
    end
end)

createButton("Shouts", "Get Infinite Shouts + Crates", function()
    local player = game.Players.LocalPlayer
    local shouts = player:FindFirstChild("Shouts")
    if shouts then
        game.ReplicatedStorage.Events.changeValue:InvokeServer(shouts, 99999999999999)
    end

    local crates = player:FindFirstChild("Crates")
    if crates then
        for _, crate in ipairs(crates:GetChildren()) do
            game.ReplicatedStorage.Events.changeValue:InvokeServer(crate, 99999999999999)
        end
    end
end)
