garden = {}

function garden:load()
	WaterAmount = 400
	TotalWaterAmount = 400
	WateringMode = false
	tileMap = {
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0 },
		{ 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0 },
		{ 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0 },
		{ 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0 },
		{ 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0 },
		{ 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0 },
		{ 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0 },
		{ 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0 },
		{ 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0 },
		{ 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0 },
		{ 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0 },
		{ 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0 },
		{ 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0 },
		{ 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0 },
		{ 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0 },
		{ 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0 },
		{ 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0 },
		{ 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	}
	map = {}
	for y = 1, #tileMap do
		map[y] = {}
		for x = 1, #tileMap[y] do
			if tileMap[y][x] == 1 then
				map[y][x] = newPlant("Dirt", 0, 0)
			else
				map[y][x] = newPlant("Not Dirt", 0, 0)
			end
		end
	end

	HoveredoverShopOption = false
	PlantMode = {}
	updatePlantMode = 0
end

local wait = false
local waterWait = 0.5

function garden:update(dt)
	if W then
		if WateringMode and not wait then
			WateringMode = false
			wait = true
		end
		if not WateringMode and not wait then
			WateringMode = true
			wait = true
		end
	end
	if wait then
		waterWait = waterWait - dt
	end
	if waterWait <= 0 then
		wait = false
		waterWait = 0.5
	end

	if W and not WateringMode then
		WateringMode = true
	elseif W and WateringMode then
		WateringMode = false
	end
	mouseGridPositionX = math.floor(mouseX / actwindowWidth + 1)
	mouseGridPositionY = math.floor(mouseY / actwindowHeight + 1)

	print(WaterAmount .. tostring(WateringMode) .. waterWait .. tostring(wait))
	for y = 1, #map do
		for x = 1, #map[y] do
			local plant = map[y][x]

			-- Only grow real plants
			if
				plant.name ~= "Dirt"
				and plant.name ~= "Not Dirt"
				and plant.timeGrowing < plant.timeToGrow
				and plant.waterReq * dt < WaterAmount
			then
				plant.timeGrowing = plant.timeGrowing + dt
				WaterAmount = WaterAmount - plant.waterReq * dt
			elseif plant.timeGrowing > plant.timeToGrow then
				plant.collectable = true
			end
		end
	end
	if RightClicking and not HoveredoverShopOption then
		if map[mouseGridPositionY][mouseGridPositionX].name == "Dirt" then
			for i, v in pairs(PlantsInGame) do
				if PlantMode == i then
					if v.AchievementGotten == false then
						AchievementsGotten = AchievementsGotten + 1
						v.AchievementGotten = true
					end
					map[mouseGridPositionY][mouseGridPositionX] =
						newPlant(v.name, v.timeToGrow, v.waterReq, v.stages, v.coinsReturned)
					v.timeGrowing = 0.02
					Buying = false
					v.bought = false
					PlantMode = {}
				else
					map[mouseGridPositionY][mouseGridPositionX].growth = 1
				end
			end
		elseif map[mouseGridPositionY][mouseGridPositionX].name == "Not Dirt" then
			map[mouseGridPositionY][mouseGridPositionX].growth = 0
		end
		if map[mouseGridPositionY][mouseGridPositionX].collectable == true then
			Coinage = Coinage + map[mouseGridPositionY][mouseGridPositionX].coins

			map[mouseGridPositionY][mouseGridPositionX] = newPlant("Dirt", 0, 0)
		end
	end
end

function newPlant(name, timeToGrow, waterReq, stages, coinsReturned, collectable)
	return {
		name = name,
		timeToGrow = timeToGrow,
		timeGrowing = 0,
		waterReq = waterReq,
		stages = stages,
		coins = coinsReturned,
		collectable = collectable,
	}
end
function gridhover()
	if map[mouseGridPositionY][mouseGridPositionX] == 1 then
	else
	end
end

function garden:draw()
	love.graphics.setColor(1, 1, 1)
	love.graphics.print(mouseX .. "," .. mouseY, 0, 0)
	love.graphics.draw(NightGardening, 0, windowHeight, math.rad(-90), windowWidth / 1920, windowHeight / 1080)
	love.graphics.print(mouseGridPositionX .. "," .. mouseGridPositionY, 0, 15)
	love.graphics.setColor(107 / 255, 107 / 255, 136 / 255)

	for y = 1, #map do
		for x = 1, #map[y] do
			if map[y][x].name == "Dirt" and Buying then
				love.graphics.rectangle(
					"line",
					x * actwindowWidth - actwindowWidth,
					y * actwindowHeight - actwindowHeight,
					actwindowWidth,
					actwindowHeight
				)
			end

			for i, v in pairs(PlantsInGame) do
				if map[y][x].name == v.name then
					love.graphics.setColor(1, 1, 1)

					if map[y][x].timeGrowing <= map[y][x].timeToGrow * 0 then
						love.graphics.draw(
							v.Seeds,
							x * actwindowWidth - actwindowWidth,
							y * actwindowHeight - actwindowHeight,
							0,
							actwindowWidth / 224,
							actwindowHeight / 236
						)
					elseif map[y][x].timeGrowing <= map[y][x].timeToGrow * 0.3 then
						love.graphics.draw(
							v.Stage1,
							x * actwindowWidth - actwindowWidth,
							y * actwindowHeight - actwindowHeight,
							0,
							actwindowWidth / 224,
							actwindowHeight / 236
						)
					elseif map[y][x].timeGrowing <= map[y][x].timeToGrow * 0.6 then
						love.graphics.draw(
							v.Stage2,
							x * actwindowWidth - actwindowWidth,
							y * actwindowHeight - actwindowHeight,
							0,
							actwindowWidth / 224,
							actwindowHeight / 236
						)
					elseif map[y][x].timeGrowing <= map[y][x].timeToGrow * 0.9 then
						love.graphics.draw(
							v.Stage3,
							x * actwindowWidth - actwindowWidth,
							y * actwindowHeight - actwindowHeight,
							0,
							actwindowWidth / 224,
							actwindowHeight / 236
						)
					else
						love.graphics.draw(
							v.Stage4,
							x * actwindowWidth - actwindowWidth,
							y * actwindowHeight - actwindowHeight,
							0,
							actwindowWidth / 224,
							actwindowHeight / 236
						)
					end

					love.graphics.setColor(107 / 255, 107 / 255, 136 / 255)
				end
			end

			if map[y][x].name == "Not Dirt" then
				love.graphics.setColor(1, 1, 1, 0)

				love.graphics.rectangle(
					"line",
					x * actwindowWidth - actwindowWidth,
					y * actwindowHeight - actwindowHeight,
					actwindowWidth,
					actwindowHeight
				)
				love.graphics.setColor(107 / 255, 107 / 255, 136 / 255)
			end
		end
	end
end
