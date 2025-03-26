local Players = game:GetService("Players")
local player = Players.LocalPlayer
local guiService = game:GetService("GuiService")

warn("✅ Script đã chạy thành công!")

-- Chờ GUI tải xong
wait(2)

-- Tìm GUI của menu chính (Cập nhật đường dẫn GUI nếu cần)
local menuButton = player.PlayerGui:FindFirstChild("MainMenuButton") 
local afkButton = player.PlayerGui:FindFirstChild("AFKZoneButton")
local confirmButton = player.PlayerGui:FindFirstChild("ConfirmAFKButton")

-- Nhấn vào nút menu
if menuButton and menuButton:IsA("GuiButton") then
    menuButton:Activate()
    wait(1) -- Đợi menu mở ra
else
    warn("❌ Không tìm thấy nút Menu!")
end

-- Nhấn vào nút AFK Zone
if afkButton and afkButton:IsA("GuiButton") then
    afkButton:Activate()
    wait(0.5)
else
    warn("❌ Không tìm thấy nút AFK Zone!")
end

-- Nhấn xác nhận vào AFK
if confirmButton and confirmButton:IsA("GuiButton") then
    confirmButton:Activate()
else
    warn("❌ Không tìm thấy nút xác nhận!")
end
