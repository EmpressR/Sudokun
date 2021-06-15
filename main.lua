

push = require 'push'

require 'mainscreenfunctions'
--require 'endscreenfunctions'
require 'playscreenfunctions'

require 'easy'
--require 'medium'
--require 'hard'
--require 'insane'


WINDOW_WIDTH = 720
WINDOW_HEIGHT = 720

VIRTUAL_WIDTH = 720
VIRTUAL_HEIGHT = 720

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function love.load()

    love.window.setTitle('Sudokun<3')

    math.randomseed(os.time())

    xsFont = love.graphics.newFont('font.ttf', 24)
    sFont = love.graphics.newFont('font.ttf', 32)
    mFont = love.graphics.newFont('font.ttf', 48)
    lFont = love.graphics.newFont('font.ttf', 64)
    xlFont = love.graphics.newFont('font.ttf', 72)
    xxlFont = love.graphics.newFont('shanghai.ttf', 136)
    numberfont = love.graphics.newFont('shanghai.ttf', 48)

    love.graphics.setFont(mFont)


    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {

        fullscreen = false,
        resizable = true,
        vsync = true,
        canvas = false
    })

    difficultylevel = 'Easy 1'
    gameState = 'main'
    choosen = 'play'
    endchoosen = 'play'

    choosenCellx = 1
    choosenCelly = 1

    -- From file?
    easylevel = 1
    mediumlevel = 1
    hardlevel =  1
    insanelevel = 1

    test = 0

    press1 = 0
    press1count = 1

    press2 = 0
    press2count = 1

    press3 = 0
    press3count = 1

    press4 = 0
    press4count = 1

    press5 = 0
    press5count = 1

    press6 = 0
    press6count = 1

    press7 = 0
    press7count = 1

    press8 = 0
    press8count = 1

    press9 = 0
    press9count = 1

    press_ent = 0
    press_entcount = 1

    easy1()

end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function love.resize(w, h)

    push:resize(w, h)
end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function love.update(dt)

    if gameState == 'main' then
    
    elseif gameState == 'how' then

    elseif gameState == 'end' then

    elseif gameState == 'easy' then

    elseif gameState == 'medium' then
        --cells()
        --medium(medium_level)

    elseif gameState == 'hard' then
        --cells()
        --hard(hard_level)

    elseif gameState == 'insane' then
        --cells()
        --insane(insane_level)
    end
end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function love.keypressed(key)

    if key == 'escape' then
        love.event.quit()

-------------------------------------------------------------------------------------

    elseif key == 'enter' or key == 'return' then

        if gameState == 'main' then

            if choosen == 'play' then
                choosen = 'easy'

            elseif choosen == 'how' then
                gameState = 'how'

            elseif choosen == 'easy' then
                gameState = 'easy'

            elseif choosen == 'medium' then
                gameState = 'medium'

            elseif choosen == 'hard' then
                gameState = 'hard'

            elseif choosen == 'insane' then
                gameState = 'insane'

            end

------------------------------------------------------

        elseif gameState == 'easy' or gameState == 'medium' or gameState == 'hard' or gameState == 'insane' then

            press_ent = press_ent + 1

------------------------------------------------------

        elseif gameState == 'how' then
            gameState = 'main'

------------------------------------------------------

        elseif gameState == 'end' then

            if endchoosen == 'play' then

                if choosen == 'easy' then
                    gameState = 'easy'
                    --function for next easy

                elseif choosen == 'medium' then
                    gameState = 'medium'
                    --function for next medium

                elseif choosen == 'hard' then
                    gameState = 'hard'
                    --function for next hard

                elseif choosen == 'insane' then
                    gameState = 'insane'
                    --function for next insane

                end

            elseif endchoosen == 'difficulty' then
        
                if choosen == 'easy' then
                    --end_choosen = 'medium'
        
                elseif choosen == 'medium' then
                    --end_medium()
                    --end_choosen_medium()
                    
                elseif choosen == 'hard' then
                    --end_hard()
                    --end_choosen_hard()
        
                elseif choosen == 'insane' then
                    --end_insane()
                    --end_choosen_insane()

                end

            end

            --ball:reset()

            --player1Score = 0
            --player2Score = 0

        end

-------------------------------------------------------------------------------------

    elseif key == 'up' then

        if gameState == 'main' then

            if choosen == 'play' then
                choosen = 'how'

            elseif choosen == 'how' then
                choosen = 'insane'

            elseif choosen == 'easy' or choosen == 'medium' or choosen == 'hard' or choosen == 'insane' then
                choosen = 'play'

            end
            
------------------------------------------------------

        elseif gameState == 'easy' or gameState == 'medium' or gameState == 'hard' or gameState == 'insane' then

            if choosenCelly == 1 then

                choosenCelly = 9
        
            else
                choosenCelly = choosenCelly - 1
            end

