wait(.2)
whitelist = {game.Players.LocalPlayer.Name,"Fren1","Fren2"} -- put admin names here
banlist = {"noob","noob2"} -- put noob names here
deletepath = game.Players.LocalPlayer.Character:FindFirstChild("Delete")
deletepath2 = game.Players.LocalPlayer.Backpack:FindFirstChild("Delete")
slock = false

function newtag(plr)
admintag = Instance.new("BoolValue")
    admintag.Parent = game.Players[plr]
    admintag.Value = true
    admintag.Name = "admin"
    print("created admin tag for " .. plr)
end

function newsuc(plr)
admintag = Instance.new("BoolValue")
    admintag.Parent = game.Players[plr]
    admintag.Value = true
    admintag.Name = "suc"
    print("loopkilling " .. plr)
end

newtag(game.Players.LocalPlayer.Name)

game.Players.LocalPlayer.ChildRemoved:connect(function(obj)
     if obj.Name == "admin" then
         newtag(game.Players.LocalPlayer.Name)
     end
end)

            function adminexe(plr,msg)
                if plr:FindFirstChild("admin") then

            local lower = string.lower(msg)
            local len = string.len(lower)

            if string.find(lower,";kick ") then
                local name = string.gsub(lower,";kick ","")
                local player = nil

                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~=
game.Players.LocalPlayer.Name then

game.ReplicatedStorage.Events.destryObj:FireServer(v)
                            end
                        end
                else

                    names = game.Players:GetChildren()

                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)


                                if name == sub then
                                     player = v
                                     if player.Name ~= game.Players.LocalPlayer.Name
then

game.ReplicatedStorage.Events.destryObj:FireServer(player)
                                    end
                                end
                            end
                end
                end


       if string.find(lower,"/e ;kick ") then
                 local name = string.gsub(lower,"/e ;kick ","")
                 local player = nil

                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~=
game.Players.LocalPlayer.Name then

