-- Mày lấy script từ đây là roblox quét chết cụ m đấy
local TeleportService = game:GetService("TeleportService")
local Players        = game:GetService("Players")

local PLACE_ID = 126884695634066 
local END_TIME = 111600          


local function shouldTeleport()
    for _, p in ipairs(Players:GetPlayers()) do
        local t = p:GetAttribute("SessionTime") or 0
        if t >= END_TIME then
            return false
        end
    end
    return true
end


wait(5)

if shouldTeleport() then
    print("Không có ai đủ 31 tiếng, chuyển sang server khác")
    TeleportService:Teleport(PLACE_ID, Players.LocalPlayer)
else
    print("✅ Có người đã chơi ≥31 tiếng, giữ lại server này.")
end
