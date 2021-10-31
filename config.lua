Config = Config or {}

-- if you are using simple-banking https://github.com/ImpulseFPS/simple-banking then set this to true 
-- that way busniess account will recive half of the price and the player will get the other half.
Config.SimpleBanking = false -- NOTE THAT YOU NEED TO HAVE JOB NAME IN society table for it to work. other wise there will be errors.

Config.BillDistance = 5.0 -- DISTANCE TO BILL A PLAYER IF PLAYER IS NOT IN 5.0 RANGE REGISTER WONT BE ABEL TO BILL THE TARGET PLAYER

Config.PedCoords = vector4(-1205.15, -899.16, 13.1 - 1.0, 80.27) -- CORDS FOR DRIVE TREW PED
Config.Model = `u_m_y_burgerdrug_01` -- PED MODE TO SPAWN

Config.Lenguage = 'EN' -- CHOSE THE LENGUAGE YOU WANT TO USE.
Config.Translation = { -- IF THERE IS NOT YOUR LEANGUAGE HERE PLEASE CONTACT ME WITH TRANSALTED CONFIG.LUA SO I CAN UPDATE IT WITH YOUR LENGUAGE
    ['EN'] = {
        ['Canceled'] = "Canceled.", -- canceled notify
        ['No-Items'] = 'You dont have the right items.', -- FOR MULTIPLE ITEMS
        ['No-Item'] = 'You dont have the right item.', -- FOR SINGLE ITEM 
        ['No-Money-Target'] = 'You dont have money to pay for this', -- target has no money to pay
        ['Not-Near'] = 'Person is not near you.', -- if the person is not in range
        ['drivetrew-open'] = 'Drive Trew is Open.', -- when toggling drive trew state
        ['drivetrew-close'] = 'Drive Trew is Closed.', -- when toggling drive trew state
        ['Alert'] = 'New Order in Drive Trew, Dont keep the customer waiting.', -- GLOBAL ALERT FOR EVERYONE WITH BURGERSHOT JOB AND IF THEY ARE ON DUTY
        ['order-recived'] = 'Your order has been sent please go to do window and wait.', -- NOTIFY FOR PLAYER THAT ORDERED
        ['Not-on-duty'] = 'You are not on duty.', -- Notify player when he is not on duty and trying to work.
        ['duty-true'] = 'You are now on Duty.', -- Duty state is true
        ['duty-false'] = 'You are now off duty.' -- Duty state if false
    },
}