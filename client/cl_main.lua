QBCore = exports['qb-core']:GetCoreObject()
onDuty = false
local inLoggedIn = true
local PlayerJob = {}


RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    isLoggedIn = true
	PlayerJob = QBCore.Functions.GetPlayerData().job
    CreateThread(function()
        Wait(1000)
        QBCore.Functions.GetPlayerData(function(PlayerData)
            PlayerJob = PlayerData.job
            onDuty = PlayerData.job.onduty
        end)
    end)
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
	isLoggedIn = false
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
end)

RegisterNetEvent('QBCore:Client:SetDuty', function(duty)
    onDuty = duty
end)

-- CODE

RegisterNetEvent('irp-burgershot:client:ToggleDuty', function()
    if onDuty then
        TriggerEvent('QBCore:Client:SetDuty', false)
        QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['duty-false'])
    else
        TriggerEvent('QBCore:Client:SetDuty', true)
        QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['duty-true'])
    end
end)

RegisterNetEvent('irp-burgershot:client:CashRegister', function()
    if onDuty then
        local input = exports['qb-input']:ShowInput({
        header = "Register",
        submitText = "Bill",
        inputs = {
            {
                text = "Player ID", 
                name = "playerid", 
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
        if not input.playerid and not input.amount then return end
        TriggerServerEvent('irp-burgershot:server:BillPlayer', input.amount, input.playerid)
        end
    else
        QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['Not-on-duty'], 'error')
    end
end)


RegisterNetEvent('irp-burgershot:client:MakeFood', function(type)
    local meal = type.food
    
    if meal == 'stopper' then
        MakeHeartStopper()
    elseif meal == 'bleeder' then
        MakeBleeder()
    elseif meal == 'torpedoMeal' then
        MakeTorpedoMeal()
    elseif meal == 'moneyMeal' then
        MakeMoneyShotMeal()
    elseif meal == 'veganMeal' then
        MakeMeatFreeMeal()
    elseif meal == 'meat' then
        BeakMeat()
    end
end)

RegisterNetEvent('irp-burgershot:client:MakeDrink', function(type)
    local drink = type.drink

    if drink == 'soft_drink' then
        MakeSoftDrink()
    elseif drink == 'coffe' then
        MakeCoffe()
    elseif drink == 'milkshake' then
        MakeMilkShake()
    end
end)

RegisterNetEvent('irp-burgershot:client:SendAlert', function(text)
    QBCore.Functions.Notify(text, 'primary', 10000)
end)

RegisterNetEvent('irp-burgershot:client:UseItem', function(item)
    print(item)
    if item == 'milkshake' then
        DrinkShake()
    elseif item == 'soft_drink' then
        DrinkSoft()
    elseif item == 'burger_coffe' then
        DrinkCoffe()
    elseif item == 'money_shot' then
        EatMoneyShot()
    elseif item == 'heart_stopper' then
        EatStopper()
    elseif item == 'bleeder' then
        EatBleeder()
    elseif item == 'torpedo' then
        EatTropedo()
    elseif item == 'meat_free' then
        EatMeatFree()
    end
end)