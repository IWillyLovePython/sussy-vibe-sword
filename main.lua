--PRESS THE KEYBIND TO RE-EQUIP THE SWORD
local plr = tostring(game.Players.LocalPlayer.Name)
local keybind = Enum.KeyCode.T



game.Players.LocalPlayer.Character.ChildAdded:Connect(function(child) 
    if tostring(child) == "Sword" then
        repeat wait() until pcall(function() game.Workspace[plr].Sword["Auto-equip tools script [place on a tool]"].Disabled = true end)
    end
end)


game.Players.LocalPlayer.Character.ChildRemoved:Connect(function(tool) 
    if tostring(tool) == "Sword" then
        if game.Players.LocalPlayer.Backpack:FindFirstChild("Sword") then

        else
            wait()
            firetouchinterest(game:GetService("Workspace").BUILDINGS["Sword Fight Fixed"]["Sword fight"]["tool giver"].Pad, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
            firetouchinterest(game:GetService("Workspace").BUILDINGS["Sword Fight Fixed"]["Sword fight"]["tool giver"].Pad, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
        end
    end
end)
game:GetService("UserInputService").InputBegan:Connect(function(InputObject, GameProcessedEvent)
    if GameProcessedEvent then return end
    if InputObject.KeyCode == keybind then
        firetouchinterest(game:GetService("Workspace").BUILDINGS["Sword Fight Fixed"]["Sword fight"]["tool giver"].Pad, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
        firetouchinterest(game:GetService("Workspace").BUILDINGS["Sword Fight Fixed"]["Sword fight"]["tool giver"].Pad, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
    end
end)
