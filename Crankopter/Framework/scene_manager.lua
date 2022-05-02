-- Scene Manager is a simple controller for a collection of scenes.
-- Providing a singleton to access the manager and current scene.
-- Functions for swapping scenes

-- includes 
import 'scene'

-- class define
SceneManager = {}
SceneManager.__index = SceneManager

-- Class declare
function SceneManager:new()
    local self = setmetatable({}, SceneManager)
    -- any class variables
    static SceneManager instance = nil
    local Scene currentScene

    return self
end

SceneManager.getInstance() = function()
    if(instance == nil)
        instance = SceneManager.new()
    return instance
end

function SceneManager:update()
    currentScene.update()
end

function SceneManager:draw()
    currentScene.draw()
end

function SceneManager:changeScene(Scene newScene)
    if(instance.currentScene != nil)
        instance.currentScene.unload()
        newScene.load()
        instance.currentScene = newScene
end