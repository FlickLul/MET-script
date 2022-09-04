getgenv().GetMoney = false;




function GetMoney()
	spawn(function()
        local args = {
            [1] = 9999999999
        }
        
        game:GetService("ReplicatedStorage").RespawnService:FireServer(unpack(args))
        wait()
	end)
end

local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/Rain-Design/Libraries/main/Shaman/Library.lua'))()

local Window = Library:Window({
    Text = "Millionaire Empire Tycoon"
})

local Tab = Window:Tab({
    Text = "Money"
})

local Section = Tab:Section({
    Text = "Get Money"
})

Section:Toggle({
	Text = "Get Money",
	Callback = function(bool)
		getgenv().GetMoney = bool
		while getgenv().GetMoney do
        task.wait()
        GetMoney()
		end
	end
})
