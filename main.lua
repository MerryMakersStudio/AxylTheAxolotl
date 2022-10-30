require("global")
function love.load()
	love.graphics.setDefaultFilter("nearest", "nearest")
	_G.ResizeWindow(Window.Width, Window.Height, Window.Size)
	Scene.Load("test_chamber")
	Camera = Camera()
end

