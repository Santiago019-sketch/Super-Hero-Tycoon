local AdminPanel = Instance.new("ScreenGui")
local MainFrame = Instance.new("ImageLabel")
local Title = Instance.new("TextLabel")
local Buttons = Instance.new("Frame")
local Button = Instance.new("ImageLabel")
local AllInf = Instance.new("TextButton")
local Button_2 = Instance.new("ImageLabel")
local LPInf = Instance.new("TextButton")
local Button_3 = Instance.new("ImageLabel")
local ROC = Instance.new("TextButton")
local Button_4 = Instance.new("ImageLabel")
local Shouts = Instance.new("TextButton")
local UIListLayout = Instance.new("UIListLayout")

AdminPanel.Name = "AdminPanel"
AdminPanel.Parent = game.CoreGui

MainFrame.Name = "MainFrame"
MainFrame.Parent = AdminPanel
MainFrame.BackgroundColor3 = Color3.new(1, 1, 1)
MainFrame.BackgroundTransparency = 1
MainFrame.Position = UDim2.new(0.399785638, 0, 0.342303753, 0)
MainFrame.Size = UDim2.new(0, 353, 0, 293)
MainFrame.Image = "rbxassetid://605740338"
MainFrame.ImageColor3 = Color3.new(0.439216, 0.439216, 0.439216)
MainFrame.ScaleType = Enum.ScaleType.Slice
MainFrame.SliceCenter = Rect.new(24, 24, 216, 216)
MainFrame.Active = true
MainFrame.Selectable = true
MainFrame.Draggable = true

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(0, 358, 0, 45)
Title.Font = Enum.Font.Cartoon
Title.Text = "Superhero-Fucker 1.0 By RTK"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextScaled = true
Title.TextSize = 14
Title.TextWrapped = true

Buttons.Name = "Buttons"
Buttons.Parent = MainFrame
Buttons.BackgroundColor3 = Color3.new(1, 1, 1)
Buttons.BackgroundTransparency = 1
Buttons.Position = UDim2.new(0.00546789635, 0, 0.152748525, 0)
Buttons.Size = UDim2.new(0, 353, 0, 192)

Button.Name = "Button"
Button.Parent = Buttons
Button.BackgroundColor3 = Color3.new(0.419608, 0.419608, 0.419608)
Button.BackgroundTransparency = 1
Button.Position = UDim2.new(0.0139664803, 0, 0.195937797, 0)
Button.Size = UDim2.new(0, 348, 0, 36)
Button.Image = "rbxassetid://605740338"
Button.ImageColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Button.ScaleType = Enum.ScaleType.Slice
Button.SliceCenter = Rect.new(24, 24, 216, 216)

AllInf.Name = "AllInf"
AllInf.Parent = Button
AllInf.BackgroundColor3 = Color3.new(1, 1, 1)
AllInf.BackgroundTransparency = 1
AllInf.Size = UDim2.new(0, 348, 0, 36)
AllInf.Font = Enum.Font.Cartoon
AllInf.Text = "Give all infinite cash"
AllInf.TextColor3 = Color3.new(1, 1, 1)
AllInf.TextScaled = true
AllInf.TextSize = 14
AllInf.TextWrapped = true
AllInf.MouseButton1Click:Connect(function()
local amount = 99999999999999

for i,v in pairs(game.Players:GetPlayers()) do
local plr = v
game.ReplicatedStorage.Events.changeValue:InvokeServer(game.ReplicatedStorage.PlayerMoney[plr.Name],amount)
end

end)

Button_2.Name = "Button"
Button_2.Parent = Buttons
Button_2.BackgroundColor3 = Color3.new(0.419608, 0.419608, 0.419608)
Button_2.BackgroundTransparency = 1
Button_2.Position = UDim2.new(0.0139664803, 0, 0.373242766, 0)
Button_2.Size = UDim2.new(0, 348, 0, 36)
Button_2.Image = "rbxassetid://605740338"
Button_2.ImageColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Button_2.ScaleType = Enum.ScaleType.Slice
Button_2.SliceCenter = Rect.new(24, 24, 216, 216)

