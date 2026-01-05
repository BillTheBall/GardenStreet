BTB = {}

local timer = 0
function BTB:load()
    love.graphics.setDefaultFilter("nearest", "nearest")
    BTBLogo = love.graphics.newImage("Art/BRANDING/BTBStudiosLogoForGardenStreet.png")
    BTBLogoBackground = love.graphics.newImage("Art/BRANDING/BTBStudiosLogoBackgroundForGardenStreet.png")
end

function BTB:update(dt)
    timer = timer + dt
    if love.keyboard.isDown("g") then
        Scene = 1
    end
    if timer > 3 then
        Scene = 1
        timer = 0
    end
end

function BTB:draw(dt)
    love.graphics.setColor(255/255, 255/255, 255/255)
    love.graphics.draw(BTBLogoBackground, 0, 0, 0, WindowWidth/192, WindowHeight/108)
    love.graphics.setColor(255/255, 255/255, 255/255, timer/2)
    love.graphics.draw(BTBLogo, 0, 0, 0, WindowWidth/192, WindowHeight/108)
end