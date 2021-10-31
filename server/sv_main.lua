local QBCore = exports['qb-core']:GetCoreObject()


RegisterServerEvent('irp-burgershot:server:BillPlayer', function(amount, id)
    local src = source
    if not src then return end

    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    local playerPed = GetPlayerPed(src)
 
    local Target = QBCore.Functions.GetPlayer(tonumber(id))
    if not Target then return end

    local tSrc = Target.PlayerData.source
    local targetPed = GetPlayerPed(tSrc)
    local dist = #(GetEntityCoords(playerPed) - GetEntityCoords(targetPed))
    local half = math.ceil(tonumber(amount) / 100 * 50) -- gives player half of the money and deposits half of the money to society
    local default = math.ceil(tonumber(amount) / 100 * 75) -- fives player 75% of the total amount

    if tSrc == src then return end

    if dist < Config.BillDistance then
        if Target.PlayerData["money"]["cash"] >= tonumber(amount) then
            Target.Functions.RemoveMoney('cash', tonumber(amount))
            if Config.SimpleBanking then
                TriggerEvent('qb-banking:society:server:DepositMoney', tSrc, half , "burgershot")
                Player.Functions.AddMoney('cash', half)
            else
                Player.Functions.AddMoney('cash', default)
            end
        else
            TriggerClientEvent('QBCore:Notify', tSrc, Config.Translation[Config.Lenguage]['No-Money-Target'], 'error')
        end
    else
        TriggerClientEvent('QBCore:Notify', src, Config.Translation[Config.Lenguage]['Not-Near'], 'error')
    end
end)

RegisterServerEvent('irp-burgershot:server:RemoveMealItems', function(type)
    local src = source
    if not src then return end
    local player = QBCore.Functions.GetPlayer(src)
    if not player then return end

    local meat = player.Functions.GetItemByName('beak_meat')
    local bread = player.Functions.GetItemByName('bread')
    local salad = player.Functions.GetItemByName('salad')

    if type == 'normal' then
        if meat ~= nil and bread ~= nil and salad ~= nil then
            player.Functions.RemoveItem('beak_meat',1)
            player.Functions.RemoveItem('bread',1)
            player.Functions.RemoveItem('salad',1)
        end
    elseif type == 'meatfree' then
        if bread ~= nil and salad ~= nil then
            player.Functions.RemoveItem('bread',1)
            player.Functions.RemoveItem('salad',1)
        end
    end
end)

QBCore.Functions.CreateCallback('irp-burgershot:server:GetItem', function(source, cb, items) -- GET THE ITEM FROM CLIENT SIDE
    local src = source
    if not src then return end
    local player = QBCore.Functions.GetPlayer(src)
    if not player then return end

    local item = player.Functions.GetItemByName(items)

    if item ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('irp-burgershot:server:GetMealItems', function(source, cb, type)
    local src = source
    if not src then return end
    local player = QBCore.Functions.GetPlayer(src)
    if not player then return end

    if type == 'normal' then
        local meat = player.Functions.GetItemByName('beak_meat')
        local bread = player.Functions.GetItemByName('bread')
        local salad = player.Functions.GetItemByName('salad')

        if meat ~= nil and bread ~= nil and salad ~= nil then
            cb(true)
        else
            cb(false)
        end
    elseif type == 'meatfree' then
        local bread = player.Functions.GetItemByName('bread')
        local salad = player.Functions.GetItemByName('salad')

        if bread ~= nil and salad ~= nil then
            cb(true)
        else
            cb(false)
        end
    end
end)

RegisterServerEvent('irp-burgershot:server:Notify', function(text)
    local src = source
    local ped = GetPlayerPed(src)
    local coords = GetEntityCoords(ped)
    local players = QBCore.Functions.GetQBPlayers()
    for k,v in pairs(players) do
        if v.PlayerData.job.name == 'burgershot' and v.PlayerData.job.onduty then
            TriggerClientEvent('irp-burgershot:client:SendAlert', v.PlayerData.source, text)
        end
    end
end)

RegisterServerEvent('irp-burgershot:server:GiveCup', function()
    local src = source
    if not src then return end 
    local player = QBCore.Functions.GetPlayer(src)
    if not player then return end

    player.Functions.AddItem('empty_cup', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['empty_cup'], 'add')
end)

-- ITEMS


QBCore.Functions.CreateUseableItem("milkshake", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent('irp-burgershot:client:UseItem', source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("soft_drink", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent('irp-burgershot:client:UseItem', source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("burger_coffe", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent('irp-burgershot:client:UseItem', source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("money_shot", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent('irp-burgershot:client:UseItem', source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("heart_stopper", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent('irp-burgershot:client:UseItem', source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("bleeder", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent('irp-burgershot:client:UseItem', source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("torpedo", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent('irp-burgershot:client:UseItem', source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("meat_free", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent('irp-burgershot:client:UseItem', source, item.name)
    end
end)