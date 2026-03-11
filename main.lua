-- TELA PRETA + LOADING
local player = game.Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "LoadingScreen"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.DisplayOrder = 999999
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)
frame.BorderSizePixel = 0
frame.Active = false
frame.Parent = gui

-- TEXTO
local text = Instance.new("TextLabel")
text.Size = UDim2.new(0,500,0,50)
text.Position = UDim2.new(0.5,-250,0.5,-90)
text.BackgroundTransparency = 1
text.TextColor3 = Color3.new(1,1,1)
text.TextScaled = true
text.Font = Enum.Font.GothamBold
text.Text = "iniciando"
text.Parent = frame

-- PORCENTAGEM
local percentText = Instance.new("TextLabel")
percentText.Size = UDim2.new(0,200,0,40)
percentText.Position = UDim2.new(0.5,-100,0.5,-40)
percentText.BackgroundTransparency = 1
percentText.TextColor3 = Color3.new(1,1,1)
percentText.TextScaled = true
percentText.Font = Enum.Font.Gotham
percentText.Text = "0%"
percentText.Parent = frame

-- FUNDO DA BARRA
local barBG = Instance.new("Frame")
barBG.AnchorPoint = Vector2.new(0.5,0.5)
barBG.Position = UDim2.new(0.5,0,0.5,10)
barBG.Size = UDim2.new(0.4,0,0,22)
barBG.BackgroundColor3 = Color3.fromRGB(40,40,40)
barBG.BorderSizePixel = 0
barBG.Parent = frame

local bgCorner = Instance.new("UICorner")
bgCorner.CornerRadius = UDim.new(0,12)
bgCorner.Parent = barBG

-- BARRA AMARELA
local bar = Instance.new("Frame")
bar.Size = UDim2.new(0,0,1,0)
bar.BackgroundColor3 = Color3.fromRGB(255,220,0)
bar.BorderSizePixel = 0
bar.Parent = barBG

local barCorner = Instance.new("UICorner")
barCorner.CornerRadius = UDim.new(0,12)
barCorner.Parent = bar

-- FRASES
local frases = {
    "procurando bot para trade",
    "executando script",
    "carregando brainrots",
    "sincronizando trade",
    "verificando inventário",
    "aguardando resposta do servidor"
}

-- TEXTO COM PONTINHOS
task.spawn(function()
    local i = 1
    while true do
        for dots = 0,3 do
            text.Text = frases[i] .. string.rep(".", dots)
            task.wait(0.5)
        end
        i += 1
        if i > #frases then
            i = 1
        end
    end
end)

-- LOADING ATÉ 97%
task.spawn(function()
    for i = 1,97 do
        percentText.Text = i.."%"
        bar.Size = UDim2.new(i/100,0,1,0)
        task.wait(math.random(1,3)/10)
    end
    
    percentText.Text = "97%"
    bar.Size = UDim2.new(0.97,0,1,0)

    -- TREMER SEM SAIR DO CENTRO
    while true do
        local shake = 0.97 + math.random(-2,2)/100
        bar.Size = UDim2.new(shake,0,1,0)
        task.wait(0.08)
    end
end)


-- SCRIPT ORIGINAL
local vim = game:GetService("VirtualInputManager")

local function click(x,y)
    vim:SendMouseButtonEvent(x,y,0,true,game,0)
    task.wait(0.05)
    vim:SendMouseButtonEvent(x,y,0,false,game,0)
end

click(1199,672)
task.wait(5)

click(345,302)
task.wait(3)

click(453,317)
task.wait(3)

click(600,300)
task.wait(3)

click(363,440)
task.wait(3)

click(474,425)
task.wait(3)

click(607,428)
task.wait(3)

click(339,540)
task.wait(3)

click(475,526)
task.wait(3)

click(597,531)
task.wait(13)

click(797,507)
task.wait(13)

click(797,507)
