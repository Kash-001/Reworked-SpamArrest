function GetPlayer(String)
  local Found = {}
  local strl = String:lower()
      for i,v in pairs(game.Players:GetPlayers()) do
          if v.Name:lower():sub(1, #String) == String:lower() then
              table.insert(Found,v.Name)
          end
      end    
  return Found    
end
local SynWare = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Victim = Instance.new("TextBox")
local spam = Instance.new("TextButton")

SynWare.Name = "SynWare"
SynWare.Parent = game.CoreGui
SynWare.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Active = true
Frame.Draggable = true
Frame.Parent = SynWare
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BorderColor3 = Color3.new(0, 255, 0)
Frame.BorderSizePixel = 1
Frame.Position = UDim2.new(0.0496657118, 0, 0.473186165, 0)
Frame.Size = UDim2.new(0, 250, 0, 200)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 250, 0, 42)
TextLabel.Font = Enum.Font.Ubuntu
TextLabel.Text = "Synware"
TextLabel.TextColor3 = Color3.new(0, 255, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

Victim.Name = "Victim"
Victim.Parent = Frame
Victim.BackgroundColor3 = Color3.new(0, 0, 0)
Victim.BorderColor3 = Color3.new(0, 0, 0)
Victim.BorderSizePixel = 0
Victim.Position = UDim2.new(0, 0, 0.7, 0)
Victim.Size = UDim2.new(0, 250, 0, 33)
Victim.Font = Enum.Font.Ubuntu
Victim.PlaceholderColor3 = Color3.new(0, 255, 0)
Victim.PlaceholderText = "Victim"
Victim.Text = ""
Victim.TextColor3 = Color3.new(0, 255, 0)
Victim.TextScaled = true
Victim.TextSize = 14
Victim.TextWrapped = true

spam.Name = "spam"
spam.Parent = Frame
spam.BackgroundColor3 = Color3.new(0, 0, 0)
spam.BorderColor3 = Color3.new(0, 0, 0)
spam.BorderSizePixel = 0
spam.Position = UDim2.new(0, 0, 0.4, 0)
spam.Size = UDim2.new(0, 250, 0, 33)
spam.Font = Enum.Font.Ubuntu
spam.Text = "spam"
spam.TextColor3 = Color3.new(0, 255, 0)
spam.TextScaled = true
spam.TextSize = 14
spam.TextWrapped = true

spam.MouseButton1Click:Connect(function()
    for i,v in pairs(GetPlayer(Victim.Text)) do
local arrest = workspace[v].Torso
local a = 1
local b = 1
repeat
    repeat
         workspace.Remote.arrest:InvokeServer(arrest)
         a = a + 1
         until( a > 300)
        b = b + 1
until( b > 20 ) 
end
end)
