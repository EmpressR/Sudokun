

function end_easy()

    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.printf('Medium', -120, 600, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('Hard', 0, 600, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('Insane', 120, 600, VIRTUAL_WIDTH, 'center')
end


function end_medium()

    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.printf('Easy', -120, 600, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('Hard', 0, 600, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('Insane', 120, 600, VIRTUAL_WIDTH, 'center')
end
        
            
function end_hard()

    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.printf('Easy', -120, 600, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('Medium', 0, 600, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('Insane', 120, 600, VIRTUAL_WIDTH, 'center')
end


function end_insane()

    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.printf('Easy', -120, 600, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('Medium', 0, 600, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('Hard', 120, 600, VIRTUAL_WIDTH, 'center')
end
      
--------------------------------------------------------------------------------------------------------

function end_choosen_easy()

    if endchoosen == 'medium' then
        blinking('Medium', -120, 600, VIRTUAL_WIDTH, 'center')
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.printf('Hard', 0, 600, VIRTUAL_WIDTH, 'center')
        love.graphics.printf('Insane', 120, 600, VIRTUAL_WIDTH, 'center')

    elseif endchoosen == 'hard' then
        blinking('Hard', 0, 600, VIRTUAL_WIDTH, 'center')
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.printf('Medium', -120, 600, VIRTUAL_WIDTH, 'center')
        love.graphics.printf('Insane', 120, 600, VIRTUAL_WIDTH, 'center')

    elseif endchoosen == 'insane' then
        blinking('Insane', 120, 600, VIRTUAL_WIDTH, 'center')
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.printf('Medium', -120, 600, VIRTUAL_WIDTH, 'center')
        love.graphics.printf('Hard', 0, 600, VIRTUAL_WIDTH, 'center')
    end    
end                
    

function end_choosen_medium()
                    
    if endchoosen == 'easy' then
        blinking('Easy', 0, 203, VIRTUAL_WIDTH, 'center')
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.printf('Hard', 0, 203, VIRTUAL_WIDTH, 'center')
        love.graphics.printf('Insane', 0, 203, VIRTUAL_WIDTH, 'center')

    elseif endchoosen == 'hard' then
        blinking('Hard', 0, 203, VIRTUAL_WIDTH, 'center')
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.printf('Easy', 0, 203, VIRTUAL_WIDTH, 'center')
        love.graphics.printf('Insane', 0, 203, VIRTUAL_WIDTH, 'center')

    elseif endchoosen == 'insane' then
        blinking('Insane', 0, 203, VIRTUAL_WIDTH, 'center')
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.printf('Easy', 0, 203, VIRTUAL_WIDTH, 'center')
        love.graphics.printf('Hard', 0, 203, VIRTUAL_WIDTH, 'center')
    end    
end 


function end_choosen_hard()
                    
    if endchoosen == 'easy' then
        blinking('Easy', 0, 203, VIRTUAL_WIDTH, 'center')
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.printf('Medium', 0, 203, VIRTUAL_WIDTH, 'center')
        love.graphics.printf('Insane', 0, 203, VIRTUAL_WIDTH, 'center')

    elseif endchoosen == 'medium' then
        blinking('Medium', 0, 203, VIRTUAL_WIDTH, 'center')
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.printf('Easy', 0, 203, VIRTUAL_WIDTH, 'center')
        love.graphics.printf('Insane', 0, 203, VIRTUAL_WIDTH, 'center')

    elseif endchoosen == 'insane' then
        blinking('Insane', 0, 203, VIRTUAL_WIDTH, 'center')
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.printf('Easy', 0, 203, VIRTUAL_WIDTH, 'center')
        love.graphics.printf('Medium', 0, 203, VIRTUAL_WIDTH, 'center')
    end    
end 


function end_choosen_insane()
                    
    if endchoosen == 'easy' then
        blinking('Easy', 0, 203, VIRTUAL_WIDTH, 'center')
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.printf('Medium', 0, 203, VIRTUAL_WIDTH, 'center')
        love.graphics.printf('Hard', 0, 203, VIRTUAL_WIDTH, 'center')

    elseif endchoosen == 'medium' then
        blinking('Medium', 0, 203, VIRTUAL_WIDTH, 'center')
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.printf('Easy', 0, 203, VIRTUAL_WIDTH, 'center')
        love.graphics.printf('Hard', 0, 203, VIRTUAL_WIDTH, 'center')

    elseif endchoosen == 'hard' then
        blinking('Hard', 0, 203, VIRTUAL_WIDTH, 'center')
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.printf('Easy', 0, 203, VIRTUAL_WIDTH, 'center')
        love.graphics.printf('Medium', 0, 203, VIRTUAL_WIDTH, 'center')
    end    
end 

