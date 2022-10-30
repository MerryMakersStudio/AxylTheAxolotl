_G.Window = {
	Height = 135,
	Width = 240,
	Size = 4
}

Camera = require("data.lib.camera")
Anim8 = require("data.lib.anim8")
WF = require("data.lib.windfield")
Maid64 = require("data.lib.maid64")
require("data.lib.scene_menager")
Phys = {}
Phys.Grav = 200
Phys.World = WF.newWorld(0, Phys.Grav, false)

_G.Entity = {
	x = 0,
	y = 0,
	w = 0,
	h = 0,
	hitbox = nil,
}
Entity.__index = Entity

_G.ObjectList = {}

_G.Axis = {}

_G.Actions = {

}
function _G.SineMovement(amp, speed, offset)
	return math.sin(offset + love.timer.getTime() * speed) * amp
end

function _G.ResizeWindow(width, height, size)
	love.window.setMode(width * size, height * size)
	Maid64.setup(width, height, 4)
	print("Resized the window " .. size .. " times. (" .. width .. " " .. height .. " " .. size .. ")")
end

function _G.Bool(value)
	return value and 1 or 0
end

_G.Axis = {
	X = function() return Bool(love.keyboard.isDown(Actions.Right)) - Bool(love.keyboard.isDown(Actions.Left)) end,
	Y = function() return Bool(love.keyboard.isDown(Actions.Down)) - Bool(love.keyboard.isDown(Actions.Up)) end
}
