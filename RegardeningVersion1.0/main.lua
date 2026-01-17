function love.load()
	-- Generic Variable Decleration
	Scene = 101
	windowWidth = love.graphics.getWidth()
	windowHeight = love.graphics.getHeight()
	actwindowWidth = windowWidth * (0.05 * windowHeight / windowWidth)
	actwindowHeight = windowHeight * 0.05

	--Plant Database
	BASE1 = require("code.plantdata.database.plantbase")

	--Libraries For Code
	GARDEN = require("code.gameplay.garden.garden")
	SHOP = require("code.gameplay.shop.shop")
	SHOPMENU = require("code.gameplay.shop.shopmenu")

	--Libaries For Art
	favicon = love.graphics.newImage("art/icons/branding/faviconlogo.png")

	--GENERIC FUNCTIONS
	--  Libs
	INPUTS = require("code.generalfunction.inputs")
	CONSOLE = require("code.generalfunction.console")

	--  Loads
	inputs:load()
	console:load()

	--Loading Information (TEMPORARY)
	garden:load()
	shop:load()
	shopmenu:load()

	--ART
	NightGardening = love.graphics.newImage("art/garden/background/midnightgarden.png")
end

function love.update(dt)
	mouseX = love.mouse.getX()
	mouseY = love.mouse.getY()

	console:update(dt)

	if Scene == 101 then
		garden:update(dt)
		if OpenShopMenu then
			shop:update(dt)
		end
		shopmenu:update(dt)
	end

	inputs:update(dt)
end

function love.draw(dt)
	if Scene == 101 then
		garden:draw()
		if OpenShopMenu then
			shop:draw(dt)
		end

		shopmenu:draw(dt)
	end
	console:draw(dt)
end
