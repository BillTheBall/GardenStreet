Dev = {}

function Dev:load()
	DevOpened = false
end

function Dev:update(dt)
	OpenDevOptions = OpenDevOptionsKeyBinded
	if OpenDevOptions and Coinage == 3000001 then
		DevOpened = not DevOpened
	end
end

function Dev:draw(dt)
	if DevOpened then
		love.graphics.setColor(0, 0, 0)
		love.graphics.rectangle("fill", 0, 0, 0.25 * WindowWidth, 0.5 * WindowHeight)
		love.graphics.setColor(1, 1, 1)
	end
end
