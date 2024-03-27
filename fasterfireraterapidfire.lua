local as=game.ReplicatedStorage;
	  for ar, O in pairs(as.Weapons:GetDescendants())
	  do
		   if O.Name=="Auto"
		   then O.Value = true 
		   end;
		   if O.Name == "RecoilControl" then
			    O.Value = 0 
				end;
				if O.Name == "MaxSpread" then
					 O.Value = 0
					  end;
					 if O.Name == "ReloadTime" then 
						 O.Value = 0 
						 end;
						 if O.Name == "FireRate"
						 then O.Value = 0.05
						  end;
						  if O.Name == "Crit"
						  then 
							  O.Value = 20
							   end 
							   end 
							   end)
							   
