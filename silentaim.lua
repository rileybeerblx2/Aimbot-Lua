SAToggle = O;
 local R = workspace.CurrentCamera;
 local S = game.Players;
 local T = S.LocalPlayer;
 local U = T:GetMouse()function ClosestPlayer()
 local V, W = N;
 for X, Y in pairs(S.GetPlayers(S)) do 
	 if Y==T then
	 end;
	 if Y.Team==T then end;
	 if not Y.Character then end;
	 local Z = Y.Character.FindFirstChild(Y.Character,""..bodypart)
	 if not Z then 
	 end;
	 local _,a0 = R.WorldToScreenPoint(R,Z.Position)
	 if not a0 then
	  end;
	  local a1,a2 = Vector2.new(workspace.CurrentCamera.ViewportSize.X/2, workspace.CurrentCamera.ViewportSize.Y/2), Vector2.new(_.X,_.Y)
	  local a3 = (a2-a1).Magnitude;if a3<V then
		   V=a3;W=Y
		    end 
	  end;
	  return W 
	  end;
	  local a4 = getrawmetatable(game)
	  local a5 = a4.__namecall;
	  local a6 = a4.__index;setreadonly(a4,false)a4.__namecall=newcclosure(function(self,...)
	  local a7,a8 = {...}, getnamecallmethod()
	  if a8=="FindPartOnRayWithIgnoreList" and not checkcaller()and 
	  SAToggle then 
		  local a9 = ClosestPlayer()
		  if a9 and a9.Character and a9.Character.FindFirstChild(a9.Character,bodypart) 
		  then 
			  a7[1] = Ray.new(R.CFrame.Position, (a9.Character[bodypart].Position-R.CFrame.Position).Unit*1000)
			  return a5(self, unpack(a7))
			  end
			   end;
			   return a5(self,...)
			   end)
			   a4.__index = newcclosure(function(self,aa)
			   if aa=="Clips" then 
				   return workspace.Map
				    end;
					return a6(self,aa)
					end)
					setreadonly(a4,true)
					end)
