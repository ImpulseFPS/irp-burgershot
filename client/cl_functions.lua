function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Citizen.Wait(5)
    end
end


function MakeHeartStopper()
    local ped = PlayerPedId()
    local inveh = IsPedInAnyVehicle(ped)
    if inveh then return end
    QBCore.Functions.TriggerCallback('irp-burgershot:server:GetMealItems', function(hasItem)
        if hasItem then
            loadAnimDict('amb@prop_human_bbq@male@base')
            TaskPlayAnim(ped, 'amb@prop_human_bbq@male@base', "base", 1.0, 1.0, -1, 1, -1, false, false, false)
            QBCore.Functions.Progressbar("burgershot", "Heart Stopper", 12000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function()
                ClearPedTasks(ped)
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['heart_stopper'], 'add')
                TriggerServerEvent('QBCore:Server:AddItem', 'heart_stopper', 1)
                TriggerServerEvent('irp-burgershot:server:RemoveMealItems', 'normal')
            end, function() -- Cancel
                ClearPedTasks(ped)
                QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['Canceled'], "error")
            end)
        else
            QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['No-Items'], 'error')
        end
    end, 'normal')
end

function MakeBleeder()
    local ped = PlayerPedId()
    local inveh = IsPedInAnyVehicle(ped)
    if inveh then return end
    QBCore.Functions.TriggerCallback('irp-burgershot:server:GetMealItems', function(hasItem)
        if hasItem then
            loadAnimDict('amb@prop_human_bbq@male@base')
            TaskPlayAnim(ped, 'amb@prop_human_bbq@male@base', "base", 1.0, 1.0, -1, 1, -1, false, false, false)
            QBCore.Functions.Progressbar("burgershot", "Bleeder", 12000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function()
                ClearPedTasks(ped)
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['bleeder'], 'add')
                TriggerServerEvent('QBCore:Server:AddItem', 'bleeder', 1)
                TriggerServerEvent('irp-burgershot:server:RemoveMealItems', 'normal')
            end, function() -- Cancel
                ClearPedTasks(ped)
                QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['Canceled'], "error")
            end)
        else
            QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['No-Items'], 'error')
        end
    end, 'normal')
end

function MakeTorpedoMeal()
    local ped = PlayerPedId()
    local inveh = IsPedInAnyVehicle(ped)
    if inveh then return end
    QBCore.Functions.TriggerCallback('irp-burgershot:server:GetMealItems', function(hasItem)
        if hasItem then
            loadAnimDict('amb@prop_human_bbq@male@base')
            TaskPlayAnim(ped, 'amb@prop_human_bbq@male@base', "base", 1.0, 1.0, -1, 1, -1, false, false, false)
            QBCore.Functions.Progressbar("burgershot", "Torpedo", 12000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function()
                ClearPedTasks(ped)
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['torpedo'], 'add')
                TriggerServerEvent('QBCore:Server:AddItem', 'torpedo', 1)
                TriggerServerEvent('irp-burgershot:server:RemoveMealItems', 'normal')
            end, function() -- Cancel
                ClearPedTasks(ped)
                QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['Canceled'], "error")
            end)
        else
            QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['No-Items'], 'error')
        end
    end, 'normal')
end

function MakeMoneyShotMeal()
    local ped = PlayerPedId()
    local inveh = IsPedInAnyVehicle(ped)
    if inveh then return end
    QBCore.Functions.TriggerCallback('irp-burgershot:server:GetMealItems', function(hasItem)
        if hasItem then
            loadAnimDict('amb@prop_human_bbq@male@base')
            TaskPlayAnim(ped, 'amb@prop_human_bbq@male@base', "base", 1.0, 1.0, -1, 1, -1, false, false, false)
            QBCore.Functions.Progressbar("burgershot", "Money Shot", 12000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function()
                ClearPedTasks(ped)
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['money_shot'], 'add')
                TriggerServerEvent('QBCore:Server:AddItem', 'money_shot', 1)
                TriggerServerEvent('irp-burgershot:server:RemoveMealItems', 'normal')
            end, function() -- Cancel
                ClearPedTasks(ped)
                QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['Canceled'], "error")
            end)
        else
            QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['No-Items'], 'error')
        end
    end, 'normal')
end

function MakeMeatFreeMeal()
    local ped = PlayerPedId()
    local inveh = IsPedInAnyVehicle(ped)
    if inveh then return end
    QBCore.Functions.TriggerCallback('irp-burgershot:server:GetMealItems', function(hasItem)
        if hasItem then
            loadAnimDict('amb@prop_human_bbq@male@base')
            TaskPlayAnim(ped, 'amb@prop_human_bbq@male@base', "base", 1.0, 1.0, -1, 1, -1, false, false, false)
            QBCore.Functions.Progressbar("burgershot", "Meat Free", 12000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function()
                ClearPedTasks(ped)
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['meat_free'], 'add')
                TriggerServerEvent('QBCore:Server:AddItem', 'meat_free', 1)
                TriggerServerEvent('irp-burgershot:server:RemoveMealItems', 'meatfree')
            end, function() -- Cancel
                ClearPedTasks(ped)
                QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['Canceled'], "error")
            end)
        else
            QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['No-Items'], 'error')
        end
    end, 'meatfree')
end

