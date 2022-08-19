import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/timer"

import "/Framework/scene_manager"
import "level1"

import "player"
import "menu"

local pd <const> = playdate
local gfx <const> = pd.graphics

local manager = SceneManager()

Player(30,120)

-- globals
font = gfx.font.new('font/whiteglove-stroked')

--gfx.setColor(gfx.kColorBlack)
--local bgY = 0
--local bgH = 0

--local font = gfx.font.new('font/whiteglove-stroked')

--[[local function init()
    local bg = gfx.sprite.new()
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
    bg:add()

	--local lev1 = Level1.new()
	manager.changeScene(lev1.new())
end

function playdate.update()
	manager.update()
	manager.draw()
    --gfx.fillRect(0, 0, 400, 240)
    gfx.sprite.update()

    gfx.setFont(font)
	gfx.drawText('Press A to start:', 120, 220)
    playdate.drawFPS(0,0)
end
]]--

local function init()
	-- Setup scene manager and go to first scene
	manager = SceneManager:getInstance()
	manager:changeScene(Menu())
	--print("init ran")
end

function pd.update()
	gfx.sprite.update()
	pd.timer.updateTimers()
	manager:update()
	manager:draw()
end

init()