local RSGCore = exports['rsg-core']:GetCoreObject()

-----------------------------------------------------------------------
-- version checker
-----------------------------------------------------------------------
local function versionCheckPrint(_type, log)
    local color = _type == 'success' and '^2' or '^1'

    print(('^5['..GetCurrentResourceName()..']%s %s^7'):format(color, log))
end

local function CheckVersion()
    PerformHttpRequest('https://raw.githubusercontent.com/Rexshack-RedM/rsg-herbs/main/version.txt', function(err, text, headers)
        local currentVersion = GetResourceMetadata(GetCurrentResourceName(), 'version')

        if not text then 
            versionCheckPrint('error', 'Currently unable to run a version check.')
            return 
        end

        --versionCheckPrint('success', ('Current Version: %s'):format(currentVersion))
        --versionCheckPrint('success', ('Latest Version: %s'):format(text))
        
        if text == currentVersion then
            versionCheckPrint('success', 'You are running the latest version.')
        else
            versionCheckPrint('error', ('You are currently running an outdated version, please update to version %s'):format(text))
        end
    end)
end

-----------------------------------------------------------------------

RegisterServerEvent('rsg-herbs:addHerbs')
AddEventHandler(
    'rsg-herbs:addHerbs',
    function()
        local src = source
        local Player = RSGCore.Functions.GetPlayer(src)
        local randomNumber = math.random(1, 100)

        if randomNumber > 0 and randomNumber <= 70 then
            local _subRan = math.random(1, 5)
            if _subRan == 1 then
                Player.Functions.AddItem('black_currant', math.random(1, 2))
                TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['black_currant'], 'add')
                TriggerClientEvent('RSGCore:Notify', src, 'you found a black currant')
            elseif _subRan == 2 then
                Player.Functions.AddItem('mint', math.random(1, 2))
                TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['mint'], 'add')
                TriggerClientEvent('RSGCore:Notify', src, 'you found some mint')
            elseif _subRan == 3 then
                Player.Functions.AddItem('carrot', math.random(1, 2))
                TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['carrot'], 'add')
                TriggerClientEvent('RSGCore:Notify', src, 'you found a carrot')
            elseif _subRan == 4 then
                Player.Functions.AddItem('american_ginseng', math.random(1, 2))
                TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['american_ginseng'], 'add')
                TriggerClientEvent('RSGCore:Notify', src, 'you found some american ginseng')
            else
                TriggerClientEvent('RSGCore:Notify', src, 'you failed to find anything')
            end
        elseif randomNumber > 70 and randomNumber <= 100 then
            local _subRan = math.random(1, 4)
            if _subRan == 1 then
                Player.Functions.AddItem('mint', math.random(1, 2))
                TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['mint'], 'add')
                TriggerClientEvent('RSGCore:Notify', src, 'you found some mint')
            elseif _subRan == 2 then
                Player.Functions.AddItem('salt', math.random(1, 2))
                TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['salt'], 'add')
                TriggerClientEvent('RSGCore:Notify', src, 'you found some salt')
            else
                TriggerClientEvent('RSGCore:Notify', src, 'you failed to find anything')
            end
        end
    end
)

--------------------------------------------------------------------------------------------------
-- start version check
--------------------------------------------------------------------------------------------------
CheckVersion()