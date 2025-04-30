-- Mày lấy script từ đây là roblox quét chết cụ m đấy
--được làm bởi thái hòa
--https://www.facebook.com/profile.php?id=100080017255172
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

local function shouldTeleport()
    for _, p in ipairs(Players:GetPlayers()) do
        local joinTs = p:GetJoinTimestamp() or 0
        if joinTs <= TARGET_TIMESTAMP then
            return false
        end
    end
    return true
end

local function teleportToRandomServer()
    local servers = TeleportService:SearchForGameInstances(PLACE_ID)
    if #servers == 0 then return end
    local choice = servers[math.random(1, #servers)]
    TeleportService:TeleportToPlaceInstance(PLACE_ID, choice, Players.LocalPlayer)
end

wait(5)

if shouldTeleport() then
    teleportToRandomServer()
end
