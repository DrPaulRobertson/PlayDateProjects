--import "/Framework/scene"

local pd <const> = playdate
local gfx <const> = pd.graphics

class("Menu").extends(Scene)

function Menu:init()
    --self.font = gfx.font.new('font/whiteglove-stroked')
    
end

function Menu:update()
    if pd.buttonIsPressed(pd.kButtonA) then
        -- swap scene
        SceneManager:getInstance():changeScene(Level1())
    end

end

function Menu:draw()
    -- draw text hopefully
    gfx.setFont(font)
    gfx.drawText("menu test 1 *bold* _italic_", 120, 120)
end

function Menu:load()
end

function Menu:unload()
end