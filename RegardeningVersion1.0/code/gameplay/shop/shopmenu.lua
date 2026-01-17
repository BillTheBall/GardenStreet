shopmenu = {}

function shopmenu:load()
	OpenShopMenu = false
end

function shopmenu:update(dt)
	if A then
		OpenShopMenu = true
	end

	if OpenShopMenu then
		if mouseX > 25 * actwindowWidth then
			HoveredoverShopOption = true
		else
			HoveredoverShopOption = false
		end
	end
end

function shopmenu:draw(dt)
	for i, v in pairs(PlantsInGame) do
		if v.bought then
			love.graphics.draw(v.Seeds, mouseX, mouseY, 0, actwindowWidth / 130, actwindowHeight / 136)
		end
	end
end