LPInf.Name = "LPInf"
LPInf.Parent = Button_2
LPInf.BackgroundColor3 = Color3.new(1, 1, 1)
LPInf.BackgroundTransparency = 1
LPInf.Size = UDim2.new(0, 348, 0, 36)
LPInf.Font = Enum.Font.Cartoon
LPInf.Text = "Give yourself infinite cash"
LPInf.TextColor3 = Color3.new(1, 1, 1)
LPInf.TextScaled = true
LPInf.TextSize = 14
LPInf.TextWrapped = true
LPInf.MouseButton1Click:Connect(function()
local plr = game.Players.LocalPlayer
local amount = 99999999999999
game.ReplicatedStorage.Events.changeValue:InvokeServer(game.ReplicatedStorage.PlayerMoney[plr.Name],amount)
end)

Button_3.Name = "Button"
Button_3.Parent = Buttons
Button_3.BackgroundColor3 = Color3.new(0.419608, 0.419608, 0.419608)
Button_3.BackgroundTransparency = 1
Button_3.Position = UDim2.new(0.0139664803, 0, 0.539909482, 0)
Button_3.Size = UDim2.new(0, 348, 0, 36)
Button_3.Image = "rbxassetid://605740338"
Button_3.ImageColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Button_3.ScaleType = Enum.ScaleType.Slice
Button_3.SliceCenter = Rect.new(24, 24, 216, 216)

ROC.Name = "ROC"
ROC.Parent = Button_3
ROC.BackgroundColor3 = Color3.new(1, 1, 1)
ROC.BackgroundTransparency = 1
ROC.Size = UDim2.new(0, 348, 0, 36)
ROC.Font = Enum.Font.Cartoon
ROC.Text = "Reset Others Cash"
ROC.TextColor3 = Color3.new(1, 1, 1)
ROC.TextScaled = true
ROC.TextSize = 14
ROC.TextWrapped = true
ROC.MouseButton1Click:Connect(function()
--local amount = 99999999999999

local amount = 0

for i,v in pairs(game.Players:GetPlayers()) do
local plr = v
local LP = game.Players.LocalPlayer

if plr.Name == LP.Name then
else
game.ReplicatedStorage.Events.changeValue:InvokeServer(game.ReplicatedStorage.PlayerMoney[plr.Name],amount) 
end
end


end)

Button_4.Name = "Button"
Button_4.Parent = Buttons
Button_4.BackgroundColor3 = Color3.new(0.419608, 0.419608, 0.419608)
Button_4.BackgroundTransparency = 1
Button_4.Position = UDim2.new(0.0139664803, 0, 0.699483991, 0)
Button_4.Size = UDim2.new(0, 348, 0, 36)
Button_4.Image = "rbxassetid://605740338"
Button_4.ImageColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Button_4.ScaleType = Enum.ScaleType.Slice
Button_4.SliceCenter = Rect.new(24, 24, 216, 216)

Shouts.Name = "Shouts"
Shouts.Parent = Button_4
Shouts.BackgroundColor3 = Color3.new(1, 1, 1)
Shouts.BackgroundTransparency = 1
Shouts.Position = UDim2.new(0.014367817, 0, 0, 0)
Shouts.Size = UDim2.new(0, 348, 0, 36)
Shouts.Font = Enum.Font.Cartoon
Shouts.Text = "Get Infinite Shouts + Crates"
Shouts.TextColor3 = Color3.new(1, 1, 1)
Shouts.TextScaled = true
Shouts.TextSize = 14
Shouts.TextWrapped = true
Shouts.MouseButton1Click:Connect(function()
local remote = game.ReplicatedStorage.Events.changeValue
local amount = 99999999999999999

remote:InvokeServer(game.Players.LocalPlayer.Shouts,amount)

local remotee = game.ReplicatedStorage.Events.changeValue
local amountt = 9999999999999999

for i,v in pairs(game.Players.LocalPlayer.Crates:GetChildren())do
remotee:InvokeServer(v,amountt)
end
end)

UIListLayout.Parent = Buttons
UIListLayout.Padding = UDim.new(0.0900000036, 0)
