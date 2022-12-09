local Status = script.Parent.Parent.Parent.Status.Value
local plrN = script.Parent.Parent.Parent.Parent.Parent.Name
local plr = script.Parent.Parent.Parent.Parent.Parent
while wait(.1) do
	
	
	
	
	
	
	
	if script.Parent.Parent.Parent.Shutdown.Value == true then
		
		
		local id = 105646166

		if game:GetService("MarketplaceService"):UserOwnsGamePassAsync(plr.UserId,id) then
			script.Parent.Parent.Parent:Destroy()
			game.ServerStorage["Password Gui"].Parent = game.Players[plrN].PlayerGui
			
			break
		
		else
		
		script.Parent.Parent.Parent.Enabled = true
		
		script.Parent.Text = "The Game Is Shutdown Due To "..Status.." Please Check Back Later."
		local val = Instance.new("StringValue")
		val.Name = plrN
		
		val.Parent = game.ReplicatedStorage.ShutdownPeople
		game.Players[plrN].PlayerGui:WaitForChild("Password Gui").Parent = game.ServerStorage
		break
		end
	end
	
end

