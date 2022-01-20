

require 'easy'
require 'Cell'

----------------------------------------------------------------------------------------------------------------------- Drawing the game grid

function drawing_grid()

------------------ x, y, width, height
    
        love.graphics.setColor(1, 1, 1, 0.13)
        rectangle(263, 74, 189, 189) -- up
        rectangle(74, 263, 189, 189) -- left
    
        rectangle(452, 263, 189, 189) -- right
        rectangle(263, 452, 189, 189) -- down
    
------------------------------------------------------ vertical
    
        love.graphics.setColor(1, 1, 1, 1)

        rectangle(74, 74, 572, 5)
        rectangle(74, 263, 572, 5)
        rectangle(74, 452, 572, 5)
        rectangle(74, 641, 572, 5)

------------------------------------------------------ horizontal

        rectangle(74, 74, 5, 572)
        rectangle(263, 74, 5, 572)
        rectangle(452, 74, 5, 572)
        rectangle(641, 74, 5, 572)

------------------------------------------------------ vertical

        love.graphics.setColor(1, 1, 1, 0.2)

        rectangle(74, 139, 572, 2)
        rectangle(74, 201, 572, 2)

        rectangle(74, 328, 572, 2)
        rectangle(74, 390, 572, 2)

        rectangle(74, 517, 572, 2)
        rectangle(74, 579, 572, 2)

------------------------------------------------------ horizontal

        rectangle(139, 74, 2, 572)
        rectangle(201, 74, 2, 572)

        rectangle(328, 74, 2, 572)
        rectangle(390, 74, 2, 572)

        rectangle(517, 74, 2, 572)
        rectangle(579, 74, 2, 572)
 
end

------------------------------------------------------------------------------------- Rectangles for game grid

function rectangle(x, y, w, h)

    love.graphics.rectangle('fill', x, y, w, h)
end

----------------------------------------------------------------------------------------------------------------------- Takes Cellx and Celly for showing the choosen cell

function blinking_cell(x, y)

    if math.floor(love.timer.getTime()) % 2 == 0 then

        love.graphics.setColor(1, 1, 1, 0.2)
        love.graphics.rectangle('fill', x, y, 60, 60)
    
    else

    end
end

-----------------------------------------------------------------------------------------------------------------------  Gives the choosen cell's coords

function cell_coords(choosenCellx, choosenCelly)

    if choosenCellx == 1 then
        Cellx = 79

    elseif choosenCellx == 2 then
        Cellx = 141

    elseif choosenCellx == 3 then
        Cellx = 203

    elseif choosenCellx == 4 then
        Cellx = 268
    
    elseif choosenCellx == 5 then
        Cellx = 330

    elseif choosenCellx == 6 then
        Cellx = 392

    elseif choosenCellx == 7 then
        Cellx = 457

    elseif choosenCellx == 8 then
        Cellx = 519

    elseif choosenCellx == 9 then
        Cellx = 581
    end


    if choosenCelly == 1 then
        Celly = 79

    elseif choosenCelly == 2 then
        Celly = 141

    elseif choosenCelly == 3 then
        Celly = 203

    elseif choosenCelly == 4 then
        Celly = 268
    
    elseif choosenCelly == 5 then
        Celly = 330

    elseif choosenCelly == 6 then
        Celly = 392

    elseif choosenCelly == 7 then
        Celly = 457

    elseif choosenCelly == 8 then
        Celly = 519

    elseif choosenCelly == 9 then
        Celly = 581
    end
end

----------------------------------------------------------------------------------------------------------------------- Gives the choosen cell

