local usedColor = Config.defaultColor

if Config.testCommands then
    RegisterCommand('testbar1', function(src,args,raw)
        run(8,'Drink', "#1E91BB")
    end, false)

    RegisterCommand('testbar2', function(src,args,raw)
        run(10,'Lockpicking..', "#7F8B90")
    end, false)

    RegisterCommand('testbar3', function(src,args,raw)
        run(5,'Fix the car..', "#9060DE")
    end, false)
end

function run(time, text, color)
    SendNUIMessage({
        action = 'run',
        time = time,
        text = text,
        color = color or usedColor,
    })
end

function stop()
    SendNUIMessage({
        action = 'stop',
    })
end

RegisterNUICallback('notif', function(data)
	Notify(data.text, "error")
end)

function Notify(text,type)
    if Config.useMythic then
        exports['mythic_notify']:SendAlert(type, text, 8000)
    elseif Config.useQB then
        TriggerEvent('QBCore:Notify', text, type)
    elseif Config.useESX then
        TriggerEvent('esx:showNotification', text)
    else
    end
end
