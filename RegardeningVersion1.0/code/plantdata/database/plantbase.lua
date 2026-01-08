plantbase = {}

favicon = love.graphics.newImage("art/icons/branding/faviconlogo.png")

HyssopValues = {
	name = "Hyssop",
	timeToGrow = 1,
	order = 1,
	timeGrowing = 0,
	waterReq = 3,
	stages = 1,
	coinsReturned = 8,
	coinsCosted = 5,
	shopX = 60,
	shopY = 0,
	collectable = false,
	bought = false,
	Seeds = favicon,
	Stage1 = favicon,
	Stage2 = favicon,
	Stage3 = favicon,
	Stage4 = favicon,
}
BloodrootValues = {
	name = "Bloodroot",
	timeToGrow = 10,
	order = 2,
	timeGrowing = 0,
	waterReq = 3,
	stages = 1,
	coinsReturned = 8,
	coinsCosted = 5,
	shopX = 60,
	shopY = 1,
	collectable = false,
	bought = false,
	Seeds = favicon,
	Stage1 = favicon,
	Stage2 = favicon,
	Stage3 = favicon,
	Stage4 = favicon,
}
CannaLilesValues = {
	name = "CannaLiles",
	timeToGrow = 25,
	order = 3,
	timeGrowing = 0,
	waterReq = 3,
	stages = 1,
	coinsReturned = 8,
	coinsCosted = 5,
	shopX = 60,
	shopY = 2,
	collectable = false,
	bought = false,
	Seeds = favicon,
	Stage1 = favicon,
	Stage2 = favicon,
	Stage3 = favicon,
	Stage4 = favicon,
}

PlantsInGame = {
	Hyssop = HyssopValues,
	CannaLiles = CannaLilesValues,
	Bloodroot = BloodrootValues,
}
