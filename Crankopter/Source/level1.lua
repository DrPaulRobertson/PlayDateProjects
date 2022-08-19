--import "CoreLibs/object"
--import "CoreLibs/graphics"
--import "CoreLibs/sprites"
--import "CoreLibs/timer"

import "/Framework/scene"
import "player"

local pd <const> = playdate
local gfx <const> = pd.graphics

class("Level1").extends(Scene)

function Level1:init()
    --Level1.super.init()
end

-- override functions
function Level1:update()
    --gfx.sprite.update()
end

function Level1:draw()
    
end

function Level1:load()
    --[[local bg = gfx.sprite.new()
    local backgroundImage = gfx.image.new( "img/test1.png")
    bg:setBounds(0, 0, 400, 240)
    function bg:draw(x, y, width, height)
        backgroundImage:draw(0, bgY)
        backgroundImage:draw(0, bgY-bgH)
    end
    function bg:update()
        bgY += 1
        if bgY > bgH then
            bgY = 0
        end
        self:markDirty()
    end
    bg:setZIndex(0)
    bg:add()]]--
    local p = Player(120, 120)
end

function Level1:unload()
    
end