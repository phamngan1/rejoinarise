-- Đợi game load xong
repeat wait() until game:IsLoaded() and game.Players.LocalPlayer

-- Tạo ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui

-- Tạo Button
local Button = Instance.new("TextButton")
Button.Parent = ScreenGui
Button.Size = UDim2.new(0, 200, 0, 50) -- Kích thước nút
Button.Position = UDim2.new(0.5, -100, 0.5, -25) -- Vị trí nút
Button.Text = "Nhấn vào đây"
Button.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Màu đỏ
Button.TextColor3 = Color3.fromRGB(255, 255, 255) -- Chữ màu trắng
Button.Font = Enum.Font.SourceSans
Button.TextSize = 20

-- Xử lý sự kiện khi bấm nút
Button.MouseButton1Click:Connect(function()
    warn("Bạn đã bấm vào nút!") -- In ra console
end)
