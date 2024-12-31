-- Create the AdminPanel GUI
local AdminPanel = Instance.new("ScreenGui")
local MainFrame = Instance.new("ImageLabel")
local Title = Instance.new("TextLabel")
local Buttons = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")

-- Functions for creating buttons
local function createButton(name, text, position, parent, callback)
    local button = Instance.new("ImageLabel")
    button.Name = name
    button.Parent = parent
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

-- Set properties for AdminPanel
AdminPanel.Name = "AdminPanel"
AdminPanel.Parent = game.CoreGui

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

-- Add Buttons
createButton("AllInf", "Give All Infinite Cash", nil, Buttons, function()
    local amount = 99999999999999
    for _, player in ipairs(game.Players:GetPlayers()) do
        game.ReplicatedStorage.Events.changeValue:InvokeServer(game.ReplicatedStorage.PlayerMoney[player.Name], amount)
    end
end)

createButton("LPInf", "Give Yourself Infinite Cash", nil, Buttons, function()
    local player = game.Players.LocalPlayer
    local amount = 99999999999999
    game.ReplicatedStorage.Events.changeValue:InvokeServer(game.ReplicatedStorage.PlayerMoney[player.Name], amount)
end)

createButton("ROC", "Reset Others Cash", nil, Buttons, function()
    local amount = 0
    local localPlayer = game.Players.LocalPlayer
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player ~= localPlayer then
            game.ReplicatedStorage.Events.changeValue:InvokeServer(game.ReplicatedStorage.PlayerMoney[player.Name], amount)
        end
    end
end)

createButton("Shouts", "Get Infinite Shouts + Crates", nil, Buttons, function()
    local player = game.Players.LocalPlayer
    local remote = game.ReplicatedStorage.Events.changeValue
    local amount = 99999999999999

    -- Infinite Shouts
    remote:InvokeServer(player.Shouts, amount)

    -- Infinite Crates
    for _, crate in ipairs(player.Crates:GetChildren()) do
        remote:InvokeServer(crate, amount)
    end
end)
