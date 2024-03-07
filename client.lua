RegisterNetEvent('esx:playerLoaded', function(data)
    welcomeOpen(data)
    welcomeClose(data) 
end)

RegisterNetEvent('esx:onPlayerSpawn', function(data)
    welcomeOpen(data)
    welcomeClose(data) 
end)

function welcomeOpen(data) 
    SendNUIMessage({
        type = 'welcome_open',
    })
    SetNuiFocus(true, true)
    SetCursorLocation(0.5, 0.5) 
end

function welcomeClose(data) 
    SendNUIMessage({
        type = 'welcome_close',
    })
    SetNuiFocus(false, false)
    SetCursorLocation(0.5, 0.5) 
end
