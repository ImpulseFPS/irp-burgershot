RegisterNetEvent('irp-burgershot:client:OpenMealMenu', function()
    if onDuty then
        exports['qb-menu']:openMenu({
        {
            header = 'Heart stopper Burger',
            txt = 'Meal Menu',
            params = {
                event = 'irp-burgershot:client:MakeFood',
                args = {
                    food = 'stopper'
                }
            }
        },
        {
            header = 'The Bleeder',
            txt = 'Meal Menu',
            params = {
                event = 'irp-burgershot:client:MakeFood',
                args = {
                    food = 'bleeder'
                }
            }
        },
        {
            header = 'Torpedo Meal',
            txt = 'Meal Menu',
            params = {
                event = 'irp-burgershot:client:MakeFood',
                args = {
                    food = 'torpedoMeal'
                }
            }
        },
        {
            header = 'Money Shot Meal',
            txt = 'Meal Menu',
            params = {
                event = 'irp-burgershot:client:MakeFood',
                args = {
                    food = 'moneyMeal'
                }
            }
        },
        {
            header = 'Meat Free Meal',
            txt = 'Meal Menu',
            params = {
                event = 'irp-burgershot:client:MakeFood',
                args = {
                    food = 'veganMeal'
                }
            }
        },
        })
    else
        QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['Not-on-duty'], 'error')
    end
end)

RegisterNetEvent('irp-burgershot:client:OpenOrders', function()
    if onDuty then
        exports['qb-menu']:openMenu({
        {
            header = 'Check Orders from Drive Trew',
            params = {
                event = 'irp-burgershot:client:Orders'
            }
        },
    
        })
    else
        QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['Not-on-duty'], 'error')
    end
end)

RegisterNetEvent('irp-burgershot:client:BeakMenu', function()
    if onDuty then
        exports['qb-menu']:openMenu({
        {
            header = 'Beak Meat',
            params = {
                event = 'irp-burgershot:client:MakeFood',
                args = {
                    food = 'meat',
                }
            }
        },
    
        })
    else
        QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['Not-on-duty'], 'error')
    end
end)

RegisterNetEvent('irp-burgershot:client:DrinksMenu', function()
    if onDuty then
        exports['qb-menu']:openMenu({
        {
            header = 'Soft Drink',
            params = {
                event = 'irp-burgershot:client:MakeDrink',
                args = {
                    drink = 'soft_drink',
                }
            }
        },
        {
            header = 'Coffe',
            params = {
                event = 'irp-burgershot:client:MakeDrink',
                args = {
                    drink = 'coffe',
                }
            }
        },
        {
            header = 'Milk Shake',
            params = {
                event = 'irp-burgershot:client:MakeDrink',
                args = {
                    drink = 'milkshake',
                }
            }
        },
    
        })
    else
        QBCore.Functions.Notify(Config.Translation[Config.Lenguage]['Not-on-duty'], 'error')
    end
end)
