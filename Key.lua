do
    local Babix = game.CoreGui:FindFirstChild("ThunderScreen");if Babix then Babix:Destroy();end
    end
    
    local UserInputService = game:GetService("UserInputService")
    local TweenService = game:GetService("TweenService")
    
    local DiscordLib = {}
        local TweenService = game:GetService("TweenService")
        local Balaraja = Instance.new("ScreenGui")
        
        Balaraja.Name = "Balaraja"
        Balaraja.Parent = game.CoreGui
        Balaraja.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
     
    local NotiFrame = Instance.new("Frame")
        NotiFrame.Name = "NotiFrame"
        NotiFrame.Parent = Balaraja
        NotiFrame.AnchorPoint = Vector2.new(0.5, 0.5)
        NotiFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        NotiFrame.BackgroundTransparency = 1
        NotiFrame.Position = UDim2.new(1.2, 0, 0.0613496937, 0)
        NotiFrame.Size = UDim2.new(0, 1632, 0, 100)
    
        local Notilistlayout = Instance.new("UIListLayout")
    
        Notilistlayout.Name = "Notilistlayout"
        Notilistlayout.Parent = NotiFrame
        Notilistlayout.FillDirection = Enum.FillDirection.Vertical
        Notilistlayout.SortOrder = Enum.SortOrder.LayoutOrder
        Notilistlayout.Padding = UDim.new(0, 5)
    
        function DiscordLib:Notification(text,text2,delays,logo)
            if logo == nil then
                logo = ""
            end
            if delays == nil then
                delays = 1
            end
            local TitleFrame = Instance.new("Frame")
    
            TitleFrame.Name = "TitleFrame"
            TitleFrame.Parent = NotiFrame
            TitleFrame.BackgroundColor3 = Color3.fromRGB(35,35,35)
            TitleFrame.Size = UDim2.new(0, 0, 0, 0)
    
            local Main_UiStroke = Instance.new("UIStroke")
    
            Main_UiStroke.Thickness = 1
            Main_UiStroke.Name = ""
            Main_UiStroke.Parent = TitleFrame
            Main_UiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            Main_UiStroke.LineJoinMode = Enum.LineJoinMode.Round
            Main_UiStroke.Color = Color3.fromRGB(255, 255, 255)
            Main_UiStroke.Transparency = 0
    
            TitleFrame:TweenSizeAndPosition(UDim2.new(0, 250-10, 0, 70),  UDim2.new(0.5, 0, 0.5,0), "Out", "Back", 0.3, true)
    
            local ConnerTitile = Instance.new("UICorner")
    
            ConnerTitile.CornerRadius = UDim.new(0, 4)
            ConnerTitile.Name = "ConnerTitile"
            ConnerTitile.Parent = TitleFrame
    
            local imagenoti = Instance.new("ImageLabel")
    
            imagenoti.Name = "imagenoti"
            imagenoti.Parent = TitleFrame
            imagenoti.AnchorPoint = Vector2.new(0.5, 0.5)
            imagenoti.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            imagenoti.Position = UDim2.new(0.135999978, 0, 0.5, 0)
            imagenoti.Size = UDim2.new(0, 50, 0, 50)
            imagenoti.BackgroundTransparency = 1
            imagenoti.Image = "http://www.roblox.com/asset/?id="..tostring(logo)
    
            local txdlid = Instance.new("TextLabel")
            local LableFrame = Instance.new("Frame")
    
            txdlid.Name = "txdlid"
            txdlid.Parent = TitleFrame
            txdlid.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
            txdlid.BackgroundTransparency = 1.000
            txdlid.Position = UDim2.new(0.25, 0, 0.25, 0)
            txdlid.Size = UDim2.new(0, 175, 0, 24)
            txdlid.Font = Enum.Font.GothamSemibold
            txdlid.TextColor3 = Color3.fromRGB(85, 170, 255)
            txdlid.TextSize = 13.000
            txdlid.Text = text
            txdlid.TextXAlignment = Enum.TextXAlignment.Left
    
            LableFrame.Name = "LableFrame"
            LableFrame.Parent = TitleFrame
            LableFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            LableFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LableFrame.BackgroundTransparency = 1.000
            LableFrame.Position = UDim2.new(0.625999987, 0, 0.620000005, 0)
            LableFrame.Size = UDim2.new(0, 175, 0, 25)
    
            local TextNoti = Instance.new("TextLabel")
    
            TextNoti.Name = "TextNoti"
            TextNoti.Parent = LableFrame
            TextNoti.Active = true
            TextNoti.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextNoti.BackgroundTransparency = 1.000
            TextNoti.Size = UDim2.new(0, 175, 0, 25)
            TextNoti.Font = Enum.Font.Gotham
            TextNoti.Text = text2
            TextNoti.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextNoti.TextSize = 12.000
            TextNoti.TextXAlignment = Enum.TextXAlignment.Left
    
            repeat wait() until TitleFrame.Size == UDim2.new(0, 250-10, 0, 70)
    
            local Time = Instance.new("Frame")
            local UICorner = Instance.new("UICorner")
            local UIPadding = Instance.new("UIPadding")
    
            Time.Name = "Time"
            Time.Parent = TitleFrame
            Time.Active = true
            Time.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
            Time.BorderSizePixel = 0
            Time.Position = UDim2.new(0.0320000015, 0, 0.870000005, 0)
            Time.Size = UDim2.new(0, 236, 0, 3)
    
            UICorner.Parent = Time
            UICorner.CornerRadius = UDim.new(0, 4)
            UICorner.Name = ""
    
            UIPadding.Parent = NotiFrame
            UIPadding.PaddingLeft = UDim.new(0, 15)
            UIPadding.PaddingTop = UDim.new(0, 15)
    
            TweenService:Create(
                Time,
                TweenInfo.new(tonumber(delays), Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                {Size = UDim2.new(0, 0, 0, 3)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            delay(tonumber(delays),function()
                TweenService:Create(
                    imagenoti,
                    TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
                    {ImageTransparency = 1} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextNoti,
                    TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
                    {TextTransparency = 1} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    txdlid,
                    TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
                    {TextTransparency = 1} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                wait(0.3)
                TweenService:Create(
                    TitleFrame,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut),
                    {Size = UDim2.new(0, 0, 0, 70)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                wait(0.3)
                TitleFrame:Destroy()
            end
            )
        end
    
    local TweenService = game:GetService("TweenService")
    local LocalizationService = game:GetService("LocalizationService")
    local LocalizationService = game:GetService("LocalizationService")
    local player = game.Players.LocalPlayer
    
    local ZENHUB = Instance.new("ScreenGui")
    local MAIN = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local shadowHolder = Instance.new("Frame")
    local umbraShadow = Instance.new("ImageLabel")
    local penumbraShadow = Instance.new("ImageLabel")
    local ambientShadow = Instance.new("ImageLabel")
    local keyhere = Instance.new("TextBox")
    local UICorner_2 = Instance.new("UICorner")
    local TextLabel = Instance.new("TextLabel")
    local getkey = Instance.new("TextButton")
    local UICorner_3 = Instance.new("UICorner")
    local confirm = Instance.new("TextButton")
    local UICorner_4 = Instance.new("UICorner")
    local old = Instance.new("TextButton")
    local UICorner_5 = Instance.new("UICorner")
    local TextLabel_2 = Instance.new("TextLabel")
    local TextLabel_3 = Instance.new("TextLabel")
    local X = Instance.new("TextButton")
    local TEXT = Instance.new("TextLabel")
    local UICorner_6 = Instance.new("UICorner")
    local posto = Instance.new("UIStroke")
    
    --Properties:
    
    ZENHUB.Name = "ZENHUB"
    ZENHUB.Parent = game.CoreGui
    ZENHUB.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    MAIN.Name = "MAIN"
    MAIN.Parent = ZENHUB
    MAIN.AnchorPoint = Vector2.new(0.5, 0.5)
    MAIN.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
    MAIN.Position = UDim2.new(0.5, 0, 0.5, 0)
    MAIN.Size = UDim2.new(0, 395, 0, 216)
    MAIN.SizeConstraint = Enum.SizeConstraint.RelativeXX
    MAIN.Active = true
    MAIN.Draggable = true
    
    posto.Name = "posto"
    posto.Parent = MAIN
    posto.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    posto.Color = Color3.fromRGB(255,255,255)
    posto.LineJoinMode = Enum.LineJoinMode.Round
    posto.Thickness = 1
    posto.Transparency = 0
    posto.Enabled = true
    posto.Archivable = true
    
    UICorner.Parent = MAIN
    
    shadowHolder.Name = "shadowHolder"
    shadowHolder.Parent = MAIN
    shadowHolder.BackgroundTransparency = 1.000
    shadowHolder.Size = UDim2.new(1, 0, 1, 0)
    shadowHolder.ZIndex = 0
    
    umbraShadow.Name = "umbraShadow"
    umbraShadow.Parent = shadowHolder
    umbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
    umbraShadow.BackgroundTransparency = 1.000
    umbraShadow.Position = UDim2.new(0.5, 0, 0.479999989, 16)
    umbraShadow.Size = UDim2.new(1, 24, 0.959999979, 24)
    umbraShadow.ZIndex = 0
    umbraShadow.Image = "rbxassetid://1316045217"
    umbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    umbraShadow.ImageTransparency = 0.860
    umbraShadow.ScaleType = Enum.ScaleType.Slice
    umbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)
    
    penumbraShadow.Name = "penumbraShadow"
    penumbraShadow.Parent = shadowHolder
    penumbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
    penumbraShadow.BackgroundTransparency = 1.000
    penumbraShadow.Position = UDim2.new(0.5, 0, 0.479999989, 16)
    penumbraShadow.Size = UDim2.new(1, 24, 0.959999979, 24)
    penumbraShadow.ZIndex = 0
    penumbraShadow.Image = "rbxassetid://1316045217"
    penumbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    penumbraShadow.ImageTransparency = 0.880
    penumbraShadow.ScaleType = Enum.ScaleType.Slice
    penumbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)
    
    ambientShadow.Name = "ambientShadow"
    ambientShadow.Parent = shadowHolder
    ambientShadow.AnchorPoint = Vector2.new(0.5, 0.5)
    ambientShadow.BackgroundTransparency = 1.000
    ambientShadow.Position = UDim2.new(0.5, 0, 0.479999989, 16)
    ambientShadow.Size = UDim2.new(1, 24, 0.959999979, 24)
    ambientShadow.ZIndex = 0
    ambientShadow.Image = "rbxassetid://1316045217"
    ambientShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    ambientShadow.ImageTransparency = 0.880
    ambientShadow.ScaleType = Enum.ScaleType.Slice
    ambientShadow.SliceCenter = Rect.new(10, 10, 118, 118)
    
    keyhere.Name = "keyhere"
    keyhere.Parent = MAIN
    keyhere.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
    keyhere.BorderSizePixel = 0
    keyhere.Position = UDim2.new(0.151898727, 0, 0.236111104, 0)
    keyhere.Size = UDim2.new(0, 289, 0, 35)
    keyhere.Font = Enum.Font.SourceSans
    keyhere.PlaceholderText = "Key here..."
    keyhere.Text = ""
    keyhere.TextColor3 = Color3.fromRGB(255, 255,255)
    keyhere.TextSize = 14.000
    
    UICorner_2.Parent = keyhere
    
    TextLabel.Parent = MAIN
    TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.Position = UDim2.new(0.518987358, 0, 0.0725925565, 0)
    TextLabel.Size = UDim2.new(0, 174, 0, 25)
    TextLabel.ZIndex = 5
    TextLabel.Font = Enum.Font.Gotham
    TextLabel.Text = "SCRIPT | KEY SYSTEM"
    TextLabel.TextColor3 = Color3.fromRGB(130, 130, 130)
    TextLabel.TextSize = 20.000
    
    getkey.Name = "getkey"
    getkey.Parent = MAIN
    getkey.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    getkey.Position = UDim2.new(0.0405063294, 0, 0.532407403, 0)
    getkey.Size = UDim2.new(0, 178, 0, 32)
    getkey.Font = Enum.Font.Gotham
    getkey.Text = "GET KEY"
    getkey.TextColor3 = Color3.fromRGB(255, 255, 255)
    getkey.TextSize = 14.000
    getkey.MouseButton1Click:Connect(function()
    setclipboard("https://kairobloxc.blogspot.com/p/key-scprit.html")
                DiscordLib:Notification("Key System" , "Key Copied to Your Clipboard\n& Paste on Your Browser" , 3)
    end)
    
    
    UICorner_3.CornerRadius = UDim.new(0, 4)
    UICorner_3.Parent = getkey
    
    confirm.Name = "confirm"
    confirm.Parent = MAIN
    confirm.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    confirm.Position = UDim2.new(0.529113948, 0, 0.532407403, 0)
    confirm.Size = UDim2.new(0, 172, 0, 32)
    confirm.Font = Enum.Font.Gotham
    confirm.Text = "UNLOCK"
    confirm.TextColor3 = Color3.fromRGB(255, 255, 255)
    confirm.TextSize = 14.000
    confirm.MouseButton1Click:Connect(function()
    DiscordLib:Notification("Key System" , "Key Check, Executing Script..." , 3)
    if keyhere.Text == "1f262a60600e30c026663a7ccbed6bab" then
    wait(3)
    ZENHUB:Destroy()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Nguyenhoainama1288766/VersionHub/main/HiruHub.lua"))()
    else
    DiscordLib:Notification("Key System" , "Key Wrong Try Again" , 3)
    end
    end)
    
    UICorner_4.CornerRadius = UDim.new(0, 4)
    UICorner_4.Parent       = confirm
    
    old.Name = "old"
    old.Parent = MAIN
    old.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    old.BorderColor3 = Color3.fromRGB(27, 42, 53)
    old.Position = UDim2.new(0.288607597, 0, 0.782407403, 0)
    old.Size = UDim2.new(0, 178, 0, 32)
    old.Font = Enum.Font.Gotham
    old.Text = "Jon Sub"
    old.TextColor3 = Color3.fromRGB(255, 255, 255)
    old.TextSize = 14.000
    old.MouseButton1Click:Connect(function()
    setclipboard("I AM FROM")
    end)
    
    
    UICorner_5.CornerRadius = UDim.new(0, 4)
    UICorner_5.Parent = old
    
    TextLabel_2.Parent = old
    TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_2.BackgroundTransparency = 1.000
    TextLabel_2.Position = UDim2.new(-0.0505618006, 0, 0, 0)
    TextLabel_2.Size = UDim2.new(0, 200, 0, 50)
    TextLabel_2.Font = Enum.Font.Gotham
    TextLabel_2.Text = ""
    TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_2.TextSize = 10.000
    
    TextLabel_3.Parent = old
    TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_3.BackgroundTransparency = 1.000
    TextLabel_3.Position = UDim2.new(-0.050999999, 0, -0.400000006, 0)
    TextLabel_3.Size = UDim2.new(0, 200, 0, 50)
    TextLabel_3.Font = Enum.Font.Gotham
    TextLabel_3.Text = ""
    TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_3.TextSize = 14.000
    
    X.Name = "X"
    X.Parent = MAIN
    X.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    X.BackgroundTransparency = 1.000
    X.Position = UDim2.new(0.941772103, 0, 0, 0)
    X.Size = UDim2.new(0, 23, 0, 28)
    X.Font = Enum.Font.SourceSans
    X.Text = "X"
    X.TextColor3 = Color3.fromRGB(191, 191, 191)
    X.TextScaled = true
    X.TextSize = 14.000
    X.TextWrapped = true
    X.MouseButton1Click:Connect(function()
    MAIN:TweenSize(UDim2.new(0,0,0,5),"Out","Quad",1,true)
    keyhere:Destroy()
    getkey:Destroy()
    confirm:Destroy()
    old:Destroy()
    X:Destroy()
    TextLabel:Destroy()
    wait(1)
    MAIN:Destroy()
    end)