------------------------------------------------------

        elseif gameState == 'end' then
        end

-------------------------------------------------------------------------------------

    elseif key == 'down' then

        if gameState == 'main' then

            if choosen == 'play' then
                choosen = 'easy'

            elseif choosen == 'easy' or choosen == 'medium' or choosen == 'hard' or choosen == 'insane' then
                choosen = 'how'

            elseif choosen == 'how' then
                choosen = 'play'

            end

------------------------------------------------------

        elseif gameState == 'easy' or gameState == 'medium' or gameState == 'hard' or gameState == 'insane' then

            if choosenCelly == 9 then

                choosenCelly = 1
    
            else
                choosenCelly = choosenCelly + 1
            end

------------------------------------------------------

        elseif gameState == 'end' then
        end

-------------------------------------------------------------------------------------        

    elseif key == 'right' then

        if gameState == 'main' then

            if choosen == 'play' then
                choosen = 'easy'

            elseif choosen == 'easy' then
                choosen = 'medium'

            elseif choosen == 'medium' then
                choosen = 'hard'
            
            elseif choosen == 'hard' then
                choosen = 'insane'

            elseif choosen == 'insane' then
                choosen = 'how'

            elseif choosen == 'how' then
                choosen = 'play'
            
            end

------------------------------------------------------

        elseif gameState == 'easy' or gameState == 'medium' or gameState == 'hard' or gameState == 'insane' then

            if choosenCellx == 9 then

                choosenCellx = 1

            else
                choosenCellx = choosenCellx + 1
            end

------------------------------------------------------

        elseif gameState == 'end' then
        end

-------------------------------------------------------------------------------------

    elseif key == 'left' then

        if gameState == 'main' then

            if choosen == 'play' then
                choosen = 'how'

            elseif choosen == 'easy' then
                choosen = 'play'

            elseif choosen == 'medium' then
                choosen = 'easy'
            
            elseif choosen == 'hard' then
                choosen = 'medium'

            elseif choosen == 'insane' then
                choosen = 'hard'

            elseif choosen == 'how' then
                choosen = 'insane'
            
            end

------------------------------------------------------

        elseif gameState == 'easy' or gameState == 'medium' or gameState == 'hard' or gameState == 'insane' then

            if choosenCellx == 1 then
    
                choosenCellx = 9
    
            else
                choosenCellx = choosenCellx - 1
            end

------------------------------------------------------

        elseif gameState == 'end' then
        end

-------------------------------------------------------------------------------------

    elseif key == '1' then

        if gameState == 'easy' or gameState == 'medium' or gameState == 'hard' or gameState == 'insane' then

            press1 = press1 + 1

        end

------------------------------------------------------

    elseif key == '2' then

        if gameState == 'easy' or gameState == 'medium' or gameState == 'hard' or gameState == 'insane' then

            press2 = press2 + 1

        end

------------------------------------------------------

    elseif key == '3' then

        if gameState == 'easy' or gameState == 'medium' or gameState == 'hard' or gameState == 'insane' then

            press3 = press3 + 1

        end

------------------------------------------------------

    elseif key == '4' then

        if gameState == 'easy' or gameState == 'medium' or gameState == 'hard' or gameState == 'insane' then

            press4 = press4 + 1

        end

------------------------------------------------------

    elseif key == '5' then

        if gameState == 'easy' or gameState == 'medium' or gameState == 'hard' or gameState == 'insane' then

            press5 = press5 + 1

        end

    ------------------------------------------------------

    elseif key == '6' then

        if gameState == 'easy' or gameState == 'medium' or gameState == 'hard' or gameState == 'insane' then

            press6 = press6 + 1

        end
    
------------------------------------------------------

    elseif key == '7' then

        if gameState == 'easy' or gameState == 'medium' or gameState == 'hard' or gameState == 'insane' then

            press7 = press7 + 1

        end

------------------------------------------------------

    elseif key == '8' then

        if gameState == 'easy' or gameState == 'medium' or gameState == 'hard' or gameState == 'insane' then

            press8 = press8 + 1

        end

------------------------------------------------------ 

    elseif key == '9' then

        if gameState == 'easy' or gameState == 'medium' or gameState == 'hard' or gameState == 'insane' then

            press9 = press9 + 1

        end
    end
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function love.draw()

    push:start()

    love.graphics.clear(0, 0, 0, 0)

    love.graphics.setFont(mFont)

