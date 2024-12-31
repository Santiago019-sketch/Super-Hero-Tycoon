local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Sebi's Hub | Super Hero Tycoon | V1", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local PowersTab = Window:MakeTab({
	Name = "Super Powers",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = PowersTab:AddSection({
	Name = "Super Powers"
})
PowersTab:AddButton({
	Name = "Collect Hulk Powers (down)",
	Callback = function()
      	game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(1538, 61, 1152))
      	wait()
      	game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(1535, 61, 1163))
      	wait()
      	game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(1338, 62, 1114))
  	end    
})
PowersTab:AddButton({
	Name = "Collect Green Lantern Powers (down)",
	Callback = function()
      	game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(1208, 62, 1270))
      	wait()
      	game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(1199, 61, 1263))
      	wait()
      	game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(1338, 62, 1114))
  	end    
})
PowersTab:AddButton({
	Name = "Collect The Flash Powers (down)",
	Callback = function()
      	game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(1336, 62, 1308))
      	wait()
      	game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(1325, 62, 1308))
      	wait()
      	game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(1338, 62, 1114))
  	end    
})
PowersTab:AddButton({
	Name = "Collect Batman Powers (down)",
	Callback = function()
      	game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(1326, 63, 875))
      	wait()
      	game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(1338, 63, 876))
      	wait()
      	game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(1338, 62, 1114))
  	end    
})
PowersTab:AddButton({
	Name = "Collect Thor Powers (down)",
	Callback = function()
      	game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(1461, 63, 1265))
      	wait()
      	game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(1454, 64, 876))
      	wait()
      	game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(1338, 62, 1269))
  	end    
})
PowersTab:AddButton({
	Name = "Collect Black Panther Powers (down)",
	Callback = function()
      	game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(1535, 62, 1021))
      	wait()
      	game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(1538, 62, 1029))
      	wait()
      	game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(1338, 62, 1269))
  	end    
})
PowersTab:AddButton({
	Name = "Collect Iron Man Powers (down)",
	Callback = function()
      	game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(1454, 62, 913))
      	wait()
      	game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(1461, 63, 919))
      	wait()
      	game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(1338, 62, 1269))
  	end    
})
