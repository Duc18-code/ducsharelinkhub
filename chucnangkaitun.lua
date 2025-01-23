-- Tạo GUI
local ScreenGui = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")

-- Cài đặt GUI
ScreenGui.Parent = game.CoreGui
TextLabel.Parent = ScreenGui
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.4, 0, 0.1, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 20
TextLabel.Text = "Chờ 120 giây"  -- Hiển thị dòng chữ ban đầu

-- Thời gian đếm ngược
local timeLeft = 120

-- Cập nhật hiển thị mỗi giây
while timeLeft > 0 do
    TextLabel.Text = "Chờ " .. timeLeft .. " giây"  -- Cập nhật lại thông báo
    wait(1)
    timeLeft = timeLeft - 1
end

-- Sau khi đếm xong
TextLabel.Text = "Hoàn thành!"
wait(2)  -- Thời gian hiển thị "Hoàn thành"
TextLabel:Destroy()  -- Xóa thông báo sau khi hoàn thành
