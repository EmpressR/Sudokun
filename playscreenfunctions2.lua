
-- Resetting used cells
function cells()

    cell_1_1 = true
    cell_2_1 = true
    cell_3_1 = true
    cell_4_1 = true
    cell_5_1 = true
    cell_6_1 = true
    cell_7_1 = true
    cell_8_1 = true
    cell_9_1 = true

    cell_1_2 = true
    cell_2_2 = true
    cell_3_2 = true
    cell_4_2 = true
    cell_5_2 = true
    cell_6_2 = true
    cell_7_2 = true
    cell_8_2 = true
    cell_9_2 = true

    cell_1_3 = true
    cell_2_3 = true
    cell_3_3 = true
    cell_4_3 = true
    cell_5_3 = true
    cell_6_3 = true
    cell_7_3 = true
    cell_8_3 = true
    cell_9_3 = true

    cell_1_4 = true
    cell_2_4 = true
    cell_3_4 = true
    cell_4_4 = true
    cell_5_4 = true
    cell_6_4 = true
    cell_7_4 = true
    cell_8_4 = true
    cell_9_4 = true

    cell_1_5 = true
    cell_2_5 = true
    cell_3_5 = true
    cell_4_5 = true
    cell_5_5 = true
    cell_6_5 = true
    cell_7_5 = true
    cell_8_5 = true
    cell_9_5 = true

    cell_1_6 = true
    cell_2_6 = true
    cell_3_6 = true
    cell_4_6 = true
    cell_5_6 = true
    cell_6_6 = true
    cell_7_6 = true
    cell_8_6 = true
    cell_9_6 = true

    cell_1_7 = true
    cell_2_7 = true
    cell_3_7 = true
    cell_4_7 = true
    cell_5_7 = true
    cell_6_7 = true
    cell_7_7 = true
    cell_8_7 = true
    cell_9_7 = true

    cell_1_8 = true
    cell_2_8 = true
    cell_3_8 = true
    cell_4_8 = true
    cell_5_8 = true
    cell_6_8 = true
    cell_7_8 = true
    cell_8_8 = true
    cell_9_8 = true

    cell_1_9 = true
    cell_2_9 = true
    cell_3_9 = true
    cell_4_9 = true
    cell_5_9 = true
    cell_6_9 = true
    cell_7_9 = true
    cell_8_9 = true
    cell_9_9 = true
end


-- Coordinates for placing a number into a cell
function cellxy(x, y)

    if x == 1 then
        rx = 11
    elseif x == 2 then
        rx = 11
    elseif x == 3 then
        rx = 11
    elseif x == 4 then
        rx = 11
    elseif x == 5 then
        rx = 11
    elseif x == 6 then
        rx = 11
    elseif x == 7 then
        rx = 11
    elseif x == 8 then
        rx = 11
    elseif x == 9 then
        rx = 11
    end

    if y == 1 then
        ry = 11
    elseif y == 2 then
        ry = 11
    elseif y == 3 then
        ry = 11
    elseif y == 4 then
        ry = 11
    elseif y == 5 then
        ry = 11
    elseif y == 6 then
        ry = 11
    elseif y == 7 then
        ry = 11
    elseif y == 8 then
        ry = 11
    elseif y == 9 then
        ry = 11
    end
   
    love.graphics.printf(z, rx, ry, VIRTUAL_WIDTH, 'center')
end


-- Function for checking if right number was pressed
function cell_check(z)

    if love.keypressed(z) then
        count = count + 1
    else
        count = count - 1
    end
end

function cell_chosen(cell)

 
    if cell == 1 then
        cell_check = 1
    elseif cell == 2 then
        cell_check = 2
    elseif cell == 3 then
        cell_check = 3
    elseif cell == 4 then
        cell_check = 4
    elseif cell == 5 then
        cell_check = 5
    elseif cell == 6 then
        cell_check = 6
    elseif cell == 7 then
        cell_check = 7
    elseif cell == 8 then
        cell_check = 8
    elseif cell == 3 then
        cell_check = 3
    elseif cell == 2 then
        cell_check = 2
    elseif cell == 3 then
        cell_check = 3
    elseif cell == 2 then
        cell_check = 2
    elseif cell == 3 then
        cell_check = 3
    elseif cell == 2 then
        cell_check = 2
    elseif cell == 3 then
        cell_check = 3
    elseif cell == 2 then
        cell_check = 2
    elseif cell == 3 then
        cell_check = 3
    elseif cell == 2 then
        cell_check = 2
    elseif cell == 3 then
        cell_check = 3
    elseif cell == 2 then
        cell_check = 2
    elseif cell == 3 then
        cell_check = 3
    elseif cell == 2 then
        cell_check = 2
    elseif cell == 3 then
        cell_check = 3
    elseif cell == 2 then
        cell_check = 2
    elseif cell == 3 then
        cell_check = 3
    elseif cell == 2 then
        cell_check = 2
    elseif cell == 3 then
        cell_check = 3
    elseif cell == 2 then
        cell_check = 2
    elseif cell == 3 then
        cell_check = 3
    elseif cell == 2 then
        cell_check = 2
    elseif cell == 3 then
        cell_check = 3
    elseif cell == 2 then
        cell_check = 2
    elseif cell == 3 then
        cell_check = 3
    elseif cell == 2 then
        cell_check = 2
    elseif cell == 3 then
        cell_check = 3


function keys(x, y)

    if love.keypressed('down') then
        pick_down(x, y)
        cell_chosen(x2, 2)

    elseif love.keypressed('up') then
        pick_up(x, y)
        cell_chosen(x, 8)

    elseif love.keypressed('right') then
        pick_right(x, y)
        cell_chosen(4, y)

    elseif love.keypressed('left') then
        pick_left(x, y)
        cell_chosen(7, y)

    end
end


-- Finding next available cell when pressing down, 
function pick_down(x, y)

    if x == 1 then
        if y == 1 then
            if cell_1_2 == false then
                if cell_1_3 == false then
                    if cell_1_4 == false then
                        if cell_1_5 == false then
                            if cell_1_6 == false then
                                if cell_1_7 == false then
                                    x2 = 8
                                else
                                    x2 = 7
                            else
                                x2 = 6
                        else
                            x2 = 5
                    else
                        x2 = 4
                else
                    x2 = 3
            else
                x2 = 2
        elseif y == 2 then
            if cell_1_3 == false then
                if cell_1_4 == false then
                    if cell_1_5 == false then
                        if cell_1_6 == false then
                            if cell_1_7 == false then
                                if cell_1_8 == false then
                                    x2 = 9
                                else
                                    x2 = 8
                            else
                                x2 = 7
                        else
                            x2 = 6
                    else
                        x2 = 5
                else
                    x2 = 4
            else
                x2 = 3
        elseif y == 3 then
            if cell_1_4 == false then
                if cell_1_5 == false then
                    if cell_1_6 == false then
                        if cell_1_7 == false then
                            if cell_1_8 == false then
                                if cell_1_9 == false then
                                    x2 = 1
                                else
                                    x2 = 9
                            else
                                x2 = 8
                        else
                            x2 = 7
                    else
                        x2 = 6
                else
                    x2 = 5
            else
                x2 = 4
        elseif y == 4 then
            if cell_1_5 == false then
                if cell_1_6 == false then
                    if cell_1_7 == false then
                        if cell_1_8 == false then
                            if cell_1_9 == false then
                                if cell_1_1 == false then
                                    x2 = 2
                                else
                                    x2 = 1
                            else
                                x2 = 9
                        else
                            x2 = 8
                    else
                        x2 = 7
                else
                    x2 = 6
            else
                x2 = 5
        
