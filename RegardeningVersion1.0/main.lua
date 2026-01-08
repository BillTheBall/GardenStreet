function love.load()
	--Plant Database
	BASE1 = require("code.plantdata.database.plantbase")

	--Libraries For Code
	INPUTS = require("code.generalfunction.inputs")
	GARDEN = require("code.gameplay.garden.garden")
	SHOP = require("code.gameplay.shop.shop")
	SHOPMENU = require("code.gameplay.shop.shopmenu")

	--Libaries For Art
	favicon = love.graphics.newImage("art/icons/branding/faviconlogo.png")

	-- Generic Variable Decleration
	Scene = 1

	--GENERIC FUNCTIONS
	inputs:load()

	--Loading Information (TEMPORARY)
	garden:load()
	shop:load()
	shopmenu:load()
end

function love.update(dt)
	mouseX = love.mouse.getX()
	mouseY = love.mouse.getY()
	windowWidth = love.graphics.getWidth()
	windowHeight = love.graphics.getHeight()
	actwindowWidth = windowWidth * (0.05 * windowHeight / windowWidth)
	actwindowHeight = windowHeight * 0.05
	inputs:update(dt)
	if Scene == 1 then
		garden:update(dt)
		if OpenShopMenu then
			shop:update(dt)
		end
		shopmenu:update(dt)
	end
end

function love.draw(dt)
	if Scene == 1 then
		garden:draw()
		if OpenShopMenu then
			shop:draw(dt)
		end

		shopmenu:draw(dt)
	end
end
