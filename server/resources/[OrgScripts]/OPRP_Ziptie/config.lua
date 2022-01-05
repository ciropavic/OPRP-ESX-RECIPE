config = {}
config.max_distance = 5 -- max distance the player can be from someone
config.sound_vol = 0.6

-- perms based -- 
config.enable_perms = false
config.ace_perm = "nat_zip"

-- example below
-- add_ace group.admin nat_zip allow # allow zip commands


-- do not touch below -- 
function Closetplayer()
    local ped = PlayerPedId()
    for _, Player in ipairs(GetActivePlayers()) do
        if GetPlayerPed(Player) ~= GetPlayerPed(-1) then
            local Ped2 = GetPlayerPed(Player)
            local x, y, z = table.unpack(GetEntityCoords(ped))
            if (GetDistanceBetweenCoords(GetEntityCoords(Ped2), x, y, z) <  config.max_distance) then
                local playerId = GetPlayerServerId(Player);
                return playerId;
            end
        end
    end
    return false;
end