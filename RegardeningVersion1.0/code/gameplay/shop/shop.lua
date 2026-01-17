shop = {}
function shop:load()
	scrolledposition = 50
	shopOrder = 1
	Coinage = 1000
	HoveredoverShopOption = false
	Buying = false
end

function shop:update(dt)
	if RightClicking then
		for i, v in pairs(PlantsInGame) do
			if
				mouseY > v.shopY - 145
				and mouseY < v.shopY + (225 * actwindowWidth / 50) - 145
				and mouseX > v.shopX
				and mouseX < v.shopX + (225 * actwindowWidth / 50)
				and not Buying
			then
				if Coinage >= v.coinsCosted then
					Coinage = Coinage - v.coinsCosted
					PlantMode = i
					Buying = true
					v.bought = true
				end
			end
		end
	end

	for i, v in pairs(PlantsInGame) do
		print(scrolledposition)

		if ScrollPosition < 0 then
			v.order = v.order - (ScrollPosition * 30 / 60)
		elseif ScrollPosition > 0 then
			v.order = v.order - (ScrollPosition * 30 / 60)
		end
	end

	if ScrollPosition < 0 then
		scrolledposition = scrolledposition - (ScrollPosition * 30)
	elseif ScrollPosition > 0 then
		scrolledposition = scrolledposition - (ScrollPosition * 30)
	end

	if scrolledposition > 60 then
		for i, v in pairs(PlantsInGame) do
			v.order = v.order + (ScrollPosition * 30 / 60)
		end
		scrolledposition = 50
	end
end

function newShopPlace()
	x = 0
	y = 0

	for i, v in pairs(PlantsInGame) do
		love.graphics.draw(v.Seeds, v.shopX, v.shopY - 145, 0, actwindowWidth / 50, actwindowHeight / 50)
		shopOrder = shopOrder + 1

		v.shopY = v.order * 180
		love.graphics.print(tostring(v.shopY), v.shopX, v.shopY)

		if mouseY > v.shopY and mouseY < v.shopY + (225 * actwindowWidth / 136) then
			-- print("Testing Y")
		end

		if mouseX > v.shopX and mouseX < v.shopX + (225 * actwindowWidth / 130) then
			-- print("Testing X")
		end
	end
end

function shop:draw(dt)
	love.graphics.setColor(255 / 255, 255 / 255, 255 / 255)
	newShopPlace()
end
