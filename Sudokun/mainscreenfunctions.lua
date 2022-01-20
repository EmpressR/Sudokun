

function for_play()
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.printf('How to Play', 0, 500, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('Credits', 0, 600, VIRTUAL_WIDTH, 'center')

    love.graphics.setFont(sFont)
    love.graphics.printf('Easy', -180, 400, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('Medium', -70, 400, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('Hard', 45, 400, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('Insane', 145, 400, VIRTUAL_WIDTH, 'center')
end

function for_how()
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.printf('Play', 0, 300, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('Credits', 0, 600, VIRTUAL_WIDTH, 'center')

    love.graphics.setFont(sFont)
    love.graphics.printf('Easy', -180, 400, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('Medium', -70, 400, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('Hard', 45, 400, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('Insane', 145, 400, VIRTUAL_WIDTH, 'center')
end

function for_credits()
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.printf('Play', 0, 300, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('How to Play', 0, 500, VIRTUAL_WIDTH, 'center')

    love.graphics.setFont(sFont)
    love.graphics.printf('Easy', -180, 400, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('Medium', -70, 400, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('Hard', 45, 400, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('Insane', 145, 400, VIRTUAL_WIDTH, 'center')
end


function for_easy()
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.printf('Medium', -70, 400, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('Hard', 45, 400, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('Insane', 145, 400, VIRTUAL_WIDTH, 'center')

    love.graphics.setFont(lFont)
    love.graphics.printf('Play', 0, 300, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('How to Play', 0, 500, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('Credits', 0, 600, VIRTUAL_WIDTH, 'center')
end

function for_medium()
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.printf('Easy', -180, 400, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('Hard', 45, 400, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('Insane', 145, 400, VIRTUAL_WIDTH, 'center')


    love.graphics.setFont(lFont)
    love.graphics.printf('Play', 0, 300, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('How to Play', 0, 500, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('Credits', 0, 600, VIRTUAL_WIDTH, 'center')
end

function for_hard()
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.printf('Easy', -180, 400, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('Medium', -70, 400, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('Insane', 145, 400, VIRTUAL_WIDTH, 'center')

    love.graphics.setFont(lFont)
    love.graphics.printf('Play', 0, 300, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('How to Play', 0, 500, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('Credits', 0, 600, VIRTUAL_WIDTH, 'center')
end

function for_insane()
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.printf('Easy', -180, 400, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('Medium', -70, 400, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('Hard', 45, 400, VIRTUAL_WIDTH, 'center')

    love.graphics.setFont(lFont)
    love.graphics.printf('Play', 0, 300, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('How to Play', 0, 500, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('Credits', 0, 600, VIRTUAL_WIDTH, 'center')
end


function blinking(text, x, y, V_W, aling)

    if math.floor(love.timer.getTime()) % 2 == 0 then

        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.printf(text, x, y, V_W, aling)
    
    else
        love.graphics.setColor(1, 1, 1, 0.4)
        love.graphics.printf(text, x, y, V_W, aling)
    end
end


function levelprogress(score, x)

    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.setFont(xsFont)

    love.graphics.printf(tostring(score) .. "/100", x, 452, VIRTUAL_WIDTH, 'center')

end

