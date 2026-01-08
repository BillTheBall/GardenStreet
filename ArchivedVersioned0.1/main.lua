function love.load()
	WindowHeight = 1
	WindowWidth = 1
	Scene = 0
	MouseX = 0
	MouseY = 0

	--Library
	DEV = require("Code.GENERAL-FUNCTION.devmenu")
	MM = require("Code.UI.MainMenu")
	CHOISE = require("Code.UI.ChooseWorld")
	BRANDG = require("Code.BRANDING.Branding")
	GAR = require("Code.GAMEPLAY.GARDEN.Garden")
	SHIP = require("Code.GAMEPLAY.SHOP.Shop")
	IPUT = require("Code.GENERAL-FUNCTION.inputs")

	--Art For Game
	--
	MYfont = love.graphics.newFont("Art/FONT/Pixeled.ttf", 16)

	love.graphics.setDefaultFilter("nearest", "nearest")
	Menu = love.graphics.newImage("Art/UI/MAINMENU/BACKGROUND/BackgroundForGardenStreet.png")
	PauseMenu = love.graphics.newImage("Art/UI/PAUSEMENU/BACKGROUND/PauseMenu.png")
	ArrowHeadMainMenu = love.graphics.newImage("Art/UI/MAINMENU/ICONS/DowwardsArrow.png")
	GARDENdesign = love.graphics.newImage("Art/GAMEPLAY/GARDEN/BackgroundForGarden.png")
	SHOPdesign = love.graphics.newImage("Art/GAMEPLAY/SHOP/BackgroundForTHESHOPardenStreet.png")
	CHOOSEdesign = love.graphics.newImage("Art/UI/WORLDSELECT/BACKGROUND/WorldSelectionMenu.png")

	HyssopSeeds = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/HyssopSeeds.png")
	CannaLilesSeeds = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/CannaLilesSeeds.png")
	AnemoeSeeds = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/WhiteAnemoeSeeds.png")
	BloodrootSeeds = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/BloodrootSeeds.png")
	SnowdropSeeds = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/SnowdropSeeds.png")
	FlowerSeedSelector = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/FloweSeedSelector.png")

	SnowdropStage1 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/SnowdropStage1.png")
	SnowdropStage2 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/SnowdropStage2.png")
	SnowdropStage3 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/SnowdropStage3.png")
	SnowdropStage4 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/SnowdropStage4.png")
	SnowdropStage1Water = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/SnowdropStage1Water.png")
	SnowdropStage2Water = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/SnowdropStage2Water.png")
	SnowdropStage3Water = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/SnowdropStage3Water.png")
	SnowdropStage4Water = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/SnowdropStage4Water.png")
	SnowdropStageFinished = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/SnowdropStage5.png")

	BloodrootStage1 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/BloodrootStage1.png")
	BloodrootStage2 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/BloodrootStage2.png")
	BloodrootStage3 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/BloodrootStage3.png")
	BloodrootStage4 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/BloodrootStage4.png")
	BloodrootStage1Water = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/BloodrootStage1Water.png")
	BloodrootStage2Water = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/BloodrootStage2Water.png")
	BloodrootStage3Water = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/BloodrootStage3Water.png")
	BloodrootStage4Water = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/BloodrootStage4Water.png")
	BloodrootStageFinished = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/BloodrootStage5.png")

	HyssopStage1 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/HyssopStage1.png")
	HyssopStage2 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/HyssopStage2.png")
	HyssopStage3 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/HyssopStage3.png")
	HyssopStage4 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/HyssopStage4.png")
	HyssopStage1Water = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/HyssopStage1Water.png")
	HyssopStage2Water = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/HyssopStage2Water.png")
	HyssopStage3Water = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/HyssopStage3Water.png")
	HyssopStage4Water = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/HyssopStage4Water.png")
	HyssopStageFinished = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/HyssopStage5.png")

	CannaLilesStage1 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/CannaLilesStage1.png")
	CannaLilesStage2 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/CannaLilesStage2.png")
	CannaLilesStage3 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/CannaLilesStage3.png")
	CannaLilesStage4 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/CannaLilesStage4.png")
	CannaLilesStage1Water = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/CannaLilesStage1Water.png")
	CannaLilesStage2Water = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/CannaLilesStage2Water.png")
	CannaLilesStage3Water = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/CannaLilesStage3Water.png")
	CannaLilesStage4Water = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/CannaLilesStage4Water.png")
	CannaLilesStageFinished = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/CannaLilesStage5.png")

	AnemoeStage1 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/WhiteAnemoeStage1.png")
	AnemoeStage2 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/WhiteAnemoeStage2.png")
	AnemoeStage3 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/WhiteAnemoeStage3.png")
	AnemoeStage4 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/WhiteAnemoeStage4.png")
	AnemoeStage1Water = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/WhiteAnemoeStage1Water.png")
	AnemoeStage2Water = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/WhiteAnemoeStage2Water.png")
	AnemoeStageStage3Water = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/WhiteAnemoeStage3Water.png")
	AnemoeStageStage4Water = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/WhiteAnemoeStage4Water.png")
	AnemoeStageFinished = love.graphics.newImage("Art/GAMEPLAY/GARDEN/FLOWERS-SEEDS/WhiteAnemoeStage5.png")

	WateringCan = love.graphics.newImage("Art/GAMEPLAY/GARDEN/WATER-WATER/WateringCan.png")
	WateringCanNo = love.graphics.newImage("Art/GAMEPLAY/GARDEN/WATER-WATER/WateringCanNo.png")

	Water31 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/WATER-WATER/WaterMeter31.png")
	Water30 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/WATER-WATER/WaterMeter30.png")
	Water29 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/WATER-WATER/WaterMeter29.png")
	Water28 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/WATER-WATER/WaterMeter28.png")
	Water27 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/WATER-WATER/WaterMeter27.png")
	Water26 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/WATER-WATER/WaterMeter26.png")
	Water25 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/WATER-WATER/WaterMeter25.png")
	Water24 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/WATER-WATER/WaterMeter24.png")
	Water23 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/WATER-WATER/WaterMeter23.png")
	Water22 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/WATER-WATER/WaterMeter22.png")
	Water21 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/WATER-WATER/WaterMeter21.png")
	Water20 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/WATER-WATER/WaterMeter20.png")
	Water19 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/WATER-WATER/WaterMeter19.png")
	Water18 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/WATER-WATER/WaterMeter18.png")
	Water17 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/WATER-WATER/WaterMeter17.png")
	Water16 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/WATER-WATER/WaterMeter16.png")
	Water15 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/WATER-WATER/WaterMeter15.png")
	Water14 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/WATER-WATER/WaterMeter14.png")
	Water13 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/WATER-WATER/WaterMeter13.png")
	Water12 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/WATER-WATER/WaterMeter12.png")
	Water11 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/WATER-WATER/WaterMeter11.png")
	Water10 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/WATER-WATER/WaterMeter10.png")
	Water9 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/WATER-WATER/WaterMeter9.png")
	Water8 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/WATER-WATER/WaterMeter8.png")
	Water7 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/WATER-WATER/WaterMeter7.png")
	Water6 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/WATER-WATER/WaterMeter6.png")
	Water5 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/WATER-WATER/WaterMeter5.png")
	Water4 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/WATER-WATER/WaterMeter4.png")
	Water3 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/WATER-WATER/WaterMeter3.png")
	Water2 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/WATER-WATER/WaterMeter2.png")
	Water1 = love.graphics.newImage("Art/GAMEPLAY/GARDEN/WATER-WATER/WaterMeter1.png")

	love.graphics.setFont(MYfont)
	GARDEN:load()
	SHOP:load()
	BTB:load()
	MainMenu:load()
	ChooseMenu:load()
	INPUTS:load()
	Dev:load()
end

--[[
Scene Dictinary
0 - 1 = BRADNING/CREDITS
Scene 0 - BRANDING FOR GAME

1 - 99 = UI
Scene 1 - MAIN MENU

101 - ??? = GAME PLAY


]]
--
function love.update(dt)
	MouseX = love.mouse.getX()
	MouseY = love.mouse.getY()

	WindowHeight = love.graphics.getHeight()
	WindowWidth = love.graphics.getWidth()

	INPUTS:update(dt)
	Dev:update(dt)
	if Scene == 0 then
		BTB:update(dt)
	elseif Scene == 1 then
		MainMenu:update(dt)
	elseif Scene == 2 then
		ChooseMenu:update(dt)
	elseif Scene == 101 then
		GARDEN:update(dt)
		SHOP:update(dt)
	end
end

function love.draw(dt)
	if Scene == 0 then
		BTB:draw(dt)
	elseif Scene == 1 then
		MainMenu:draw(dt)
	elseif Scene == 2 then
		ChooseMenu:draw(dt)
	elseif Scene == 101 then
		GARDEN:draw(dt)
		SHOP:draw(dt)
	end

	Dev:draw(dt)
end
