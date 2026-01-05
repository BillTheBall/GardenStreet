ChooseMenu = {}

function ChooseMenu:load() end

function ChooseMenu:update(dt)
	if
		MouseX > WindowWidth * 0.055
		and MouseX < WindowWidth * 0.185
		and MouseY > WindowHeight * 0.79
		and MouseY < WindowHeight * 0.9
	then
		if RightClicking then
			Scene = 1
		end
	end

	if
		MouseX > WindowWidth * 0.055
		and MouseX < WindowWidth * 0.95
		and MouseY > WindowHeight * 0.245
		and MouseY < WindowHeight * 0.33
	then
		if RightClicking then
			Scene = 101
		end
	end
end

function ChooseMenu:draw(dt)
	love.graphics.setColor(255 / 255, 255 / 255, 255 / 255)
	love.graphics.draw(CHOOSEdesign, 0, 0, 0, WindowWidth / 320, WindowHeight / 180)
	love.graphics.print(MouseX / WindowWidth .. " : " .. MouseY / WindowHeight, 0, 0)
end
