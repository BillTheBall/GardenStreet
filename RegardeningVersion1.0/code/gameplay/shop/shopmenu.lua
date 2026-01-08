shopmenu = {}

function shopmenu:load()
	OpenShopMenu = false
end

function shopmenu:update(dt)
	if A then
		OpenShopMenu = true
	end
end

function shopmenu:draw(dt) end