function choosen_cell(choosenCellx,choosenCelly)

    if choosenCelly == 1 then                                     ---- A1-A9
        choosen_cell2(choosenCellx)

    elseif choosenCelly == 2 then                                 ---- B1-B9
        choosen_cell2(choosenCellx)
        ch_cell = ch_cell + 10

    elseif choosenCelly == 3 then                                 ---- C1-C9
        choosen_cell2(choosenCellx)
        ch_cell = ch_cell + 20

    elseif choosenCelly == 4 then                                 ---- D1-D9
        choosen_cell2(choosenCellx)
        ch_cell = ch_cell + 30

    elseif choosenCelly == 5 then                                 ---- E1-E9
        choosen_cell2(choosenCellx)
        ch_cell = ch_cell + 40

    elseif choosenCelly == 6 then                                 ---- F1-F9
        choosen_cell2(choosenCellx)
        ch_cell = ch_cell + 50

    elseif choosenCelly == 7 then                                 ---- G1-G9
        choosen_cell2(choosenCellx)
        ch_cell = ch_cell + 60

    elseif choosenCelly == 8 then                                 ---- H1-H9
        choosen_cell2(choosenCellx)
        ch_cell = ch_cell + 70

    elseif choosenCelly == 9 then                                 ---- I1-I9
        choosen_cell2(choosenCellx)
        ch_cell = ch_cell + 80

    end
end

-------------------------------------------------------------------------------------

function choosen_cell2(choosenCellx)

    if choosenCellx == 1 then
        ch_cell = 1

    elseif choosenCellx == 2 then
        ch_cell = 2

    elseif choosenCellx == 3 then
        ch_cell = 3

    elseif choosenCellx == 4 then
        ch_cell = 4

    elseif choosenCellx == 5 then
        ch_cell = 5

    elseif choosenCellx == 6 then
        ch_cell = 6

    elseif choosenCellx == 7 then
        ch_cell = 7

    elseif choosenCellx == 8 then
        ch_cell = 8

    elseif choosenCellx == 9 then
        ch_cell = 9
    end
end

----------------------------------------------------------------------------------------------------------------------- Checks the starting numbers

function make_level()

------------------------------------ A

    check_switch(A1)
    check_switch(A2)
    check_switch(A3)
    check_switch(A4)
    check_switch(A5)
    check_switch(A6)
    check_switch(A7)
    check_switch(A8)
    check_switch(A9)

------------------------------------ B

    check_switch(B1)
    check_switch(B2)
    check_switch(B3)
    check_switch(B4)
    check_switch(B5)
    check_switch(B6)
    check_switch(B7)
    check_switch(B8)
    check_switch(B9)

------------------------------------ C

    check_switch(C1)
    check_switch(C2)
    check_switch(C3)
    check_switch(C4)
    check_switch(C5)
    check_switch(C6)
    check_switch(C7)
    check_switch(C8)
    check_switch(C9)

------------------------------------ D

    check_switch(D1)
    check_switch(D2)
    check_switch(D3)
    check_switch(D4)
    check_switch(D5)
    check_switch(D6)
    check_switch(D7)
    check_switch(D8)
    check_switch(D9)

------------------------------------ E

    check_switch(E1)
    check_switch(E2)
    check_switch(E3)
    check_switch(E4)
    check_switch(E5)
    check_switch(E6)
    check_switch(E7)
    check_switch(E8)
    check_switch(E9)

------------------------------------ F

    check_switch(F1)
    check_switch(F2)
    check_switch(F3)
    check_switch(F4)
    check_switch(F5)
    check_switch(F6)
    check_switch(F7)
    check_switch(F8)
    check_switch(F9)

------------------------------------ G

    check_switch(G1)
    check_switch(G2)
    check_switch(G3)
    check_switch(G4)
    check_switch(G5)
    check_switch(G6)
    check_switch(G7)
    check_switch(G8)
    check_switch(G9)

------------------------------------ H

    check_switch(H1)
    check_switch(H2)
    check_switch(H3)
    check_switch(H4)
    check_switch(H5)
    check_switch(H6)
    check_switch(H7)
    check_switch(H8)
    check_switch(H9)

