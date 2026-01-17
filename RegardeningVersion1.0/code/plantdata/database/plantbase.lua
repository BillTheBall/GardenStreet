plantbase = {}

ShopX1 = 26 * actwindowWidth
ShopX2 = 31 * actwindowWidth
plantbagGeneric = love.graphics.newImage("art/plantdata/seeds/plantbag.png")
favicon = love.graphics.newImage("art/icons/branding/faviconlogo.png")
AchievementsGotten = 0
TotalAchievements = 3
--[[
GenericValues = {
	name = Name of the plant,
	timeToGrow = How long it grows for,
	order = the oorder it'll appear in the shop,
  constOrder = Same as order, but constantly the same, instead of changing,
	timeGrowing = Current Growth, never set,
	waterReq = How much water it requires,
	stages = Useless,
	coinsReturned = How much it gives when claimed,
	coinsCosted = How much it costs to buy,
	shopX = The location of it in the shop,
	shopY = The location of it compared to other plants in the shop,
	collectable = Can't change, but shows if you are able to collect it,
	bought = If bought from shop but not placed,
	Seeds = Seed Stage,
	Stage1 = Growth1,
	Stage2 = Growth2,
	Stage3 = Growth3,
	Stage4 = Completed,
  Achievement = The name of the achievement for buying this plant
  AchievementGotten = Says if you had already gotten this achievement
}
]]
--

HyssopValues = {
	name = "Hyssop",
	timeToGrow = 5,
	order = 1,
	constOrder = 1,
	timeGrowing = 0,
	waterReq = 200,
	stages = 1,
	coinsReturned = 8,
	coinsCosted = 5,
	shopX = ShopX1,
	shopY = 0,
	collectable = false,
	bought = false,
	Seeds = plantbagGeneric,
	Stage1 = favicon,
	Stage2 = favicon,
	Stage3 = favicon,
	Stage4 = favicon,
	Achievement = "Hyssop",
	AchievementGotten = false,
}

MereValues = {
	name = "Mere",
	timeToGrow = 1,
	order = 1,
	constOrder = 1,
	timeGrowing = 0,
	waterReq = 3,
	stages = 1,
	coinsReturned = 8,
	coinsCosted = 5,
	shopX = ShopX2,
	shopY = 0,
	collectable = false,
	bought = false,
	Seeds = plantbagGeneric,
	Stage1 = favicon,
	Stage2 = favicon,
	Stage3 = favicon,
	Stage4 = favicon,
	Achievement = "Hyssop",
	AchievementGotten = false,
}

BloodrootValues = {
	name = "Bloodroot",
	timeToGrow = 10,
	order = 2,
	constOrder = 2,
	timeGrowing = 0,
	waterReq = 3,
	stages = 1,
	coinsReturned = 8,
	coinsCosted = 5,
	shopX = ShopX1,
	shopY = 1,
	collectable = false,
	bought = false,
	Seeds = plantbagGeneric,
	Stage1 = favicon,
	Stage2 = favicon,
	Stage3 = favicon,
	Stage4 = favicon,
	Achievement = "Bloodroot",
	AchievementGotten = false,
}
CannaLilesValues = {
	name = "CannaLiles",
	timeToGrow = 25,
	order = 3,
	constOrder = 3,
	timeGrowing = 0,
	waterReq = 3,
	stages = 1,
	coinsReturned = 8,
	coinsCosted = 5,
	shopX = ShopX1,
	shopY = 2,
	collectable = false,
	bought = false,
	Seeds = plantbagGeneric,
	Stage1 = favicon,
	Stage2 = favicon,
	Stage3 = favicon,
	Stage4 = favicon,
	Achievement = "Bloodroot",
	AchievementGotten = false,
}

PlantsInGame = {
	Hyssop = HyssopValues,
	CannaLiles = CannaLilesValues,
	Bloodroot = BloodrootValues,
	Mere = MereValues,
}
