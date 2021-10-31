local state = false
local Peds = {}
local orders = {}

RegisterNetEvent('irp-burgershot:client:ToggleState', function()
    if onDuty then
        if not state then
            state = true
            QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['drivetrew-open'], 'success')
        else
            state = false
            QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['drivetrew-close'], 'error')
        end
    else
        QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['Not-on-duty'], 'error')
    end
end)

RegisterNetEvent('irp-burgershot:client:DriveTrew:Order', function()
    local input = exports['qb-input']:ShowInput({
        header = "DriveTrew",
        submitText = "Order",
        inputs = {
            {
                text = "Order", 
                name = "order", 
                type = "text", 
                isRequired = true 
            },
            {
                text = "Amount", 
                name = "amount", 
                type = "number", 
                isRequired = true 
            },
        }
    })

    if input then
        if not input.order and not input.amount then return end
        TriggerEvent('irp-burgershot:client:SendOrder', input.order, input.amount)
        QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['order-recived'], 'success')
    end
end)


RegisterNetEvent('irp-burgershot:client:Orders', function()
    local menu = {
        {
            header = '<- Back',
            params = {
                event = 'irp-burgershot:client:OpenOrders'
            }
        }

    }
    for k,v in pairs(orders) do
        menu[#menu + 1] = {
            header = v,
            txt = 'Order ID: ' ..k,
            params = {
                event = 'irp-burgershot:client:Delete',
                args = {
                    order = k,
                }
            }
        }
    end
    exports['qb-menu']:openMenu(menu)
end)

RegisterNetEvent('irp-burgershot:client:SendOrder', function(order, amount)
    table.insert(orders, {order, amount})
    TriggerServerEvent('irp-burgershot:server:Notify', Config.Translation[Config.Lenguage]['Alert'])
end)

RegisterNetEvent('irp-burgershot:client:Delete', function(data)
    table.remove(orders, data.order)
end)


Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		if state then
			local playerCoords = GetEntityCoords(PlayerPedId())
			local distance = #(playerCoords - Config.PedCoords.xyz)

			if distance < 8.0 and not Peds and state then
				local spawnedPed = SpawnPed(Config.Model, Config.PedCoords, 'WORLD_HUMAN_CLIPBOARD')
				Peds = { spawnedPed = spawnedPed }
			end

			if not state or distance >= 8.0 and Peds then
				DeletePed(Peds.spawnedPed)
				Peds = nil
			end
		end
	end
end)

function SpawnPed(model, coords, scenario)
	RequestModel(model)
	while not HasModelLoaded(model) do
		Citizen.Wait(50)
	end

	spawnedPed = CreatePed(4, model, coords.x, coords.y, coords.z, coords.w, false, true)


	FreezeEntityPosition(spawnedPed, true)

	SetEntityInvincible(spawnedPed, true)


    if scenario then
        TaskStartScenarioInPlace(spawnedPed, scenario, 0, true)
    end

	return spawnedPed
end