------------------------------------------------------

    if gameState == 'main' then

        love.graphics.setFont(xxlFont)
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.printf('SUDOKUN', 0, 70, VIRTUAL_WIDTH, 'center')

        levelprogress(easylevel - 1, -179)
        levelprogress(mediumlevel - 1, -70)
        levelprogress(hardlevel - 1, 46)
        levelprogress(insanelevel - 1, 145)


        if choosen == 'play' then

            love.graphics.setFont(lFont)
            blinking('Play', 0, 300, VIRTUAL_WIDTH, 'center')
            for_play()

        elseif choosen == 'how' then

            love.graphics.setFont(lFont)
            blinking('How to Play', 0, 550, VIRTUAL_WIDTH, 'center')
            for_how()

        elseif choosen == 'easy' then

            love.graphics.setFont(sFont)
            blinking('Easy', -180, 400, VIRTUAL_WIDTH, 'center')
            for_easy()

        elseif choosen == 'medium' then

            love.graphics.setFont(sFont)
            blinking('Medium', -70, 400, VIRTUAL_WIDTH, 'center')
            for_medium()

        elseif choosen == 'hard' then

            love.graphics.setFont(sFont)
            blinking('Hard', 45, 400, VIRTUAL_WIDTH, 'center')
            for_hard()

        elseif choosen == 'insane' then

            love.graphics.setFont(sFont)
            blinking('Insane', 145, 400, VIRTUAL_WIDTH, 'center')
            for_insane()
        end

------------------------------------------------------

    elseif gameState == 'howto' then

        love.graphics.setFont(largeFont)
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.printf('How to Play', 0, 193, VIRTUAL_WIDTH, 'center')

        love.graphics.setFont(largeFont)
        love.graphics.printf('Use arrow-keys to navigate the grid', 0, 193, VIRTUAL_WIDTH, 'center')
        love.graphics.printf('Use numbers 1-9 to pick a number for current spot', 0, 213, VIRTUAL_WIDTH, 'center')
        love.graphics.printf('Write multiple numbers into the same spot to make notes', 0, 213, VIRTUAL_WIDTH, 'center')
        blinking('Press Enter to go back to Main Screen', 0, 203, VIRTUAL_WIDTH, 'center')

------------------------------------------------------

    elseif gameState == 'easy' or gameState == 'medium' or gameState == 'hard' or gameState == 'insane' then

        drawing_grid()
        love.graphics.setFont(sFont)
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.printf(tostring(difficultylevel), 0, 10, VIRTUAL_WIDTH, 'center')

        cell_coords(choosenCellx, choosenCelly)

        blinking_cell(Cellx, Celly)

        choosen_cell(choosenCellx,choosenCelly)

        make_level()

        temp_numbers()

        numbers()

        if press1 == press1count then

            pressing_number(1)
            press1count = press1count + 1

        end

        if press2 == press2count then

            pressing_number(2)
            press2count = press2count + 1

        end

        if press3 == press3count then

            pressing_number(3)
            press3count = press3count + 1

        end

        if press4 == press4count then

            pressing_number(4)
            press4count = press4count + 1

        end

        if press5 == press5count then

            pressing_number(5)
            press5count = press5count + 1

        end

        if press6 == press6count then

            pressing_number(6)
            press6count = press6count + 1

        end

        if press7 == press7count then

            pressing_number(7)
            
            press7count = press7count + 1

        end

        if press8 == press8count then

            pressing_number(8)
            
            press8count = press8count + 1

        end

        if press9 == press9count then

            pressing_number(9)
            
            press9count = press9count + 1

        end

        if press_ent == press_entcount then

            pressing_enter()

            press_entcount = press_entcount + 1

        end

------------------------------------------------------

    elseif gameState == 'end' then

        love.graphics.setFont(xlFont)
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.printf('Well Done!', 0, 203, VIRTUAL_WIDTH, 'center')

        love.graphics.setFont(largeFont)
        love.graphics.printf('You passed level ' .. tostring(difficultylevel) .. "!", 0, 193, VIRTUAL_WIDTH, 'center')

        if endchoosen == 'play' then

            blinking('Play next level', 0, 203, VIRTUAL_WIDTH, 'center')

            love.graphics.setColor(1, 1, 1, 1)
            love.graphics.printf('Change difficulty', 0, 203, VIRTUAL_WIDTH, 'center')

        elseif endchoosen == 'difficulty' then

            love.graphics.setFont(largeFont)
            love.graphics.setColor(1,1, 1, 1)
            love.graphics.printf('Play next level', 0, 203, VIRTUAL_WIDTH, 'center')

            blinking('Change difficulty', 0, 203, VIRTUAL_WIDTH, 'center')

            if choosen == 'easy' then
                end_easy()
                end_choosen_easy()

            elseif choosen == 'medium' then
                end_medium()
                end_choosen_medium()
            
            elseif choosen == 'hard' then
                end_hard()
                end_choosen_hard()

            elseif choosen == 'insane' then
                end_insane()
                end_choosen_insane()

            end
        end
    end

------------------------------------------------------

    if test == 1 then

        displayFPS()
    end

    push:finish()
end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function displayFPS()

    love.graphics.setFont(xsFont)
    love.graphics.setColor(0.68, 0.1, 0.3, 1)

    love.graphics.print('FPS: ' .. tostring(love.timer.getFPS()), 5 , 5)
end


