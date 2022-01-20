

push = require 'push'

Class = require 'class'

require 'Cell'
require 'mainscreenfunctions'
require 'endscreenfunctions'
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

    xsFont = love.graphics.newFont('font.ttf', 18)
    sFont = love.graphics.newFont('font.ttf', 32)
    mFont = love.graphics.newFont('font.ttf', 48)
    lFont = love.graphics.newFont('font.ttf', 64)
    xlFont = love.graphics.newFont('font.ttf', 72)
    xxlFont = love.graphics.newFont('shanghai.ttf', 136)
    numberfont = love.graphics.newFont('shanghai.ttf', 48)

    love.graphics.setFont(mFont)

    sakuya = love.audio.newSource('sounds/PerituneMaterial_Sakuya.mp3', 'stream')
    sakuya2 = love.audio.newSource('sounds/PerituneMaterial_Sakuya2.mp3', 'stream')
    sakuya3 = love.audio.newSource('sounds/PerituneMaterial_Sakuya3.mp3', 'stream')
    sakura = love.audio.newSource('sounds/roa-music-sakura-2020.mp3', 'stream')


    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {

        fullscreen = false,
        resizable = true,
        vsync = true,
        canvas = false
    })

    difficultylevel = 'Easy 1'
    difficulty = 'easy'
    gameState = 'main'
    choosen = 'play'
    endchoosen = 'play'
    music = 1
    current_music = 1
    sounds = on

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

    press0 = 0
    press0count = 1

    press_ent = 0
    press_entcount = 1

    corrects = 0

    easy1()

end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function love.resize(w, h)

    push:resize(w, h)
end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function love.update(dt)

    --if not music:isPlaying() then
		--love.audio.play(music['sakuya'])
	--end
    if music == 1 then

        if current_music == 1 then
            sakuya:play()
    
        elseif current_music == 2 then
            sakura:play()

        elseif current_music == 3 then
            sakuya2:play()

        elseif current_music == 4 then
            sakuya3:play()
        end
    else

    end

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

------------------------------------------------------------------------------------- Escape

    if key == 'escape' then

        if gameState == 'main' then
            love.event.quit()
        else
            gameState = 'main'
        end
    

------------------------------------------------------------------------------------- Enter or Return

    elseif key == 'enter' or key == 'return' then

------------------------------------------------------ Mainscreen
    
        if gameState == 'main' then

            if choosen == 'play' then
                choosen = 'easy'

            elseif choosen == 'how' then
                gameState = 'how'

            elseif choosen == 'credits' then
                gameState = 'credits'

            elseif choosen == 'easy' then
                gameState = 'easy'
                difficulty = 'easy'

            elseif choosen == 'medium' then
                gameState = 'medium'
                difficulty = 'medium'

            elseif choosen == 'hard' then
                gameState = 'hard'
                difficulty = 'hard'

            elseif choosen == 'insane' then
                gameState = 'insane'
                difficulty = 'insane'

            end

------------------------------------------------------ Playscreens

        elseif gameState == 'easy' or gameState == 'medium' or gameState == 'hard' or gameState == 'insane' then

            press_ent = press_ent + 1
            

------------------------------------------------------ Howto

        elseif gameState == 'how' then
            gameState = 'main'

------------------------------------------------------ Endscreen

        elseif gameState == 'end' then

            if endchoosen == 'play' then

                if difficulty == 'easy' then
                    gameState = 'easy'
                    --function for next easy

                elseif difficulty == 'medium' then
                    gameState = 'medium'
                    --function for next medium

                elseif difficulty == 'hard' then
                    gameState = 'hard'
                    --function for next hard

                elseif difficulty == 'insane' then
                    gameState = 'insane'
                    --function for next insane

                end

            elseif endchoosen == 'difficulty' then

                if difficulty == 'easy' then
                    endchoosen = 'medium'

                else
                    endchoosen = 'easy'
                end

            elseif endchoosen == 'easy' then
                gameState = 'easy'
                --function for next easy
            
            elseif endchoosen == 'medium' then
                gameState = 'medium'
                --function for next medium

            elseif endchoosen == 'hard' then
                gameState = 'hard'
                --function for next hard

            elseif endchoosen == 'insane' then
                gameState = 'insane'
                --function for next insane

            end
        end

------------------------------------------------------------------------------------- Up

    elseif key == 'up' then

------------------------------------------------------ Mainscreen

        if gameState == 'main' then

            if choosen == 'play' then
                choosen = 'credits'

            elseif choosen == 'credits' then
                choosen = 'how'

            elseif choosen == 'how' then
                choosen = 'insane'

            elseif choosen == 'easy' or choosen == 'medium' or choosen == 'hard' or choosen == 'insane' then
                choosen = 'play'

            end
            
