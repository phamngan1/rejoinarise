-- Mày lấy script từ đây là roblox quét chết cụ m đấy
--được làm bởi thái hòa
--https://www.facebook.com/profile.php?id=100080017255172
local Players = game:GetService("Players")

local function formatTime(seconds)
    local h = math.floor(seconds / 3600)
    local m = math.floor((seconds % 3600) / 60)
    local s = math.floor(seconds % 60)
    return string.format("%02d giờ %02d phút %02d giây", h, m, s)
end


local function getLongestSession()
    local bestPlayer, bestTime = nil, -1
    for _, p in ipairs(Players:GetPlayers()) do
        local t = p:GetAttribute("SessionTime") or 0
        if t > bestTime then
            bestTime = t
            bestPlayer = p
        end
    end
    return bestPlayer, bestTime
end

-- In kết quả
local plr, t = getLongestSession()
if plr then
    print(" Người chơi ở lâu nhất: "..plr.Name)
    print(" Thời gian session: "..formatTime(t))
else
    print("❌ Không có player nào trong server.")
end

