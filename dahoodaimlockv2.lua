getgenv().Target = true -- for locking onto the enemy
getgenv().Prediction = 0.125
getgenv().notification = true -- notificiation mode
getgenv().showdot = true -- turn this on for blatant mode (regular mode is not good why would i use it)
getgenv().airshotfunc = false -- idk if u want to use this (use if u want)
getgenv().part = "HumanoidRootPart" -- part (self explanitory)
getgenv().AutoPrediction = false

local Tool = Instance.new("Tool")
Tool.RequiresHandle = false
Tool.Name = "Riley Aim Lock V2"
Tool.Parent = game.Players.LocalPlayer.Backpack

local player = game.Players.LocalPlayer

local function connectCharacterAdded()
    player.CharacterAdded:Connect(onCharacterAdded)
end

connectCharacterAdded()

player.CharacterRemoving:Connect(function()
    Tool.Parent = game.Players.LocalPlayer.Backpack
end)

       --
       _G.Types = {
        Ball = Enum.PartType.Ball,
        Block = Enum.PartType.Block, 
        Cylinder = Enum.PartType.Cylinder
    }
    
    --variables                 
    	local Tracer = Instance.new("Part", game.Workspace)
    Tracer.Name = "gay"	
    Tracer.Anchored = true		
    Tracer.CanCollide = false
    Tracer.Transparency = 0.8
    Tracer.Parent = game.Workspace	
    Tracer.Shape = _G.Types.Block
    Tracer.Size = Vector3.new(14,14,14)
    Tracer.Color = Color3.fromRGB(0,0,255)
    
    --
    local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()
local Runserv = game:GetService("RunService")

circle = Drawing.new("Circle")
circle.Color = Color3.fromRGB(255,255,255)
circle.Thickness = 0
circle.NumSides = 732
circle.Radius = 120
circle.Thickness = 0
circle.Transparency = 0.7
circle.Visible = false
circle.Filled = false

Runserv.RenderStepped:Connect(function()
    circle.Position = Vector2.new(mouse.X,mouse.Y+35)
end)
    
    	local guimain = Instance.new("Folder", game.CoreGui)
    	local CC = game:GetService"Workspace".CurrentCamera
    local LocalMouse = game.Players.LocalPlayer:GetMouse()
    	local Locking = false
    
    	
    --
    if getgenv().valiansh == true then
        game.StarterGui:SetCore("SendNotification", {
   Title = "Riley Aim Lock",
   Text = "Already Loaded!",
   Duration = 5

   })
return
end
    
    getgenv().valiansh = true
    
        local UserInputService = game:GetService("UserInputService")

             Tool.Activated:Connect(function()
               if getgenv().Target == true then
               Locking = not Locking
               
               if Locking then
               Plr =  getClosestPlayerToCursor()
               if getgenv().notification then
    			game.StarterGui:SetCore("SendNotification", {
        Title = "tyrone";
        Text = "Target: "..tostring(Plr.Character.Humanoid.DisplayName);
        Icon = "http://www.roblox.com/asset/?id=8850953349";
    
    })
    end
    elseif not Locking then
        if getgenv().notification then
                        game.StarterGui:SetCore("SendNotification", {
                   Title = "Riley Aim Lock",
                   Text = "Unlocked",
                   Icon = "http://www.roblox.com/asset/?id=8850953349";
                   Duration = 5
               })
           elseif getgenv().Target == false then
                        game.StarterGui:SetCore("SendNotification", {
                   Title = "",
                   Text = "Target isn't enabled",
                   Duration = 5
     
                   })
               
               end
                  
 
 
end
end
end)
	
	function getClosestPlayerToCursor()
		local closestPlayer
		local shortestDistance = circle.Radius

		for i, v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("LowerTorso") then
				local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
				local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(LocalMouse.X, LocalMouse.Y)).magnitude
				if magnitude < shortestDistance then
					closestPlayer = v
					shortestDistance = magnitude
				end
			end
		end
		return closestPlayer
	end
--
if getgenv().showdot == true then
	game:GetService"RunService".Stepped:connect(function()
		if Locking and Plr.Character and Plr.Character:FindFirstChild("LowerTorso") then
			Tracer.CFrame = CFrame.new(Plr.Character.LowerTorso.Position+(Plr.Character.LowerTorso.Velocity*Prediction))
		else
			Tracer.CFrame = CFrame.new(0, 9999, 0)

		end
	end)
end

    
    
    --
	local rawmetatable = getrawmetatable(game)
	local old = rawmetatable.__namecall
	setreadonly(rawmetatable, false)
	rawmetatable.__namecall = newcclosure(function(...)
		local args = {...}
		if Locking and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
			args[3] = Plr.Character[getgenv().part].Position+(Plr.Character[getgenv().part].Velocity*Prediction)
			return old(unpack(args))
		end
		return old(...)
	end)
    if getgenv().airshotfunc == true then

        if Plr.Character.Humanoid.Jump == true and Plr.Character.Humanoid.FloorMaterial == Enum.Material.Air then
            getgenv().part = "RightFoot"
        else
            Plr.Character:WaitForChild("Humanoid").StateChanged:Connect(function(old,new)
                if new == Enum.HumanoidStateType.Freefall then
                getgenv().part = "RightFoot"
                else
                    getgenv().part = "LowerTorso"
                end
            end)
        end
    end


if getgenv().AutoPrediction == true then
    wait(5.2)
        local pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
        local split = string.split(pingvalue,'(')
        local ping = tonumber(split[1])
            local PingNumber = pingValue[1]

 if  ping < 250 then
        getgenv().Prediction = 0.1411
        elseif ping < 150 then
            getgenv().Prediction = 0.1411
        elseif ping < 130 then
            getgenv().Prediction = 0.1411
        elseif ping < 120 then
            getgenv().Prediction = 0.1411
        elseif ping < 110 then
            getgenv().Prediction = 0.1411
        elseif ping < 105 then
            getgenv().Prediction = 0.1411
        elseif ping < 90 then
            getgenv().Prediction = 0.1411
        elseif ping < 80 then
            getgenv().Prediction = 0.1411
        elseif ping < 70 then
            getgenv().Prediction = 0.1347
        elseif ping < 60 then
            getgenv().Prediction = 0.1299390
        elseif ping < 50 then
            getgenv().Prediction = 0.1347
        elseif ping < 40 then
            getgenv().Prediction = 0.125
        end
    end