function BeakMeat()

    QBCore.Functions.TriggerCallback('irp-burgershot:server:GetItem', function(Item)
        if Item then
            TriggerEvent('animations:client:EmoteCommandStart', {"bbq"})
            QBCore.Functions.Progressbar("burgershot", "Bakeing", 22000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function()
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['beak_meat'], 'add')
                TriggerServerEvent('QBCore:Server:AddItem', 'beak_meat', 1)
                TriggerServerEvent('QBCore:Server:RemoveItem', 'meat', 1)
            end, function() -- Cancel
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['Canceled'], "error")
            end)
        else
            QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['No-Item'], 'error')
        end
    end, 'meat')
end

function MakeSoftDrink()

    QBCore.Functions.TriggerCallback('irp-burgershot:server:GetItem', function(Item)
        if Item then
            QBCore.Functions.Progressbar("burgershot", "Soft Drink", 6000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function()
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['soft_drink'], 'add')
                TriggerServerEvent('QBCore:Server:AddItem', 'soft_drink', 1)
                TriggerServerEvent('QBCore:Server:RemoveItem', 'empty_cup', 1)
            end, function() -- Cancel
                QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['Canceled'], "error")
            end)
        else
            QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['No-Item'], 'error')
        end
    end, 'empty_cup')
end

function  MakeCoffe()
    
    QBCore.Functions.TriggerCallback('irp-burgershot:server:GetItem', function(Item)
        if Item then
            QBCore.Functions.Progressbar("burgershot", "Coffe", 6000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function()
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['burger_coffe'], 'add')
                TriggerServerEvent('QBCore:Server:AddItem', 'burger_coffe', 1)
                TriggerServerEvent('QBCore:Server:RemoveItem', 'empty_cup', 1)
            end, function() -- Cancel
                QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['Canceled'], "error")
            end)
        else
            QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['No-Item'], 'error')
        end
    end, 'empty_cup')
end

function MakeMilkShake()

    QBCore.Functions.TriggerCallback('irp-burgershot:server:GetItem', function(Item)
        if Item then
            QBCore.Functions.Progressbar("burgershot", "Milk Shake", 6000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function()
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['milkshake'], 'add')
                TriggerServerEvent('QBCore:Server:AddItem', 'milkshake', 1)
                TriggerServerEvent('QBCore:Server:RemoveItem', 'empty_cup', 1)
            end, function() -- Cancel
                QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['Canceled'], "error")
            end)
        else
            QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['No-Item'], 'error')
        end
    end, 'empty_cup')
end

function DrinkShake()

    TriggerEvent('animations:client:EmoteCommandStart', {"cup"})
    QBCore.Functions.Progressbar("burgershot", "Drink", 8000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + math.random(11, 26))
        TriggerServerEvent('hud:server:RelieveStress', math.random(1, 3))
    end, function() -- Cancel
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['Canceled'], "error")
    end)
end

function DrinkSoft()

    TriggerEvent('animations:client:EmoteCommandStart', {"cup"})
    QBCore.Functions.Progressbar("burgershot", "Drink", 6000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + math.random(10, 25))
    end, function() -- Cancel
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['Canceled'], "error")
    end)
end

function DrinkCoffe()

    TriggerEvent('animations:client:EmoteCommandStart', {"cup"})
    QBCore.Functions.Progressbar("burgershot", "Drink", 12000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + math.random(11, 26))
        TriggerServerEvent('hud:server:RelieveStress', math.random(4, 6))
    end, function() -- Cancel
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['Canceled'], "error")
    end)
end

function EatMoneyShot()
    TriggerEvent('animations:client:EmoteCommandStart', {"burger"})
    QBCore.Functions.Progressbar("burgershot", "Eating", 8000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + math.random(15, 30))
        TriggerServerEvent('hud:server:RelieveStress', math.random(3, 7))
    end, function() -- Cancel
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['Canceled'], "error")
    end)
end

function EatStopper()
    TriggerEvent('animations:client:EmoteCommandStart', {"burger"})
    QBCore.Functions.Progressbar("burgershot", "Eating", 8000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + math.random(20, 40))
        TriggerServerEvent('hud:server:RelieveStress', math.random(3, 7))
    end, function() -- Cancel
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['Canceled'], "error")
    end)
end

function EatBleeder()
    TriggerEvent('animations:client:EmoteCommandStart', {"burger"})
    QBCore.Functions.Progressbar("burgershot", "Eating", 8000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + math.random(18, 34))
        TriggerServerEvent('hud:server:RelieveStress', math.random(3, 7))
    end, function() -- Cancel
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['Canceled'], "error")
    end)
end

function EatTropedo()
    TriggerEvent('animations:client:EmoteCommandStart', {"sandwich"})
    QBCore.Functions.Progressbar("burgershot", "Eating", 8000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + math.random(14, 26))
        TriggerServerEvent('hud:server:RelieveStress', math.random(3, 7))
    end, function() -- Cancel
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['Canceled'], "error")
    end)
end

function EatMeatFree()
    TriggerEvent('animations:client:EmoteCommandStart', {"burger"})
    QBCore.Functions.Progressbar("burgershot", "Eating", 8000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + math.random(11, 23))
        TriggerServerEvent('hud:server:RelieveStress', math.random(3, 7))
    end, function() -- Cancel
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['Canceled'], "error")
    end)
end