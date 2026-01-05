INPUTS = {}

function INPUTS:load()
    CLICK = require "Code.GENERAL-FUNCTION.click"
    KEYBOARD = require "Code.GENERAL-FUNCTION.keyboard"
    PRESES = require "Code.GENERAL-FUNCTION.presets"

    click:load()
    keeb:load()
    PRESETS:load()
end

function INPUTS:update(dt)
    click:update(dt)
    keeb:update(dt)
    PRESETS:update(dt)
end