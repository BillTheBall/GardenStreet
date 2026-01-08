shop = {}
function shop:load()
	scrolledposition = 250
	shopOrder = 1
	Coinage = 1000
end

function shop:update(dt)
	for i, v in pairs(PlantsInGame) do
		if
			mouseY > v.shopY
			and mouseY < v.shopY + (225 * actwindowWidth / 136)
			and mouseX > v.shopX
			and mouseX < v.shopX + (225 * actwindowWidth / 130)
		then
			HoveredoverShopOption = true
		else
			HoveredoverShopOption = false
		end
	end
	if RightClicking then
		for i, v in pairs(PlantsInGame) do
			if
				mouseY > v.shopY
				and mouseY < v.shopY + (225 * actwindowWidth / 136)
				and mouseX > v.shopX
				and mouseX < v.shopX + (225 * actwindowWidth / 130)
			then
				if Coinage > v.coinsCosted then
					PlantMode = i
					v.bought = true
				end
			end
		end
	end
end

function newShopPlace()
	x = 0
	y = 0

	for i, v in pairs(PlantsInGame) do
		love.graphics.draw(v.Seeds, v.shopX, v.shopY, 0, actwindowWidth / 130, actwindowHeight / 136)
		shopOrder = shopOrder + 1

		v.shopY = v.order * 60
		love.graphics.print(tostring(v.shopY), v.shopX, v.shopY)

		if mouseY > v.shopY and mouseY < v.shopY + (225 * actwindowWidth / 136) then
			-- print("Testing Y")
		end

		if mouseX > v.shopX and mouseX < v.shopX + (225 * actwindowWidth / 130) then
			-- print("Testing X")
		end
	end
end

function love.wheelmoved(x, y)
	for i, v in pairs(PlantsInGame) do
		if y < 0 then
			v.order = v.order - (y * 30 / 60)
		elseif y > 0 then
			v.order = v.order - (y * 30 / 60)
		end
	end

	if y < 0 then
		scrolledposition = scrolledposition - (y * 30)
	elseif y > 0 then
		scrolledposition = scrolledposition - (y * 30)
	end

	if scrolledposition < 0 then
		scrolledposition = 0
	elseif scrolledposition > 550 then
		scrolledposition = 550
	end
end

function shop:draw(dt)
	love.graphics.setColor(255 / 255, 255 / 255, 255 / 255)
	newShopPlace()
	for i, v in pairs(PlantsInGame) do
		if v.bought then
			love.graphics.draw(v.Seeds, mouseX, mouseY, 0, actwindowWidth / 130, actwindowHeight / 136)
		end
	end
end
