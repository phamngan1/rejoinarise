-- Mày lấy script từ đây là roblox quét chết cụ m đấy
local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local PLACE_ID = 126884695634066
local TARGET_TIMESTAMP = os.time({
    year = 2025,
    month = 4,
    day = 29,
    hour = 7,
    min = 30,
    sec = 0,
    isdst = false
})

local function hasEarlyPlayer()
    for _, p in ipairs(Players:GetPlayers()) do
        local joinTs = p:GetJoinTimestamp() or 0
        if joinTs <= TARGET_TIMESTAMP then
            print(("%s join lúc %s"):format(p.Name, os.date("%Y-%m-%d %H:%M:%S", joinTs)))
            return true
        end
    end
    return false
end

local function teleportToRandomServer()
    local servers = TeleportService:SearchForGameInstances(PLACE_ID)
    if #servers == 0 then return end
    local choice = servers[math.random(1, #servers)]
    TeleportService:TeleportToPlaceInstance(PLACE_ID, choice, Players.LocalPlayer)
end

wait(5)
if not hasEarlyPlayer() then
    teleportToRandomServer()
end

