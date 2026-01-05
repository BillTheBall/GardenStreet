MainMenu = {}

function MainMenu:load()
	local HoveringOverMainMenuButton = false
end

function MainMenu:update(dt)
	if
		MouseX > WindowWidth * 0.45
		and MouseX < WindowWidth * 0.55
		and MouseY > WindowHeight * 0.6
		and MouseY < WindowHeight * 0.75
	then
		HoveringOverMainMenuButton = true
	else
		HoveringOverMainMenuButton = false
	end

	if HoveringOverMainMenuButton and RightClicking then
		Scene = 101
	end
end

function MainMenu:draw(dt)
	love.graphics.setColor(255 / 255, 255 / 255, 255 / 255)
	love.graphics.draw(Menu, 0, 0, 0, WindowWidth / 320, WindowHeight / 180)

	if HoveringOverMainMenuButton then
		love.graphics.draw(
			ArrowHeadMainMenu,
			WindowWidth * 0.49,
			WindowHeight * 0.57,
			0,
			WindowWidth / 320,
			WindowHeight / 180
		)
	end
end