------------------------------------ I

    check_switch(I1)
    check_switch(I2)
    check_switch(I3)
    check_switch(I4)
    check_switch(I5)
    check_switch(I6)
    check_switch(I7)
    check_switch(I8)
    check_switch(I9)

end

------------------------------------------------------------------------------------- Renders the number if starting switch is on

function check_switch(cell)

    if cell.switch == 1 then
        cell:render()
    end
end

----------------------------------------------------------------------------------------------------------------------- Tries to create a temporary number when key is pressed

function pressing_number(number)

------------------------------------ A

    if ch_cell == 1 then

        temporary_number(A1, number)

    elseif ch_cell == 2 then

        temporary_number(A2, number)

    elseif ch_cell == 3 then

        temporary_number(A3, number)

    elseif ch_cell == 4 then

        temporary_number(A4, number)

    elseif ch_cell == 5 then

        temporary_number(A5, number)

    elseif ch_cell == 6 then

        temporary_number(A6, number)

    elseif ch_cell == 7 then

        temporary_number(A7, number)

    elseif ch_cell == 8 then

        temporary_number(A8, number)

    elseif ch_cell == 9 then

        temporary_number(A9, number)

------------------------------------ B

    elseif ch_cell == 11 then

        temporary_number(B1, number)

    elseif ch_cell == 12 then

        temporary_number(B2, number)

    elseif ch_cell == 13 then

        temporary_number(B3, number)

    elseif ch_cell == 14 then

        temporary_number(B4, number)

    elseif ch_cell == 15 then

        temporary_number(B5, number)

    elseif ch_cell == 16 then

        temporary_number(B6, number)

    elseif ch_cell == 17 then

        temporary_number(B7, number)

    elseif ch_cell == 18 then

        temporary_number(B8, number)

    elseif ch_cell == 19 then

        temporary_number(B9, number)

------------------------------------ C

    elseif ch_cell == 21 then

        temporary_number(C1, number)

    elseif ch_cell == 22 then

        temporary_number(C2, number)

    elseif ch_cell == 23 then

        temporary_number(C3, number)

    elseif ch_cell == 24 then

        temporary_number(C4, number)

    elseif ch_cell == 25 then

        temporary_number(C5, number)

    elseif ch_cell == 26 then

        temporary_number(C6, number)

    elseif ch_cell == 27 then

        temporary_number(C7, number)

    elseif ch_cell == 28 then

        temporary_number(C8, number)

    elseif ch_cell == 29 then

        temporary_number(C9, number)

------------------------------------ D

    elseif ch_cell == 31 then

        temporary_number(D1, number)

    elseif ch_cell == 32 then

        temporary_number(D2, number)

    elseif ch_cell == 33 then

        temporary_number(D3, number)

    elseif ch_cell == 34 then

        temporary_number(D4, number)

    elseif ch_cell == 35 then

        temporary_number(D5, number)

    elseif ch_cell == 36 then

        temporary_number(D6, number)

    elseif ch_cell == 37 then

        temporary_number(D7, number)

    elseif ch_cell == 38 then

        temporary_number(D8, number)

    elseif ch_cell == 39 then

        temporary_number(D9, number)

------------------------------------ E

    elseif ch_cell == 41 then

        temporary_number(E1, number)

    elseif ch_cell == 42 then

        temporary_number(E2, number)

    elseif ch_cell == 43 then

        temporary_number(E3, number)

    elseif ch_cell == 44 then

        temporary_number(E4, number)

    elseif ch_cell == 45 then

        temporary_number(E5, number)

    elseif ch_cell == 46 then

        temporary_number(E6, number)

    elseif ch_cell == 47 then

        temporary_number(E7, number)

    elseif ch_cell == 48 then

        temporary_number(E8, number)

    elseif ch_cell == 49 then

        temporary_number(E9, number)

