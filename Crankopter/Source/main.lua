local gfx = playdate.graphics

gfx.setColor(gfx.kColorBlack)
local bgY = 0
local bgH = 0

local font = gfx.font.new('font/whiteglove-stroked')

local function init()
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

end

function playdate.update()
    --gfx.fillRect(0, 0, 400, 240)
    gfx.sprite.update()

    gfx.setFont(font)
	gfx.drawText('Press A to start:', 120, 220)
    playdate.drawFPS(0,0)
end

init()