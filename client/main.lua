local QBCore = exports['qb-core']:GetCoreObject()
local spawnedVehicles = {}

RegisterNetEvent('Abo3of:client:spawnbmx', function()
    local Player = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()

    if spawnedVehicles[PlayerData.citizenid] and DoesEntityExist(spawnedVehicles[PlayerData.citizenid]) then
        QBCore.Functions.Notify('You already have a bmx out!', 'error')
        return
    end

    local coords = GetEntityCoords(Player)
    local heading = GetEntityHeading(Player)
    
    RequestModel(Config.BicycleModel)
    while not HasModelLoaded(Config.BicycleModel) do
        Wait(10)
    end
    
    local vehicle = CreateVehicle(Config.BicycleModel, coords.x, coords.y, coords.z, heading, true, true)
    spawnedVehicles[PlayerData.citizenid] = vehicle
    
    SetEntityAsMissionEntity(vehicle, true, true)
    TriggerServerEvent('Abo3of:server:removebmx')
    SetVehicleOnGroundProperly(vehicle)
    SetVehicleNumberPlateText(vehicle, 'B' .. math.random(1000, 9999))
    SetVehicleNumberPlateTextIndex(vehicle, 1)
    SetVehicleEngineOn(vehicle, true, true, false)
    SetVehicleFuelLevel(vehicle, 100.0)
    SetVehicleBodyHealth(vehicle, 1000.0)
    SetVehicleEngineHealth(vehicle, 1000.0)
end)

RegisterNetEvent('Abo3of:client:takebmx', function(data)
    local PlayerData = QBCore.Functions.GetPlayerData()
    local vehicle = spawnedVehicles[PlayerData.citizenid]
    local targetedEntity = data.entity

    if vehicle and DoesEntityExist(vehicle) then
        if targetedEntity == vehicle then
            DeleteEntity(vehicle)
            spawnedVehicles[PlayerData.citizenid] = nil
            TriggerServerEvent('Abo3of:server:takebmx')
        else
            QBCore.Functions.Notify('This is not your bmx!', 'error')
        end
    else
        QBCore.Functions.Notify('You don\'t have a bmx out!', 'error')
    end
end)

CreateThread(function()
    exports['qb-target']:AddTargetModel(Config.BicycleModel, {
        options = {
            {
                event = 'Abo3of:client:takebmx',
                icon = 'fas fa-trash',
                label = 'Take bmx',
            },
        },
        distance = 2.5,
    })
end)