require "data.objects.player"
function love.load()

end

function love.update( dt )
	Player:update(dt)
end

function love.draw()
	Player:draw()
end