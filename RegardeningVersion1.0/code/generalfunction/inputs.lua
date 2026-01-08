inputs = {}

function inputs:load()
	CLICK = require("code.generalfunction.click")
	KEYBOARD = require("code.generalfunction.keyboard")
	PRESES = require("code.generalfunction.presets")

	click:load()
	keeb:load()
	PRESETS:load()
end

function inputs:update(dt)
	click:update(dt)
	keeb:update(dt)
	PRESETS:update(dt)
end