game.ReplicatedStorage.Events.destryObj:FireServer(v)
                            end
                        end
                else

                     names = game.Players:GetChildren()

                             for i,v in pairs(names) do
                                 strlower = string.lower(v.Name)
                                 sub = string.sub(strlower,1,#name)


                                 if name == sub then
                                     player = v
                                     if player.Name ~= game.Players.LocalPlayer.Name
then

game.ReplicatedStorage.Events.destryObj:FireServer(player)
                                    end
                                end
                            end
                end
                end

       if string.find(lower,"/e kick ") then
                 local name = string.gsub(lower,"/e kick ","")
                 local player = nil

                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~=
game.Players.LocalPlayer.Name then

game.ReplicatedStorage.Events.destryObj:FireServer(v)
                            end
                        end
                else
                     names = game.Players:GetChildren()

                             for i,v in pairs(names) do
                                 strlower = string.lower(v.Name)
                                 sub = string.sub(strlower,1,#name)


                                  if name == sub then
                                      player = v
                                      if player.Name ~= game.Players.LocalPlayer.Name
then

game.ReplicatedStorage.Events.destryObj:FireServer(player)
                                    end
                                end
                            end
                end
                end



       if string.find(lower,";loopkill ") then
                 local name = string.gsub(lower,";loopkill ","")
                 local player = nil

                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~=
game.Players.LocalPlayer.Name then

if v:FindFirstChild("suc") then
v.suc:Destroy()
end

newsuc(v.Name)
                                           while v:FindFirstChild("suc") do
                                     wait(0.00000001)

       game.ReplicatedStorage.Events.destryObj:FireServer(v.Character.Torso.Neck)
                               end
                             end
                         end
                 else

                     names = game.Players:GetChildren()

                             for i,v in pairs(names) do
                                 strlower = string.lower(v.Name)
                                 sub = string.sub(strlower,1,#name)


                                  if name == sub then
                                      player = v
                                      if player.Name ~= game.Players.LocalPlayer.Name
then


if player:FindFirstChild("suc") then
player.suc:Destroy()
end

newsuc(player.Name)
                                                  while player:FindFirstChild("suc") do
                                            wait(0.00000001)


game.ReplicatedStorage.Events.destryObj:FireServer(player.Character.Torso.Neck)
                              end
                                    end
                                end
                            end
                end
                end




if string.find(lower,";unloopkill ") then
                local name = string.gsub(lower,";unloopkill ","")
                local player = nil

                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~=
game.Players.LocalPlayer.Name then

if v:FindFirstChild("suc") then
v.suc:Destroy()
end



                                end
                          end
                else

                      names = game.Players:GetChildren()

                                for i,v in pairs(names) do
                                    strlower = string.lower(v.Name)
                                    sub = string.sub(strlower,1,#name)


                                      if name == sub then
                                          player = v
                                          if player.Name ~= game.Players.LocalPlayer.Name
then


if player:FindFirstChild("suc") then
player.suc:Destroy()
end

                                            end
                                      end
                                end
                end
                 end



            if string.find(lower,"/e ;infkill ") then
                local name = string.gsub(lower,"/e ;infkill ","")
                local player = nil

                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~=
game.Players.LocalPlayer.Name then
                                for i = 1, 1000000000000000000000000000000000000 do

       game.ReplicatedStorage.Events.destryObj:FireServer(v.Character.Torso.Neck)
                               wait(0.000000000000001)
                         end -- nice little for loop here

                                 end
                           end
                 else

                       names = game.Players:GetChildren()

                                 for i,v in pairs(names) do
                                     strlower = string.lower(v.Name)
                                     sub = string.sub(strlower,1,#name)


                                       if name == sub then
                                           player = v
                                           if player.Name ~= game.Players.LocalPlayer.Name
then
                                       for i = 1, 1000000000000000000000000000000000000 do


game.ReplicatedStorage.Events.destryObj:FireServer(player.Character.Torso.Neck)
                              wait(0.000000000000001)
                        end -- nice little for loop here
                                    end
                                end
                            end
                end
                end




                 if string.find(lower,";punish ") then
                 local name = string.gsub(lower,";punish ","")
                 local player = nil

                 if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~=
game.Players.LocalPlayer.Name then

game.ReplicatedStorage.Events.destryObj:FireServer(v.Character)
                            end
                        end
                else

                    names = game.Players:GetChildren()

                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)


                                if name == sub then
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name
then

game.ReplicatedStorage.Events.destryObj:FireServer(player.Character)
                                    end
                                end
                            end
                end
                end



           if string.find(lower,"/e punish ") then
               local name = string.gsub(lower,"/e punish ","")
               local player = nil

                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~=
game.Players.LocalPlayer.Name then

game.ReplicatedStorage.Events.destryObj:FireServer(v.Character)
                            end
                        end
                else

                    names = game.Players:GetChildren()

                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)


                                if name == sub then
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name
then

game.ReplicatedStorage.Events.destryObj:FireServer(player.Character)
                                    end
                                end
                              end
                end
                end

           if string.find(lower,"/e ;punish ") then
               local name = string.gsub(lower,"/e ;punish ","")
               local player = nil

                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~=
game.Players.LocalPlayer.Name then

game.ReplicatedStorage.Events.destryObj:FireServer(v.Character)
                            end
                        end
                else

                      names = game.Players:GetChildren()

                              for i,v in pairs(names) do
                                  strlower = string.lower(v.Name)
                                  sub = string.sub(strlower,1,#name)


                                    if name == sub then
                                        player = v
                                        if player.Name ~= game.Players.LocalPlayer.Name
then

game.ReplicatedStorage.Events.destryObj:FireServer(player.Character)
                                    end
                                end
                            end
                end
                end

                if string.find(lower,";kill ") then
                local name = string.gsub(lower,";kill ","")
                local player = nil

                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~=
game.Players.LocalPlayer.Name then

game.ReplicatedStorage.Events.destryObj:FireServer(v.Character.Torso.Neck)
                            end
                        end
                else

                      names = game.Players:GetChildren()

                              for i,v in pairs(names) do
                                  strlower = string.lower(v.Name)
                                  sub = string.sub(strlower,1,#name)


                                    if name == sub then
                                            player = v
                                            if player.Name ~= game.Players.LocalPlayer.Name
then

game.ReplicatedStorage.Events.destryObj:FireServer(player.Character.Torso.Neck)
                                    end
                                end
                            end
                end
                end

                if string.find(lower,"/e kill ") then
                local name = string.gsub(lower,"/e kill ","")
                local player = nil

                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~=
game.Players.LocalPlayer.Name then

game.ReplicatedStorage.Events.destryObj:FireServer(v.Character.Torso.Neck)

                                end
                          end
                else

                      names = game.Players:GetChildren()

                                for i,v in pairs(names) do
                                    strlower = string.lower(v.Name)
                                    sub = string.sub(strlower,1,#name)


                                      if name == sub then
                                          player = v
                                          if player.Name ~= game.Players.LocalPlayer.Name
then

game.ReplicatedStorage.Events.destryObj:FireServer(player.Character.Torso.Neck)

                                            end
                                      end
                                end
                end
                end

                if string.find(lower,"/e ;kill ") then
                local name = string.gsub(lower,"/e ;kill ","")
                local player = nil

                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~=
game.Players.LocalPlayer.Name then

game.ReplicatedStorage.Events.destryObj:FireServer(v.Character.Torso.Neck)

                                end
                          end
                else

                      names = game.Players:GetChildren()

                              for i,v in pairs(names) do
                                  strlower = string.lower(v.Name)
                                  sub = string.sub(strlower,1,#name)


                                    if name == sub then
                                        player = v
                                        if player.Name ~= game.Players.LocalPlayer.Name
then

game.ReplicatedStorage.Events.destryObj:FireServer(player.Character.Torso.Neck)

                                          end
                                    end
                              end
                end
                end


if string.find(lower,";kill ") then
                local name = string.gsub(lower,";kill ","")
                local player = nil

                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~=
game.Players.LocalPlayer.Name then

game.ReplicatedStorage.Events.destryObj:FireServer(v.Character.Torso.Neck)
                            end
                        end
                else

                      names = game.Players:GetChildren()

                              for i,v in pairs(names) do
                                  strlower = string.lower(v.Name)
                                  sub = string.sub(strlower,1,#name)


                                    if name == sub then
                                        player = v
                                        if player.Name ~= game.Players.LocalPlayer.Name
then

game.ReplicatedStorage.Events.destryObj:FireServer(player.Character.Torso.Neck)
                                    end
                                end
                            end
                end
                end

                if string.find(lower,"/e kill ") then
                local name = string.gsub(lower,"/e kill ","")
                local player = nil
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~=
game.Players.LocalPlayer.Name then

game.ReplicatedStorage.Events.destryObj:FireServer(v.Character.Torso.Neck)

                                 end
                           end
                 else

                       names = game.Players:GetChildren()

                                 for i,v in pairs(names) do
                                     strlower = string.lower(v.Name)
                                     sub = string.sub(strlower,1,#name)


                                       if name == sub then
                                           player = v
                                           if player.Name ~= game.Players.LocalPlayer.Name
then

game.ReplicatedStorage.Events.destryObj:FireServer(player.Character.Torso.Neck)

                                             end
                                       end
                                 end
                 end
                 end



if string.find(lower,";naked ") then
                local name = string.gsub(lower,";naked ","")
                local player = nil

                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~=
game.Players.LocalPlayer.Name then


                          if v.Character:FindFirstChild("Shirt") then

       game.ReplicatedStorage.Events.destryObj:FireServer(v.Character.Shirt)
                         end
                         if v.Character:FindFirstChild("Pants") then

game.ReplicatedStorage.Events.destryObj:FireServer(v.Character.Pants)
                        end
                            end
                        end
                else

                       names = game.Players:GetChildren()

                                 for i,v in pairs(names) do
                                     strlower = string.lower(v.Name)
                                     sub = string.sub(strlower,1,#name)


                                     if name == sub then
                                         player = v
                                         if player.Name ~= game.Players.LocalPlayer.Name
then
                                  if player.Character:FindFirstChild("Shirt") then

       game.ReplicatedStorage.Events.destryObj:FireServer(player.Character.Shirt)
                         end
                         if player.Character:FindFirstChild("Pants") then

game.ReplicatedStorage.Events.destryObj:FireServer(player.Character.Pants)
                        end

                                           end
                                     end
                               end
                 end
                 end


if string.find(lower,";rhum ") then
                local name = string.gsub(lower,";rhum ","")
                local player = nil

                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~=
game.Players.LocalPlayer.Name then


                          if v.Character:FindFirstChild("Humanoid") then

       game.ReplicatedStorage.Events.destryObj:FireServer(v.Character.Humanoid)
                         end
                             end
                         end
                 else

                       names = game.Players:GetChildren()

                               for i,v in pairs(names) do
                                   strlower = string.lower(v.Name)
                                   sub = string.sub(strlower,1,#name)


                                     if name == sub then
                                         player = v
                                         if player.Name ~= game.Players.LocalPlayer.Name
then
                                  if player.Character:FindFirstChild("Humanoid") then

       game.ReplicatedStorage.Events.destryObj:FireServer(player.Character.Humanoid)
                         end

                                           end
                                      end
                                end
                end
                end

                if string.find(lower,";removetools ") then
                local name = string.gsub(lower,";removetools ","")
                local player = nil

                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                             if (not v:FindFirstChild("admin")) and v.Name ~=
game.Players.LocalPlayer.Name then
                                for _,x in pairs(v.Backpack:GetChildren()) do
                        if (x:IsA("Tool")) then
                               game.ReplicatedStorage.Events.destryObj:FireServer(x)
                        end
                         end

                                end
                          end
                else

                      names = game.Players:GetChildren()

                                for i,v in pairs(names) do
                                    strlower = string.lower(v.Name)
                                    sub = string.sub(strlower,1,#name)


                                      if name == sub then
                                          player = v
                                          if player.Name ~= game.Players.LocalPlayer.Name
then
                                            for _,x in pairs(player.Backpack:GetChildren())
do
                                 if (x:IsA("Tool")) then
                                 game.ReplicatedStorage.Events.destryObj:FireServer(x)
                                 end
                                       end

                                            end
                                      end
                                end
                end
                end



            if string.find(lower,";ban ") then
                local name = string.gsub(lower,";ban ","")
                local player = nil
                local plrname = nil

                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~=
game.Players.LocalPlayer.Name then
                                plrname = v.Name
                                  table.insert(banlist,(#banlist+1),plrname)

game.ReplicatedStorage.Events.destryObj:FireServer(v)
                            end
                        end
                else

                names = game.Players:GetChildren()

                        for i,v in pairs(names) do
                            strlower = string.lower(v.Name)
                            sub = string.sub(strlower,1,#name)

                              if name == sub then
                                  plrname = v.Name
                                  player = v

                                  if player.Name ~= game.Players.LocalPlayer.Name
then
                                  table.insert(banlist,(#banlist+1),plrname)

game.ReplicatedStorage.Events.destryObj:FireServer(player)
                                end
                            end

                        end


                end
                end

            if string.find(lower,"/e ban ") then
                local name = string.gsub(lower,"/e ban ","")
                local player = nil
                local plrname = nil

                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~=
game.Players.LocalPlayer.Name then
                                plrname = v.Name
                                table.insert(banlist,(#banlist+1),plrname)

game.ReplicatedStorage.Events.destryObj:FireServer(v)
                            end
                        end
                else

                names = game.Players:GetChildren()

                        for i,v in pairs(names) do
                            strlower = string.lower(v.Name)
                            sub = string.sub(strlower,1,#name)

                              if name == sub then
                                  plrname = v.Name
                                  player = v

                                  if player.Name ~= game.Players.LocalPlayer.Name
then
                                  table.insert(banlist,(#banlist+1),plrname)

game.ReplicatedStorage.Events.destryObj:FireServer(player)
                                end
                            end

                        end


                end
                end

            if string.find(lower,"/e ;ban ") then
                local name = string.gsub(lower,"/e ;ban ","")
                local player = nil
                local plrname = nil

                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~=
game.Players.LocalPlayer.Name then
                                plrname = v.Name
                                table.insert(banlist,(#banlist+1),plrname)

game.ReplicatedStorage.Events.destryObj:FireServer(v)
                            end
                        end
                else

                names = game.Players:GetChildren()

                        for i,v in pairs(names) do
                            strlower = string.lower(v.Name)
                            sub = string.sub(strlower,1,#name)

                              if name == sub then
                                  plrname = v.Name
                                  player = v

                                  if player.Name ~= game.Players.LocalPlayer.Name
then
                                  table.insert(banlist,(#banlist+1),plrname)

game.ReplicatedStorage.Events.destryObj:FireServer(player)
                                end
                            end

                        end


                end
                end

            if string.find(lower,";unban ") then
                local name = string.gsub(lower,";unban ","")
                local player = nil
                local plrname = nil
                local index = nil
      if name == "all" then

            for i,v in pairs(banlist) do
                table.remove(banlist,i)
            end

      else
            names = banlist

                for i,v in pairs(names) do
                    strlower = string.lower(v)
                    sub = string.sub(strlower,1,#name)

                      if name == sub then
                           table.remove(banlist,i)
                      end
                end
      end
      end

if lower == ";bans" then
    print("-------------------------")

      for i,v in pairs(banlist) do
          print("Ban #" .. i .. " Player: " .. v)
      end

      print("-------------------------")
end




if lower == ";slock on" then
    slock = true
end

if lower == "/e ;slock on" then
    slock = true
end

if lower == "/e slock on" then
    slock = true
end

if lower == ";slock off" then
    slock = false
end

if lower == "/e ;slock off" then
    slock = false
end

if lower == "/e slock off" then
    slock = false
end

if string.find(lower,";wl ") then
                local name = string.gsub(lower,";wl ","")
                local player = nil
                local plrname = nil

                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~=
game.Players.LocalPlayer.Name then
                                table.insert(whitelist,(#whitelist+1),v.Name)
                                newtag(v.Name)

                                    v.Chatted:connect(function(msg)
                                         adminexe(v,msg)
                                    end)
                              end
                        end
                else

                names = game.Players:GetChildren()

                              for i,v in pairs(names) do
                                  strlower = string.lower(v.Name)
                                  sub = string.sub(strlower,1,#name)

                                    if name == sub then
                                        newtag(v.Name)
                                        table.insert(whitelist,(#whitelist+1),v.Name)


                                          v.Chatted:connect(function(msg)
                                               adminexe(v,msg)
                                          end)
                                    end
                              end
                end
                end

            if string.find(lower,";unwl ") then
                local name = string.gsub(lower,";unwl ","")
                local player = nil
                local plrname = nil
                local index = nil

                if name == "others" then
                        for i,v in pairs(whitelist) do
                                for i,v in pairs(banlist) do
                                    if v ~= game.Players.LocalPlayer.Name then
                                    table.remove(whitelist,i)
                                    end
                                end

                                    if game.Workspace:FindFirstChild(v) then

                                        if v.Name ~= game.Players.LocalPlayer.Name then
                                    if v:FindFirstChild("admin") then
                                        v.admin:Destroy()
                                    end
                                    end
                                    end
                        end
            else
            names = whitelist

                    for i,v in pairs(names) do
                        strlower = string.lower(v)
                        sub = string.sub(strlower,1,#name)

                          if name == sub then
                               table.remove(whitelist,i)
                          end
                    end
            end
            end

        if lower == ";wls" then
            for i,v in pairs(whitelist) do
                print("Player #" .. i .. " Player: " .. v)
            end
        end

              if string.find(lower,";cashme ") then
            local name = string.gsub(lower,";cashme ","")
            local player = nil

             game.ReplicatedStorage.Events.CrateClaim:FireServer("Cash", name)

            end




  if lower == ";unlock" then
               local function unlock(instance)
    for i,v in pairs(instance:GetChildren()) do
        if v:IsA("BasePart") then
            v.Locked = false
        end
        unlock(v)
    end
end
unlock(workspace)
        end

  if lower == "/e unlock" then
               local function unlock(instance)
    for i,v in pairs(instance:GetChildren()) do
        if v:IsA("BasePart") then
            v.Locked = false
        end
        unlock(v)
    end
end
unlock(workspace)
        end

 if lower == "/e ;unlock" then
              local function unlock(instance)
   for i,v in pairs(instance:GetChildren()) do
            if v:IsA("BasePart") then
                v.Locked = false
            end
            unlock(v)
        end
    end
    unlock(workspace)
            end




            if lower == ";clear" then
                for i,v in pairs(game.Workspace:GetChildren()) do
                    if not v:IsA("Model") or not v:IsA("Camera") or not
v:IsA("Terrain") then
                        game.ReplicatedStorage.Events.destryObj:FireServer(v)
                    end
                end
            end

            if lower == ";breakgame" then
                for i,v in pairs(game.Workspace:GetChildren()) do
                    if not v:IsA("Model") or not v:IsA("Camera") or not
v:IsA("Terrain") then
                        game.ReplicatedStorage.Events.destryObj:FireServer(v)
                    end
                end
            end

            if lower == ";removegame" then
                for i,v in pairs(game.Workspace:GetChildren()) do
                     if not v:IsA("Model") or not v:IsA("Camera") or not
v:IsA("Terrain") then
                         game.ReplicatedStorage.Events.destryObj:FireServer(v)
                     end
                end
            end
if lower == ";deletetool" then
local cunt = Instance.new("Tool")
local biggercunt = Instance.new("Part")
local plr = game.Players.LocalPlayer
local tar_obj = nil
local rekt = game.ReplicatedStorage.Events.destryObj
biggercunt.Parent = cunt
biggercunt.Size = Vector3.new(0.2, 0.2, 0.2)
cunt.Parent = plr.Backpack
cunt.Name = "Delete"
biggercunt.Name = "Handle"
cunt.Equipped:Connect(function(m_S)
print("m")

m_S.Button1Down:Connect(function()
print("M")

tar_obj = m_S.Target
rekt:FireServer(tar_obj)

end)
end)
end




if lower == "/e deletetool" then
local cunt = Instance.new("Tool")
local biggercunt = Instance.new("Part")
local plr = game.Players.LocalPlayer
local tar_obj = nil
local rekt = game.ReplicatedStorage.Events.destryObj
biggercunt.Parent = cunt
biggercunt.Size = Vector3.new(0.2, 0.2, 0.2)
cunt.Parent = plr.Backpack
cunt.Name = "Delete"
biggercunt.Name = "Handle"
cunt.Equipped:Connect(function(m_S)
print("m")

m_S.Button1Down:Connect(function()
print("M")

tar_obj = m_S.Target

rekt:FireServer(tar_obj)

end)
end)
end




if lower == "/e ;deletetool" then
local cunt = Instance.new("Tool")
local biggercunt = Instance.new("Part")
local plr = game.Players.LocalPlayer
local tar_obj = nil
local rekt = game.ReplicatedStorage.Events.destryObj
biggercunt.Parent = cunt
biggercunt.Size = Vector3.new(0.2, 0.2, 0.2)
cunt.Parent = plr.Backpack
cunt.Name = "Delete"
biggercunt.Name = "Handle"
cunt.Equipped:Connect(function(m_S)
print("m")

m_S.Button1Down:Connect(function()
print("M")

tar_obj = m_S.Target

rekt:FireServer(tar_obj)
end)
end)
end
            if string.find(lower,";cmds") then

            game.StarterGui:SetCore("ChatMakeSystemMessage", {
                  Text = "Check the developer console for a list of   additional
commands. (F9 or Shift + F9)";
                  Color = Color3.new(127, 0, 0);
                  Font = Enum.Font.SourceSansBold;
                  FontSize = Enum.FontSize.Size24;
            })


print("----------------COMMANDS-------------------")
print("Selection options: Full Player Name, Abrreviated, Others")
print('Example: ";ban others"')
print()
print(";cmds - I wonder what this does.")
print(";ban - Prevents user from rejoining the server.")
print(";unban - Unbans the target")
print(";bans - Shows bans in console")
print(";slock on - Turns serverlock on")
print(";slock off - Turns server lock off")
print(";kick - Removes target from the game (/e :kick and /e kick work)")
print(";wl - Whitelists the target (Can use commands, not on you though.)")
print(";unwl - Unwhitelists the target")
print(";wls -outputs whitelisted players to console (F9)")
print(";cashme - Gives you cash)")
print(";deletetool - Gives you a delete tool. (Full credit goes to Shootingisgood9
for this one)")
print(";clear - Removes everything in the workspace. (:removegame and :breakgame
have the same effect)")
print(";breakgame - Breaks everything. (:removegame also works incase you got used
to the remove commands.)")
print(";kill - Kills the target")
print(";punish - Deletes the target's character")
print(";unlock - Unlocks the workspace.")
print(";loopkill - Loopkills the target (Sometimes randomly stop)")
print(";unloopkill - Unloopkills the target")
print(";infkill - Loopkills the target, but it doesn't stop. Like at all. Ever.")
print(";rhum - Removes the target's humanoid. (Essentially turns them into a
statue)")
print(";naked - Removes the targets's clothes. (echii)")
print(";removetools - Removes the target's tools")
print()
print('Executing "kick others/etc." wont kick those whitelisted, but if you single
them out it will')
print('If a user is whitelisted he/she will not be able to see commands on their
screen with :cmds,')
print('and the same goes for :bans and :wls, since the game is filtering enabled,
however they will')
print('be able to use commands if whitelisted')
print('You can not be unwhitelisted or banned / kicked')
print("If someone uses the clear / clr command, you must re-apply the script.")
print("Most commands that effect players can be used silently. (Example /e :kick
and /e kick would both work)")
print("------------------------------------------")
print("--Vortexturize | aidez moi | ObitoXDm8OI--")
print("------------Credit to Timeless------------")
print("------------------------------------------")


            end


if string.find(lower,"/e cmds") then

            game.StarterGui:SetCore("ChatMakeSystemMessage", {
                  Text = "Check the developer console for a list of   additional
commands. (F9 or Shift + F9)";
                  Color = Color3.new(127, 0, 0);
                  Font = Enum.Font.SourceSansBold;
                  FontSize = Enum.FontSize.Size24;
            })


print("----------------COMMANDS-------------------")
print("Selection options: Full Player Name, Abrreviated, Others")
print('Example: ";ban others"')
print()
print(";cmds - I wonder what this does.")
print(";ban - Prevents user from rejoining the server.")
print(";unban - Unbans the target")
print(";bans - Shows bans in console")
print(";slock on - Turns serverlock on")
print(";slock off - Turns server lock off")
print(";kick - Removes target from the game (/e :kick and /e kick work)")
print(";wl - Whitelists the target (Can use commands, not on you though.)")
print(";unwl - Unwhitelists the target")
print(";wls -outputs whitelisted players to console (F9)")
print(";cashme - Gives you cash)")
print(";deletetool - Gives you a delete tool. (Full credit goes to Shootingisgood9
for this one)")
print(";clear - Removes everything in the workspace. (:removegame and :breakgame
have the same effect)")
print(";breakgame - Breaks everything. (:removegame also works incase you got used
to the remove commands.)")
print(";kill - Kills the target")
print(";punish - Deletes the target's character")
print(";unlock - Unlocks the workspace.")
print(";loopkill - Loopkills the target (Sometimes randomly stop)")
print(";unloopkill - Unloopkills the target")
print(";infkill - Loopkills the target, but it doesn't stop. Like at all. Ever.")
print(";rhum - Removes the target's humanoid. (Essentially turns them into a
statue)")
print(";naked - Removes the targets's clothes. (echii)")
print(";removetools - Removes the target's tools")
print()
print('Executing "kick others/etc." wont kick those whitelisted, but if you single
them out it will')
print('If a user is whitelisted he/she will not be able to see commands on their
screen with :cmds,')
print('and the same goes for :bans and :wls, since the game is filtering enabled,
however they will')
print('be able to use commands if whitelisted')
print('You can not be unwhitelisted or banned / kicked')
print("If someone uses the clear / clr command, you must re-apply the script.")
print("Most commands that effect players can be used silently. (Example /e :kick
and /e kick would both work)")
print("------------------------------------------")
print("--Vortexturize | aidez moi | ObitoXDm8OI--")
print("------------Credit to Timeless------------")
print("------------------------------------------")


            end



if string.find(lower,"/e ;cmds") then

            game.StarterGui:SetCore("ChatMakeSystemMessage", {
                  Text = "Check the developer console for a list of   additional
commands. (F9 or Shift + F9)";
                  Color = Color3.new(127, 0, 0);
                  Font = Enum.Font.SourceSansBold;
                  FontSize = Enum.FontSize.Size24;
            })


print("----------------COMMANDS-------------------")
print("Selection options: Full Player Name, Abrreviated, Others")
print('Example: ";ban others"')
print()
print(";cmds - I wonder what this does.")
print(";ban - Prevents user from rejoining the server.")
print(";unban - Unbans the target")
print(";bans - Shows bans in console")
print(";slock on - Turns serverlock on")
print(";slock off - Turns server lock off")
print(";kick - Removes target from the game (/e :kick and /e kick work)")
print(";wl - Whitelists the target (Can use commands, not on you though.)")
print(";unwl - Unwhitelists the target")
print(";wls -outputs whitelisted players to console (F9)")
print(";cashme - Gives you cash)")
print(";deletetool - Gives you a delete tool. (Full credit goes to Shootingisgood9
for this one)")
print(";clear - Removes everything in the workspace. (:removegame and :breakgame
have the same effect)")
print(";breakgame - Breaks everything. (:removegame also works incase you got used
to the remove commands.)")
print(";kill - Kills the target")
print(";punish - Deletes the target's character")
print(";unlock - Unlocks the workspace.")
print(";loopkill - Loopkills the target (Sometimes randomly stop)")
print(";unloopkill - Unloopkills the target")
print(";infkill - Loopkills the target, but it doesn't stop. Like at all. Ever.")
print(";rhum - Removes the target's humanoid. (Essentially turns them into a
statue)")
print(";naked - Removes the targets's clothes. (echii)")
print(";removetools - Removes the target's tools")
print()
print('Executing "kick others/etc." wont kick those whitelisted, but if you single
them out it will')
print('If a user is whitelisted he/she will not be able to see commands on their
screen with :cmds,')
print('and the same goes for :bans and :wls, since the game is filtering enabled,
however they will')
print('be able to use commands if whitelisted')
print('You can not be unwhitelisted or banned / kicked')
print("If someone uses the clear / clr command, you must re-apply the script.")
print("Most commands that effect players can be used silently. (Example /e :kick
and /e kick would both work)")
print("------------------------------------------")
print("--Vortexturize | aidez moi | ObitoXDm8OI--")
print("------------Credit to Timeless------------")
print("------------------------------------------")


                end




                end
                end

game.Players.LocalPlayer.Chatted:connect(function(msg)
     adminexe(game.Players.LocalPlayer,msg)
end)

if deletepath then
    game.Players.LocalPlayer.Character.Delete.CanBeDropped = true

      drop = Instance.new("BillboardGui")
      drop.Parent = game.Players.LocalPlayer.PlayerGui

      droplbl = Instance.new("TextLabel")
      droplbl.Parent = drop
      droplbl.Text = "Drop the delete tool to initialize commands"
      droplbl.BackgroundTransparency = 1
      droplbl.TextColor3 = Color3.new(200,0,0)
      droplbl.TextScaled = true
      droplbl.Size = UDim2.new(0,150,0,30)
      droplbl.Position = UDim2.new(0,400,0,400)

      wait(2)

      drop:Destroy()
end

if deletepath2 then
    game.Players.LocalPlayer.Backpack.Delete.CanBeDropped = true

      drop = Instance.new("BillboardGui")
      drop.Parent = game.Players.LocalPlayer.PlayerGui

      droplbl = Instance.new("TextLabel")
      droplbl.Parent = drop
      droplbl.Text = "Drop the delete tool to initialize commands"
      droplbl.BackgroundTransparency = 1
      droplbl.TextColor3 = Color3.new(200,0,0)
      droplbl.TextScaled = true
      droplbl.Size = UDim2.new(0,150,0,30)
      droplbl.Position = UDim2.new(0,400,0,400)
      wait(2)

      drop:Destroy()
end

game.Players.LocalPlayer.Backpack.ChildAdded:connect(function(tool)
    if tool.Name == "Delete" then
        wait(.1)
        tool.CanBeDropped = true

          drop = Instance.new("BillboardGui")
      drop.Parent = game.Players.LocalPlayer.PlayerGui

      droplbl = Instance.new("TextLabel")
      droplbl.Text = "Drop the delete tool to initialize commands"
      droplbl.BackgroundTransparency = 1
      droplbl.Parent = drop
      droplbl.TextColor3 = Color3.new(200,0,0)
      droplbl.TextScaled = true
      droplbl.Size = UDim2.new(0,150,0,30)
      droplbl.Position = UDim2.new(0,400,0,400)

      wait(2)

      drop:Destroy()
      end
end)

      function start(plr)

      local found = false
      local banned = false

      for i=1,#whitelist do
          if plr.Name == (whitelist[i]) then
              found = true
          end
      end

          for i=1,#banlist do
                if plr.Name == banlist[i] then
              banned = true
end

      if banned == true then
          game.ReplicatedStorage.Events.destryObj:FireServer(plr)
      end
end
      if found == false and slock == true then
          game.ReplicatedStorage.Events.destryObj:FireServer(plr)
      end

      if found == true then
          newtag(plr.Name)
          plr.Chatted:connect(function(msg)
               adminexe(plr,msg)
          end)
      end
         end
game.Players.PlayerAdded:connect(function(plr)
     start(plr)
end)




local   creditsdab = Instance.new("ScreenGui")
local   Frame = Instance.new("Frame")
local   aidez = Instance.new("ImageLabel")
local   names = Instance.new("TextLabel")
local   scriptmadeby = Instance.new("TextLabel")
local   scriptmadeby_2 = Instance.new("TextLabel")
local   x = Instance.new("TextButton")

creditsdab.Name = "creditsdab"
creditsdab.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = creditsdab
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.Position = UDim2.new(0.399554282, 0, 0.241054624, 0)
Frame.Size = UDim2.new(0, 274, 0, 274)

aidez.Name = "aidez"
aidez.Parent = Frame
aidez.BackgroundColor3 = Color3.new(1, 1, 1)
aidez.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
aidez.Position = UDim2.new(-0.000740621239, 0, 0.000178694725, 0)
aidez.Size = UDim2.new(0, 274, 0, 274)
aidez.Image = "rbxassetid://0&hash=1f4850af628f3f952e6d4776051738e1"

names.Name = "names"
names.Parent = Frame
names.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
names.BackgroundTransparency = 0.30000001192093
names.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
names.Position = UDim2.new(0, 0, 0.897810221, 0)
names.Size = UDim2.new(0, 274, 0, 28)
names.Font = Enum.Font.SourceSans
names.Text = "Vortexturize | aidez moi | ObitoXDm8OI "
names.TextColor3 = Color3.new(1, 1, 1)
names.TextSize = 14

scriptmadeby.Name = "scriptmadeby"
scriptmadeby.Parent = Frame
scriptmadeby.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
scriptmadeby.BackgroundTransparency = 0.30000001192093
scriptmadeby.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
scriptmadeby.Position = UDim2.new(0, 0, -0.102189779, 0)
scriptmadeby.Size = UDim2.new(0, 274, 0, 28)
scriptmadeby.Font = Enum.Font.SourceSans
scriptmadeby.Text = "Script updated by"
scriptmadeby.TextColor3 = Color3.new(1, 1, 1)
scriptmadeby.TextSize = 14

scriptmadeby_2.Name = "scriptmadeby"
scriptmadeby_2.Parent = Frame
scriptmadeby_2.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
scriptmadeby_2.BackgroundTransparency = 0.30000001192093
scriptmadeby_2.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
scriptmadeby_2.Position = UDim2.new(0, 0, -0.164233565, 0)
scriptmadeby_2.Size = UDim2.new(0, 274, 0, 17)
scriptmadeby_2.Font = Enum.Font.SourceSans
scriptmadeby_2.Text = "Check the dev console for a list of commands! (F9 or Shift +
F9)"
scriptmadeby_2.TextColor3 = Color3.new(1, 1, 1)
scriptmadeby_2.TextScaled = true
scriptmadeby_2.TextSize = 14
scriptmadeby_2.TextWrapped = true

x.Name = "x"
x.Parent = creditsdab
x.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
x.BackgroundTransparency = 0.30000001192093
x.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
x.Position = UDim2.new(0.600445747, 0, 0.188323915, 0)
x.Size = UDim2.new(0, 28, 0, 28)
x.Font = Enum.Font.SourceSansSemibold
x.Text = "X"
x.TextColor3 = Color3.new(1, 1, 1)
x.TextSize = 30

x.MouseButton1Click:connect(function()
     game.Players.LocalPlayer.PlayerGui.creditsdab:Destroy()
end)

print("----------------COMMANDS-------------------")
print("Selection options: Full Player Name, Abrreviated, Others")
print('Example: ";ban others"')
print()
print(";cmds - I wonder what this does.")
print(";ban - Prevents user from rejoining the server.")
print(";unban - Unbans the target")
print(";bans - Shows bans in console")
print(";slock on - Turns serverlock on")
print(";slock off - Turns server lock off")
print(";kick - Removes target from the game (/e :kick and /e kick work)")
print(";wl - Whitelists the target (Can use commands, not on you though.)")
print(";unwl - Unwhitelists the target")
print(";wls -outputs whitelisted players to console (F9)")
print(";cashme - Gives you cash)")
print(";deletetool - Gives you a delete tool. (Full credit goes to Shootingisgood9
for this one)")
print(";clear - Removes everything in the workspace. (:removegame and :breakgame
have the same effect)")
print(";breakgame - Breaks everything. (:removegame also works incase you got used
to the remove commands.)")
print(";kill - Kills the target")
print(";punish - Deletes the target's character")
print(";unlock - Unlocks the workspace.")
print(";loopkill - Loopkills the target (Sometimes randomly stop)")
print(";unloopkill - Unloopkills the target")
print(";infkill - Loopkills the target, but it doesn't stop. Like at all. Ever.")
print(";rhum - Removes the target's humanoid. (Essentially turns them into a
statue)")
print(";naked - Removes the targets's clothes. (echii)")
print(";removetools - Removes the target's tools")
print()
print('Executing "kick others/etc." wont kick those whitelisted, but if you single
them out it will')
print('If a user is whitelisted he/she will not be able to see commands on their
screen with :cmds,')
print('and the same goes for :bans and :wls, since the game is filtering enabled,
however they will')
print('be able to use commands if whitelisted')
print('You can not be unwhitelisted or banned / kicked')
print("If someone uses the clear / clr command, you must re-apply the script.")
print("Most commands that effect players can be used silently. (Example /e :kick
and /e kick would both work)")
print("------------------------------------------")
print("--Vortexturize | aidez moi | ObitoXDm8OI--")
print("------------Credit to Timeless------------")
print("------------------------------------------")