------------------------------------------------------ Playscreens

        elseif gameState == 'easy' or gameState == 'medium' or gameState == 'hard' or gameState == 'insane' then

            if choosenCelly == 1 then

                choosenCelly = 9
        
            else
                choosenCelly = choosenCelly - 1
            end

------------------------------------------------------ Endscreen

        elseif gameState == 'end' then

            if endchoosen == 'play' then
                endchoosen = 'difficulty'

            elseif endchoosen == 'difficulty' then
                endchoosen = 'play'

            elseif endchoosen == 'easy' or endchoosen == 'medium' or endchoosen == 'hard' or endchoosen == 'insane' then
                endchoosen = 'difficulty'
            end
        end

------------------------------------------------------------------------------------- Down

    elseif key == 'down' then

------------------------------------------------------ Mainscreen

        if gameState == 'main' then

            if choosen == 'play' then
                choosen = 'easy'

            elseif choosen == 'easy' or choosen == 'medium' or choosen == 'hard' or choosen == 'insane' then
                choosen = 'how'

            elseif choosen == 'how' then
                choosen = 'credits'

            elseif choosen == 'credits' then
                choosen = 'play'

            end

------------------------------------------------------ Playscreens

        elseif gameState == 'easy' or gameState == 'medium' or gameState == 'hard' or gameState == 'insane' then

            if choosenCelly == 9 then

                choosenCelly = 1
    
            else
                choosenCelly = choosenCelly + 1
            end

------------------------------------------------------ Endscreen

        elseif gameState == 'end' then

            if endchoosen == 'play' then
                endchoosen = 'difficulty'

            elseif endchoosen == 'difficulty' then

                if difficulty == 'easy' then
                    endchoosen = 'medium'

                else
                    endchoosen = 'easy'
                end

            elseif endchoosen == 'easy' or endchoosen == 'medium' or endchoosen == 'hard' or endchoosen == 'insane' then
                endchoosen = 'play'
            end
        end

------------------------------------------------------------------------------------- Right

    elseif key == 'right' then

------------------------------------------------------ Mainscreen

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
                choosen = 'credits'

            elseif choosen == 'credits' then
                choosen = 'play'
            
            end

------------------------------------------------------ Playscreens

        elseif gameState == 'easy' or gameState == 'medium' or gameState == 'hard' or gameState == 'insane' then

            if choosenCellx == 9 then

                choosenCellx = 1

            else
                choosenCellx = choosenCellx + 1
            end

------------------------------------------------------ Endscreen

        elseif gameState == 'end' then

            if endchoosen == 'play' then
                endchoosen = 'difficulty'

            elseif endchoosen == 'difficulty' then

                if difficulty == 'easy' then
                    endchoosen = 'medium'

                else
                    endchoosen = 'easy'
                end

            elseif endchoosen == 'easy' then

                if difficulty == 'medium' then
                    endchoosen = 'hard'

                else
                    endchoosen = 'medium'
                end
            
            elseif endchoosen == 'medium' then

                if difficulty == 'hard' then
                    endchoosen = 'insane'

                else
                    endchoosen = 'hard'
                end

            elseif endchoosen == 'hard' then

                if difficulty == 'insane' then
                    endchoosen = 'easy'

                else
                    endchoosen = 'insane'
                end

            elseif endchoosen == 'insane' then

                if difficulty == 'easy' then
                    endchoosen = 'medium'

                else
                    endchoosen = 'easy'
                end
            end
        end

------------------------------------------------------------------------------------- Left

    elseif key == 'left' then

------------------------------------------------------ Mainscreen

        if gameState == 'main' then

            if choosen == 'play' then
                choosen = 'credits'

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

            elseif choosen == 'credits' then
                choosen = 'how'
            
            end

------------------------------------------------------ Playscreens

        elseif gameState == 'easy' or gameState == 'medium' or gameState == 'hard' or gameState == 'insane' then

            if choosenCellx == 1 then
    
                choosenCellx = 9
    
            else
                choosenCellx = choosenCellx - 1
            end

