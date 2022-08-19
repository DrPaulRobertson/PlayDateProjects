-- Scene Manager is a simple controller for a collection of scenes.
-- Providing a singleton to access the manager and current scene.
-- Functions for swapping scenes

--import "CoreLibs/object"
--import "CoreLibs/graphics"
--import "CoreLibs/sprites"
--import "CoreLibs/timer"

local pd <const> = playdate
local gfx <const> = pd.graphics

--class("Scene").extends(gfx.sprite)
class("Scene").extends()

function Scene:init()
    -- default scene doens't do anything
end

function Scene:update() -- update logic for scene (may add input in separate function)
    error("update function missing")
end

function Scene:draw()   -- draw scene objects
    error("draw function missing")
end

function Scene:load()   -- load all data and graphics for this scene
    error("load function missing")
end

function Scene:unload() --  unload anything the garage collector won't catch. graphics, font, etc
    error("unload function missing")
end