------------------------------------ F

    elseif ch_cell == 51 then

        temporary_number(F1, number)

    elseif ch_cell == 52 then

        temporary_number(F2, number)

    elseif ch_cell == 53 then

        temporary_number(F3, number)

    elseif ch_cell == 54 then

        temporary_number(F4, number)

    elseif ch_cell == 55 then

        temporary_number(F5, number)

    elseif ch_cell == 56 then

        temporary_number(F6, number)

    elseif ch_cell == 57 then

        temporary_number(F7, number)

    elseif ch_cell == 58 then

        temporary_number(F8, number)

    elseif ch_cell == 59 then

        temporary_number(F9, number)

------------------------------------ G

    elseif ch_cell == 61 then

        temporary_number(G1, number)

    elseif ch_cell == 62 then

        temporary_number(G2, number)

    elseif ch_cell == 63 then

        temporary_number(G3, number)

    elseif ch_cell == 64 then

        temporary_number(G4, number)

    elseif ch_cell == 65 then

        temporary_number(G5, number)

    elseif ch_cell == 66 then

        temporary_number(G6, number)

    elseif ch_cell == 67 then

        temporary_number(G7, number)

    elseif ch_cell == 68 then

        temporary_number(G8, number)

    elseif ch_cell == 69 then

        temporary_number(G9, number)

------------------------------------ H

    elseif ch_cell == 71 then

        temporary_number(H1, number)

    elseif ch_cell == 72 then

        temporary_number(H2, number)

    elseif ch_cell == 73 then

        temporary_number(H3, number)

    elseif ch_cell == 74 then

        temporary_number(H4, number)

    elseif ch_cell == 75 then

        temporary_number(H5, number)

    elseif ch_cell == 76 then

        temporary_number(H6, number)

    elseif ch_cell == 77 then

        temporary_number(H7, number)

    elseif ch_cell == 78 then

        temporary_number(H8, number)

    elseif ch_cell == 79 then

        temporary_number(H9, number)

------------------------------------ I

    elseif ch_cell == 81 then

        temporary_number(I1, number)

    elseif ch_cell == 82 then

        temporary_number(I2, number)

    elseif ch_cell == 83 then

        temporary_number(I3, number)

    elseif ch_cell == 84 then

        temporary_number(I4, number)

    elseif ch_cell == 85 then

        temporary_number(I5, number)

    elseif ch_cell == 86 then

        temporary_number(I6, number)

    elseif ch_cell == 87 then

        temporary_number(I7, number)

    elseif ch_cell == 88 then

        temporary_number(I8, number)

    elseif ch_cell == 89 then

        temporary_number(I9, number)

    end
end

------------------------------------------------------------------------------------- Creates a temporary number if choosen cell doesn't have a correct number already

function temporary_number(cell, number)

    if number == 0 then
        cell:reset()

    else
        if cell.switch == 2 then

            cell.tempswitch = 1
            cell.tempnumber = number
        end
    end
end

----------------------------------------------------------------------------------------------------------------------- Rendering temporary numbers

function temp_numbers()

------------------------------------ A

    check_temp_switch(A1)

    check_temp_switch(A2)

    check_temp_switch(A3)

    check_temp_switch(A4)
    
    check_temp_switch(A5)
    
    check_temp_switch(A6)

    check_temp_switch(A7)
    
    check_temp_switch(A8)
    
    check_temp_switch(A9)

------------------------------------ B

    check_temp_switch(B1)

    check_temp_switch(B2)

    check_temp_switch(B3)

    check_temp_switch(B4)

    check_temp_switch(B5)

    check_temp_switch(B6)

    check_temp_switch(B7)

    check_temp_switch(B8)

    check_temp_switch(B9)

------------------------------------ C

    check_temp_switch(C1)

    check_temp_switch(C2)

    check_temp_switch(C3)

    check_temp_switch(C4)

    check_temp_switch(C5)

    check_temp_switch(C6)

    check_temp_switch(C7)

    check_temp_switch(C8)

    check_temp_switch(C9)

