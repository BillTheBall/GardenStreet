garden = {}

function garden:load()
	tileMap = {
		{ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
		{ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
		{ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
		{ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
		{ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
		{ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
		{ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
		{ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
		{ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
		{ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
		{ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
		{ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
		{ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
		{ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
		{ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
		{ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
		{ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
		{ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
		{ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
		{ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
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

function garden:update(dt)
	print(HoveredoverShopOption)
	mouseGridPositionX = math.floor(mouseX / actwindowWidth + 1)
	mouseGridPositionY = math.floor(mouseY / actwindowHeight + 1)

	for y = 1, #map do
		for x = 1, #map[y] do
			local plant = map[y][x]

			-- Only grow real plants
			if plant.name ~= "Dirt" and plant.name ~= "Not Dirt" and plant.timeGrowing < plant.timeToGrow then
				plant.timeGrowing = plant.timeGrowing + dt
			elseif plant.timeGrowing > plant.timeToGrow then
				plant.collectable = true
			end
		end
	end
	if RightClicking and not HoveredoverShopOption then
		if map[mouseGridPositionY][mouseGridPositionX].name == "Dirt" then
			for i, v in pairs(PlantsInGame) do
				if PlantMode == i then
					map[mouseGridPositionY][mouseGridPositionX] =
						newPlant(v.name, v.timeToGrow, v.waterReq, v.stages, v.coins)
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
			map[mouseGridPositionY][mouseGridPositionX] = newPlant("Dirt", 0, 0)
		end
	end
end

function newPlant(name, timeToGrow, waterReq, stages, coinReturn, collectable)
	return {
		name = name,
		timeToGrow = timeToGrow,
		timeGrowing = 0,
		waterReq = waterReq,
		stages = stages,
		coins = coinReturn,
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
	love.graphics.setColor(70 / 255, 28 / 255, 20 / 255)
	love.graphics.print(mouseGridPositionX .. "," .. mouseGridPositionY, 0, 15)

	for y = 1, #map do
		for x = 1, #map[y] do
			love.graphics.print(
				map[y][x].timeGrowing,
				x * actwindowWidth - actwindowWidth,
				y * actwindowHeight - actwindowHeight
			)
			if map[y][x].name == "Dirt" then
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
					if map[y][x].timeGrowing >= map[y][x].timeToGrow then
						love.graphics.draw(
							v.Stage4,
							x * actwindowWidth - actwindowWidth,
							y * actwindowHeight - actwindowHeight,
							0,
							actwindowWidth / 224,
							actwindowHeight / 236
						)
					elseif map[y][x].timeGrowing > map[y][x].timeToGrow * 0.75 then
						love.graphics.draw(
							v.Stage3,
							x * actwindowWidth - actwindowWidth,
							y * actwindowHeight - actwindowHeight,
							0,
							actwindowWidth / 224,
							actwindowHeight / 236
						)
					elseif map[y][x].timeGrowing > map[y][x].timeToGrow * 0.5 then
						love.graphics.draw(
							v.Stage2,
							x * actwindowWidth - actwindowWidth,
							y * actwindowHeight - actwindowHeight,
							0,
							actwindowWidth / 224,
							actwindowHeight / 236
						)
					elseif map[y][x].timeGrowing > map[y][x].timeToGrow * 0.25 then
						love.graphics.draw(
							v.Stage1,
							x * actwindowWidth - actwindowWidth,
							y * actwindowHeight - actwindowHeight,
							0,
							actwindowWidth / 224,
							actwindowHeight / 236
						)
					elseif map[y][x].timeGrowing > map[y][x].timeToGrow * 0 then
						love.graphics.draw(
							v.Seeds,
							x * actwindowWidth - actwindowWidth,
							y * actwindowHeight - actwindowHeight,
							0,
							actwindowWidth / 224,
							actwindowHeight / 236
						)
					end
					love.graphics.setColor(70 / 255, 28 / 255, 20 / 255)
				end
			end

			if map[y][x].name == "Not Dirt" then
				love.graphics.setColor(1, 1, 1)

				love.graphics.rectangle(
					"line",
					x * actwindowWidth - actwindowWidth,
					y * actwindowHeight - actwindowHeight,
					actwindowWidth,
					actwindowHeight
				)
				love.graphics.setColor(70 / 255, 28 / 255, 20 / 255)
			end
		end
	end
end
