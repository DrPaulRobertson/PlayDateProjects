-- Test player, loads images has up and down controls

local pd <const> = playdate
local gfx <const> = pd.graphics

class("Player").extends(gfx.sprite)

function Player:init(x, y)
    local playerImage = gfx.image.new("images/player.png")
    self:setImage(playerImage)
    self:moveTo(x, y)
    self:add()
end

function Player:update()
    if pd.buttonIsPressed(pd.kButtonUp) then
        self:moveBy(0, -3)
    elseif pd.buttonIsPressed(pd.kButtonDown) then
        self:moveBy(0, 3)
    end
end