------------------------------------ D

    check_temp_switch(D1)

    check_temp_switch(D2)

    check_temp_switch(D3)

    check_temp_switch(D4)

    check_temp_switch(D5)

    check_temp_switch(D6)

    check_temp_switch(D7)

    check_temp_switch(D8)

    check_temp_switch(D9)

------------------------------------ E

    check_temp_switch(E1)

    check_temp_switch(E2)

    check_temp_switch(E3)

    check_temp_switch(E4)

    check_temp_switch(E5)

    check_temp_switch(E6)

    check_temp_switch(E7)

    check_temp_switch(E8)

    check_temp_switch(E9)

------------------------------------ F

    check_temp_switch(F1)

    check_temp_switch(F2)

    check_temp_switch(F3)

    check_temp_switch(F4)

    check_temp_switch(F5)

    check_temp_switch(F6)

    check_temp_switch(F7)

    check_temp_switch(F8)

    check_temp_switch(F9)

------------------------------------ G

    check_temp_switch(G1)

    check_temp_switch(G2)

    check_temp_switch(G3)

    check_temp_switch(G4)

    check_temp_switch(G5)

    check_temp_switch(G6)

    check_temp_switch(G7)

    check_temp_switch(G8)

    check_temp_switch(G9)

------------------------------------ H

    check_temp_switch(H1)

    check_temp_switch(H2)

    check_temp_switch(H3)

    check_temp_switch(H4)

    check_temp_switch(H5)

    check_temp_switch(H6)

    check_temp_switch(H7)

    check_temp_switch(H8)

    check_temp_switch(H9)

------------------------------------ I

    check_temp_switch(I1)

    check_temp_switch(I2)

    check_temp_switch(I3)

    check_temp_switch(I4)

    check_temp_switch(I5)

    check_temp_switch(I6)

    check_temp_switch(I7)

    check_temp_switch(I8)

    check_temp_switch(I9)

end

------------------------------------------------------------------------------------- Checks if a cell has a temporary number

function check_temp_switch(cell)

    if cell.tempswitch == 1 then
        cell:temp_render(cell.tempnumber)
    end
end


-----------------------------------------------------------------------------------------------------------------------

function pressing_enter()

------------------------------------ A

    check_correct_tempnumber(A1)

    check_correct_tempnumber(A2)

    check_correct_tempnumber(A3)

    check_correct_tempnumber(A4)

    check_correct_tempnumber(A5)

    check_correct_tempnumber(A6)

    check_correct_tempnumber(A7)

    check_correct_tempnumber(A8)

    check_correct_tempnumber(A9)

------------------------------------ B

    check_correct_tempnumber(B1)

    check_correct_tempnumber(B2)

    check_correct_tempnumber(B3)

    check_correct_tempnumber(B4)

    check_correct_tempnumber(B5)

    check_correct_tempnumber(B6)

    check_correct_tempnumber(B7)

    check_correct_tempnumber(B8)

    check_correct_tempnumber(B9)

------------------------------------ C

    check_correct_tempnumber(C1)

    check_correct_tempnumber(C2)

    check_correct_tempnumber(C3)

    check_correct_tempnumber(C4)

    check_correct_tempnumber(C5)

    check_correct_tempnumber(C6)

    check_correct_tempnumber(C7)

    check_correct_tempnumber(C8)

    check_correct_tempnumber(C9)

------------------------------------ D

    check_correct_tempnumber(D1)

    check_correct_tempnumber(D2)

    check_correct_tempnumber(D3)

    check_correct_tempnumber(D4)

    check_correct_tempnumber(D5)

    check_correct_tempnumber(D6)

    check_correct_tempnumber(D7)

    check_correct_tempnumber(D8)

    check_correct_tempnumber(D9)

------------------------------------ E

    check_correct_tempnumber(E1)

    check_correct_tempnumber(E2)

    check_correct_tempnumber(E3)

    check_correct_tempnumber(E4)

    check_correct_tempnumber(E5)

    check_correct_tempnumber(E6)

    check_correct_tempnumber(E7)

    check_correct_tempnumber(E8)

    check_correct_tempnumber(E9)

