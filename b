-- Mày lấy script từ đây là roblox quét chết cụ m đấy
local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local PLACE_ID = 126884695634066 

local function teleportToRandomServer()  
    local servers = TeleportService:SearchForGameInstances(PLACE_ID)
    
 
    if #servers == 0 then
        print("❌")
        return
    end

 
    local randomServer = servers[math.random(1, #servers)]
    

    TeleportService:TeleportToPlaceInstance(PLACE_ID, randomServer, Players.LocalPlayer)
    print Đang chuyển sang server ngẫu nhiên")
end


teleportToRandomServer()

