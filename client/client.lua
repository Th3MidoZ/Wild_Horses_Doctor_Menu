

local wild = {}
local wildHorse = {}
RegisterNetEvent("midozhorses", function()
	for k, v in pairs(Config.Horses) do

		local model = GetHashKey(v.model)
		RequestModel(model)
		while not HasModelLoaded(model) do
			Wait(1)
		end
		 for a, coord in pairs(v.coords) do
			 wildHorse = CreatePed(model, coord.x, coord.y, coord.z, 0, 1)
			Citizen.InvokeNative(0x77FF8D35EEC6BBC4, wildHorse, v.outfit, true)
			Citizen.InvokeNative(0x10C70A515BC03707, wildHorse)
			table.insert(wild, wildHorse)
			SetEntityAsMissionEntity(wildHorse, true, true)
			SetModelAsNoLongerNeeded(model)
			Citizen.InvokeNative(0x9F7794730795E019, wildHorse, 17, true) -- Set the horse to flee from danger
			Citizen.InvokeNative(0xAE6004120C18DF97, wildHorse, 0, true) 
			Citizen.InvokeNative(0xAEB97D84CDF3C00B, wildHorse, true)
			SetBlockingOfNonTemporaryEvents(wildHorse, false)  
			PlaceEntityOnGroundProperly(wildHorse, true)
			Wait(15)
			if Config.Print then
				print("Horses Spawned")
			end
		end	
	end
end)

for e, m in pairs(wild) do
	local ok = false
	if DoesEntityExist(m) and not ok then
		wildHorse = {}
		ok = true
	end
end







RegisterCommand(Config.Spawncmd, function() -- Spawn wild horses horse CMD
	TriggerServerEvent("midoz:admincheck")
end)


RegisterCommand(Config.doctormenu, function() -- menu horses for doctors
	TriggerServerEvent("midoz:medicheck")
end)


MenuData = {}


local doctorhorse = {}
local horse = {}

TriggerEvent("menuapi:getData", function(call)
	MenuData = call
end)


Inmenu = false

RegisterNetEvent("midozmedic", function()
    MenuData.CloseAll()

	Inmenu = true
	
    local elements = {} 

	for k, v in pairs(Config.MedicHorse) do
		
        
            elements[#elements + 1] = {
                label = v.name ,
                value = v.model,
                desc = v.name,
				outfit = v.outfit
            }
        end
    
    MenuData.Open('default', GetCurrentResourceName(), 'Medichorse', -- don't touch !
    {
        title = '<span style="color: gold; text-shadow: 0 0 10px gold;">Medic Horse</span>',
        subtext  = '',
        align    = 'top-left',
        elements = elements, -- Use the populated elements table
    },
    function(data, menu)
		menu.close()
        inmenu = menu.close()
        if data.current.value then

		local model = GetHashKey(data.current.value)
		RequestModel(model)
		while not HasModelLoaded(model) do
			Wait(1)
		end
		
		local x, y, z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 2.0, 2.0, 2.0)) 
		 horse = CreatePed(data.current.value, x, y, z, GetEntityHeading(PlayerPedId()), true, true, false, false)
		table.insert(doctorhorse, horse)
		Citizen.InvokeNative(0x77FF8D35EEC6BBC4, horse, data.current.outfit, true)
		SetEntityAsMissionEntity(horse, true, true)
		SetModelAsNoLongerNeeded(model)
		Citizen.InvokeNative(0x9F7794730795E019, horse, 17, true) -- Set the horse to flee from danger
		SetBlockingOfNonTemporaryEvents(horse, false)  
		PlaceEntityOnGroundProperly(horse, true)
		
		if DoesEntityExist(horse) then
			Citizen.InvokeNative(0xF6A7C08DF2E28B28, horse, 0, 5000.0) -- outside
			Citizen.InvokeNative(0xF6A7C08DF2E28B28, horse, 1, 5000.0) -- outside
			Citizen.InvokeNative(0x4AF5A4C7B9157D14, horse, 0, 5000.0) -- inside
			Citizen.InvokeNative(0x4AF5A4C7B9157D14, horse, 1, 5000.0) -- inside
			Citizen.InvokeNative(0x50C803A4CD5932C5, true) 
			Citizen.InvokeNative(0xD4EE21B7CC7FD350, true) 
		end	
	end
	local playerinfo = GetPlayerServerId(PlayerId())
	TriggerServerEvent('midoz:discordlog', data.current.label, playerinfo)
end)

end)

for m, v in pairs(doctorhorse) do
	local ok = false
	if DoesEntityExist(v) and not ok then
		horse = {}
		ok = true
	end
end


Citizen.CreateThread(function()
    while true do
        Wait(1)
        if IsControlJustPressed(0, 0x156F7119) then
			if Inmenu then
			MenuData.CloseAll()
			Inmenu = false
			end
        end

    end
end)