------------------------------------------------------ Endscreen

        elseif gameState == 'end' then

            if endchoosen == 'play' then
                endchoosen = 'difficulty'

            elseif endchoosen == 'difficulty' then
                endchoosen = 'play'

            elseif endchoosen == 'easy' then

                if difficulty == 'insane' then
                    endchoosen = 'hard'

                else
                    endchoosen = 'insane'
                end
            
            elseif endchoosen == 'medium' then

                if difficulty == 'easy' then
                    endchoosen = 'insane'

                else
                    endchoosen = 'easy'
                end

            elseif endchoosen == 'hard' then

                if difficulty == 'medium' then
                    endchoosen = 'easy'

                else
                    endchoosen = 'medium'
                end

            elseif endchoosen == 'insane' then

                if difficulty == 'hard' then
                    endchoosen = 'medium'

                else
                    endchoosen = 'hard'
                end
            end
        end

------------------------------------------------------------------------------------- 1

    elseif key == '1' then

        if gameState == 'easy' or gameState == 'medium' or gameState == 'hard' or gameState == 'insane' then

            press1 = press1 + 1

        end

------------------------------------------------------ 2

    elseif key == '2' then

        if gameState == 'easy' or gameState == 'medium' or gameState == 'hard' or gameState == 'insane' then

            press2 = press2 + 1

        end

------------------------------------------------------ 3

    elseif key == '3' then

        if gameState == 'easy' or gameState == 'medium' or gameState == 'hard' or gameState == 'insane' then

            press3 = press3 + 1

        end

------------------------------------------------------ 4

    elseif key == '4' then

        if gameState == 'easy' or gameState == 'medium' or gameState == 'hard' or gameState == 'insane' then

            press4 = press4 + 1

        end

------------------------------------------------------ 5

    elseif key == '5' then

        if gameState == 'easy' or gameState == 'medium' or gameState == 'hard' or gameState == 'insane' then

            press5 = press5 + 1

        end

------------------------------------------------------ 6

    elseif key == '6' then

        if gameState == 'easy' or gameState == 'medium' or gameState == 'hard' or gameState == 'insane' then

            press6 = press6 + 1

        end
    
------------------------------------------------------ 7

    elseif key == '7' then

        if gameState == 'easy' or gameState == 'medium' or gameState == 'hard' or gameState == 'insane' then

            press7 = press7 + 1

        end

------------------------------------------------------ 8

    elseif key == '8' then

        if gameState == 'easy' or gameState == 'medium' or gameState == 'hard' or gameState == 'insane' then

            press8 = press8 + 1

        end

------------------------------------------------------ 9

    elseif key == '9' then

        if gameState == 'easy' or gameState == 'medium' or gameState == 'hard' or gameState == 'insane' then

            press9 = press9 + 1

        end

------------------------------------------------------ 0/O

    elseif key == '0' or key == 'o' then

        if gameState == 'easy' or gameState == 'medium' or gameState == 'hard' or gameState == 'insane' then

            press0 = press0 + 1

        end

------------------------------------------------------ A -- cheatkey

    elseif key == 'a' then
        gameState = 'end'

------------------------------------------------------  M -- Music on/off

    elseif key == 'm' then

        if music == 1 then

            music = 2
            sakuya:pause()
            sakura:pause()
            sakuya2:pause()
            sakuya3:pause()

        elseif music == 2 then
            music = 1
        end

------------------------------------------------------ N -- Next music-track

    elseif key == 'n' then

        if current_music == 4 then

            sakuya3:pause()
            current_music = 1

        else 
            sakuya:pause()
            sakura:pause()
            sakuya2:pause()
            current_music = current_music + 1
        end
    end
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function love.draw()

    push:start()

    love.graphics.clear(0, 0, 0, 0)

    love.graphics.setFont(mFont)

------------------------------------------------------ Music

    if music == 1 then

        love.graphics.setColor(1, 1, 1, 1)       -- Musical note

        rectangle(529, 20, 8, 7)                -- lower part
        rectangle(535, 10, 2, 10)               -- middle part
        rectangle(535, 10, 8, 2)                -- upper part

        love.graphics.setFont(xsFont)

        if current_music == 1 then
            love.graphics.printf('Sakuya by PeriTune', 272, 4, VIRTUAL_WIDTH, 'center')

        elseif current_music == 2 then
            love.graphics.printf('Sakura 2020 by Roa', 272, 4, VIRTUAL_WIDTH, 'center')

        elseif current_music == 3 then
            love.graphics.printf('Sakuya2 by PeriTune', 268, 4, VIRTUAL_WIDTH, 'center')

        elseif current_music == 4 then
            love.graphics.printf('Sakuya3 by PeriTune', 268, 4, VIRTUAL_WIDTH, 'center')
        end
    else

    end

------------------------------------------------------ Mainscreen

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
            blinking('How to Play', 0, 500, VIRTUAL_WIDTH, 'center')
            for_how()

        elseif choosen == 'credits' then

            love.graphics.setFont(lFont)
            blinking('Credits', 0, 600, VIRTUAL_WIDTH, 'center')
            for_credits()

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

