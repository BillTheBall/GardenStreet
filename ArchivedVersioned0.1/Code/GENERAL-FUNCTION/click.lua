click = {}

    RightClicking = false
    local CurrentlyRClicking = false
    local holding = 0
function click:load()
    
end

function click:update(dt)
    if not CurrentlyRClicking then
        holding = 1/love.timer.getFPS()
    end
    if CurrentlyRClicking and not RightClicking and holding == 1/love.timer.getFPS() then
        RightClicking = true
    else
        RightClicking = false
    end
    if CurrentlyRClicking then
        holding = holding - dt
    end
end

    function love.mousepressed(x, y, button, istouch, presses)
        if button == 1 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
            CurrentlyRClicking = true
        end
    end

    function love.mousereleased(x, y, button, istouch, presses)
        holding = 1/love.timer.getFPS()
        CurrentlyRClicking = false
    end
