console = {}

local debugWait = 0.5
local wait = false
function console:load()
	Debugging = false
end

function console:update(dt)
	if ASemi then
		if Debugging and not wait then
			Debugging = false
			wait = true
		end
		if not Debugging and not wait then
			Debugging = true
			wait = true
		end
	end

	if wait then
		debugWait = debugWait - dt
	end
	if debugWait <= 0 then
		wait = false
		debugWait = 0.5
	end
	if Debugging then
		if ScrollPosition < 0 then
			Coinage = Coinage + (ScrollPosition * 20)
		elseif ScrollPosition > 0 then
			Coinage = Coinage + (ScrollPosition * 20)
		end
	end
end

function console:draw(dt)
	if Debugging then
		love.graphics.setColor(0, 0, 0)
		love.graphics.rectangle("fill", 200, 100, 400, 200)
		love.graphics.setColor(1, 1, 1)
		love.graphics.print(Coinage, 205, 105)
		love.graphics.print(ScrollPosition, 205, 120)
		love.graphics.print(AchievementsGotten .. "/" .. TotalAchievements, 205, 135)
		for i, v in pairs(PlantsInGame) do
			if v.AchievementGotten then
				love.graphics.print(v.Achievement, 205, 135 + 15 * v.order)
			end
		end
	end
end