------------------------------------------------------ Howto

    elseif gameState == 'how' then

        love.graphics.setFont(mFont)
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.printf('How to Play', 0, 100, VIRTUAL_WIDTH, 'center')

        love.graphics.setFont(sFont)
        love.graphics.printf('Use arrow-keys to navigate the grid', 0, 200, VIRTUAL_WIDTH, 'center')
        love.graphics.printf('Use 1-9 to pick a number for the current cell', 0, 250, VIRTUAL_WIDTH, 'center')
        love.graphics.printf('Use 0 (zero) to clear a cell', 0, 300, VIRTUAL_WIDTH, 'center')
        love.graphics.printf('Press Enter to confirm correct numbers', 0, 375, VIRTUAL_WIDTH, 'center')
        love.graphics.printf('Press M to pause music', 0, 450, VIRTUAL_WIDTH, 'center')
        love.graphics.printf('Press N to play next music-track', 0, 500, VIRTUAL_WIDTH, 'center')

        love.graphics.setFont(mFont)
        blinking('Main Screen', 0, 600, VIRTUAL_WIDTH, 'center')

------------------------------------------------------ Credits

    elseif gameState == 'credits' then

        love.graphics.setFont(mFont)
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.printf('Credits', 0, 100, VIRTUAL_WIDTH, 'center')

        love.graphics.setFont(sFont)

        love.graphics.printf('Music:', 0, 200, VIRTUAL_WIDTH, 'center')
        love.graphics.printf('Sakuya by Peritune', 0, 250, VIRTUAL_WIDTH, 'center')
        love.graphics.printf('Sakuya2 by Peritune', 0, 300, VIRTUAL_WIDTH, 'center')
        love.graphics.printf('Sakuya3 by Peritune', 0, 350, VIRTUAL_WIDTH, 'center')
        love.graphics.printf('Sakura 2020 by Roa', 0, 400, VIRTUAL_WIDTH, 'center')

        love.graphics.printf('Everything else:', 0, 500, VIRTUAL_WIDTH, 'center')
        love.graphics.printf('EmpressR', 0, 550, VIRTUAL_WIDTH, 'center')

------------------------------------------------------ Playscreens

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

        if press0 == press0count then

            pressing_number(0)
            
            press0count = press0count + 1

        end

        if press_ent == press_entcount then

            pressing_enter()
            press_entcount = press_entcount + 1

            level_complete()
            if corrects == 81 then
                gameState = 'end'
            end
        
            corrects = 0

        end

------------------------------------------------------ Endscreen

    elseif gameState == 'end' then

        love.graphics.setFont(xxlFont)
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.printf('Well Done!', 0, 150, VIRTUAL_WIDTH, 'center')

        love.graphics.setFont(mFont)
        love.graphics.printf('You passed level ' .. tostring(difficultylevel) .. "!", 0, 80, VIRTUAL_WIDTH, 'center')

        if endchoosen == 'play' then

            love.graphics.setFont(lFont)
            blinking('Play next level', 0, 370, VIRTUAL_WIDTH, 'center')

            love.graphics.setColor(1, 1, 1, 1)
            love.graphics.printf('Change difficulty', 0, 490, VIRTUAL_WIDTH, 'center')

        elseif endchoosen == 'difficulty' then

            love.graphics.setFont(lFont)
            love.graphics.setColor(1,1, 1, 1)
            love.graphics.printf('Play next level', 0, 370, VIRTUAL_WIDTH, 'center')

            blinking('Change difficulty', 0, 490, VIRTUAL_WIDTH, 'center')

            love.graphics.setFont(sFont)

            if difficulty == 'easy' then
                end_easy()

            elseif difficulty == 'medium' then
                end_medium()
            
            elseif difficulty == 'hard' then
                end_hard()

            elseif difficulty == 'insane' then
                end_insane()
            end

        elseif endchoosen == 'medium' or endchoosen == 'hard' or endchoosen == 'insane' then

            love.graphics.setFont(lFont)
            love.graphics.setColor(1, 1, 1, 1)
            love.graphics.printf('Play next level', 0, 370, VIRTUAL_WIDTH, 'center')
            love.graphics.printf('Change difficulty', 0, 490, VIRTUAL_WIDTH, 'center')
    
            love.graphics.setFont(sFont)

            if difficulty == 'easy' then
                end_choosen_easy()

            elseif difficulty == 'medium' then
                end_choosen_medium()

            elseif difficulty == 'hard' then
                end_choosen_hard()

            elseif difficulty == 'insane' then
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


