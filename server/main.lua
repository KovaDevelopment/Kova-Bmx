local QBCore = exports['qb-core']:GetCoreObject()


RegisterNetEvent('Abo3of:server:takebmx', function()
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.AddItem('bmx', 1)
    TriggerClientEvent('QBCore:Notify', source, 'You picked up your BMX', 'success')
end)

RegisterNetEvent('Abo3of:server:removebmx', function()
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.RemoveItem('bmx', 1)
    TriggerClientEvent('QBCore:Notify', source, 'You placed your BMX', 'success')
end)

QBCore.Functions.CreateUseableItem('bmx', function(source, item)
    TriggerClientEvent('Abo3of:client:spawnbmx', source)
end)