------------------------------------ F

    check_correct_tempnumber(F1)

    check_correct_tempnumber(F2)

    check_correct_tempnumber(F3)

    check_correct_tempnumber(F4)

    check_correct_tempnumber(F5)

    check_correct_tempnumber(F6)

    check_correct_tempnumber(F7)

    check_correct_tempnumber(F8)

    check_correct_tempnumber(F9)

------------------------------------ G

    check_correct_tempnumber(G1)

    check_correct_tempnumber(G2)

    check_correct_tempnumber(G3)

    check_correct_tempnumber(G4)

    check_correct_tempnumber(G5)

    check_correct_tempnumber(G6)

    check_correct_tempnumber(G7)

    check_correct_tempnumber(G8)

    check_correct_tempnumber(G9)

------------------------------------ H

    check_correct_tempnumber(H1)

    check_correct_tempnumber(H2)

    check_correct_tempnumber(H3)

    check_correct_tempnumber(H4)

    check_correct_tempnumber(H5)

    check_correct_tempnumber(H6)

    check_correct_tempnumber(H7)

    check_correct_tempnumber(H8)

    check_correct_tempnumber(H9)

------------------------------------ I

    check_correct_tempnumber(I1)

    check_correct_tempnumber(I2)

    check_correct_tempnumber(I3)

    check_correct_tempnumber(I4)

    check_correct_tempnumber(I5)

    check_correct_tempnumber(I6)

    check_correct_tempnumber(I7)

    check_correct_tempnumber(I8)

    check_correct_tempnumber(I9)

end

-------------------------------------------------------------------------------------

function check_correct_tempnumber(cell)

    if cell.switch == 2 then
        if cell.tempnumber == cell.number then
            
            cell.switch = 1
            cell.tempswitch = 2

        end
    end
end

-----------------------------------------------------------------------------------------------------------------------

function level_complete()
    
------------------------------------ A

    count(A1)
    count(A2)
    count(A3)
    count(A4)
    count(A5)
    count(A6)
    count(A7)
    count(A8)
    count(A9)

------------------------------------ B

    count(B1)
    count(B2)
    count(B3)
    count(B4)
    count(B5)
    count(B6)
    count(B7)
    count(B8)
    count(B9)

------------------------------------ C

    count(C1)
    count(C2)
    count(C3)
    count(C4)
    count(C5)
    count(C6)
    count(C7)
    count(C8)
    count(C9)

------------------------------------ D

    count(D1)
    count(D2)
    count(D3)
    count(D4)
    count(D5)
    count(D6)
    count(D7)
    count(D8)
    count(D9)

------------------------------------ E

    count(E1)
    count(E2)
    count(E3)
    count(E4)
    count(E5)
    count(E6)
    count(E7)
    count(E8)
    count(E9)

------------------------------------ F

    count(F1)
    count(F2)
    count(F3)
    count(F4)
    count(F5)
    count(F6)
    count(F7)
    count(F8)
    count(F9)

------------------------------------ G

    count(G1)
    count(G2)
    count(G3)
    count(G4)
    count(G5)
    count(G6)
    count(G7)
    count(G8)
    count(G9)

------------------------------------ H

    count(H1)
    count(H2)
    count(H3)
    count(H4)
    count(H5)
    count(H6)
    count(H7)
    count(H8)
    count(H9)

------------------------------------ I

    count(I1)
    count(I2)
    count(I3)
    count(I4)
    count(I5)
    count(I6)
    count(I7)
    count(I8)
    count(I9)

------------------------------------

end

-------------------------------------------------------------------------------------

function count(cell)
    if cell.switch == 1 then
        corrects = corrects + 1
    end
end

-----------------------------------------------------------------------------------------------------------------------
