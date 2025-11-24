-- REDZ OPEN BUTTON (MINIMIZER + DISCORD REMOVED)
local OpenButton = {}

local New = require(script.Parent.Creator).New
local Tween = require(script.Parent.Creator).Tween

function OpenButton.New(Window)
    local OpenButtonMain = { Button = nil }

    local Title = New("TextLabel", {
        Text = Window.Title,
        TextSize = 17,
        FontFace = Font.new(Enum.Font.SourceSans, Enum.FontWeight.Medium),
        BackgroundTransparency = 1,
        AutomaticSize = "XY",
    })

    local Container = New("Frame", {
        Size = UDim2.new(0,0,0,0),
        Position = UDim2.new(0.5,0,0,6+44/2),
        AnchorPoint = Vector2.new(0.5,0.5),
        Parent = Window.Parent,
        BackgroundTransparency = 1,
        Active = true,
        Visible = false,
    })

    local Button = New("TextButton", {
        Size = UDim2.new(0,0,0,44),
        AutomaticSize = "X",
        Parent = Container,
        BackgroundTransparency = 0.25,
        ZIndex = 99,
        BackgroundColor3 = Color3.new(0,0,0),
    }, {
        New("UICorner", { CornerRadius = UDim.new(1,0) }),
        New("UIStroke", { Thickness = 1, Color = Color3.new(1,1,1) }),
        New("UIListLayout", { Padding = UDim.new(0,4), FillDirection = "Horizontal", VerticalAlignment = "Center" }),
        Title
    })

    OpenButtonMain.Button = Button

    function OpenButtonMain:Visible(v)
        Container.Visible = v
    end

    return OpenButtonMain
end

return OpenButton
