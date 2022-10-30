Player = setmetatable({}, Object)
table.insert(ObjectList, Player)

Player.w = 8
Player.h = 8


function Player:update(dt)
	Player.x = Player.x + Axis.X()
	Player.y = Player.y + Axis.Y()
end

function Player:draw()
	love.graphics.rectangle("line", Player.x, Player.y, Player.w, Player.h)
end
return Player
