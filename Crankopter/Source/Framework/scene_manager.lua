-- Scene Manager is a simple controller for a collection of scenes.
-- Providing a singleton to access the manager and current scene.
-- Functions for swapping scenes

-- includes 
import 'scene'

class("SceneManager").extends()

local instance <const> = SceneManager()

function SceneManager:init()
    self.currentScene = Scene() -- empty scene
end

function SceneManager:getInstance()
    if instance == nil then
        --instance = SceneManager()
        error("Scene manager instance missing")
    end
    return instance
end

function SceneManager:update()
    self.currentScene:update()
end

function SceneManager:draw()
    self.currentScene:draw()
end

function SceneManager:changeScene(newScene)
    if(self.currentScene ~= nil) then
        self.currentScene:unload()
    end
    newScene:load()
    self.currentScene = newScene
end