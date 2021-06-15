

require 'easy'

-----------------------------------------------------------------------------------------------------------------------

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

----------------------------------------------------------------------------------------------------------------------- Rectangle

function rectangle(x, y, w, h)

    love.graphics.rectangle('fill', x, y, w, h)
end

----------------------------------------------------------------------------------------------------------------------- Takes Cellx and Celly

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

-----------------------------------------------------------------------------------------------------------------------

function make_level()

    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.setFont(numberfont)
    
------------------------------------------------------------------------------------- A

    y = 80

    if A1 == 1 then
        print_number(A1n, -251, y)
    end

    if A2 == 1 then
        print_number(A2n, -189, y)
    end

    if A3 == 1 then
        print_number(A3n, -127, y)
    end

    if A4 == 1 then
        print_number(A4n, -62, y)
    end

    if A5 == 1 then
        print_number(A5n, 0, y)
    end

    if A6 == 1 then
        print_number(A6n, 60, y)
    end

    if A7 == 1 then
        print_number(A7n, 125, y)
    end

    if A8 == 1 then
        print_number(A8n, 187, y)
    end

    if A9 == 1 then
        print_number(A9n, 249, y)
    end

------------------------------------------------------------------------------------- B

    y = 142

    if B1 == 1 then
        print_number(B1n, -251, y)
    end

    if B2 == 1 then
        print_number(B2n, -189, y)
    end

    if B3 == 1 then
        print_number(B3n, -127, y)
    end

    if B4 == 1 then
        print_number(B4n, -62, y)
    end

    if B5 == 1 then
        print_number(B5n, 0, y)
    end

    if B6 == 1 then
        print_number(B6n, 60, y)
    end

    if B7 == 1 then
        print_number(B7n, 125, y)
    end

    if B8 == 1 then
        print_number(B8n, 187, y)
    end

    if B9 == 1 then
        print_number(B9n, 249, y)
    end

------------------------------------------------------------------------------------- C

    y = 204

    if C1 == 1 then
        print_number(C1n, -251, y)
    end

    if C2 == 1 then
        print_number(C2n, -189, y)
    end

    if C3 == 1 then
        print_number(C3n, -127, y)
    end

    if C4 == 1 then
        print_number(C4n, -62, y)
    end

    if C5 == 1 then
        print_number(C5n, 0, y)
    end

    if C6 == 1 then
        print_number(C6n, 60, y)
    end

    if C7 == 1 then
        print_number(C7n, 125, y)
    end

    if C8 == 1 then
        print_number(C8n, 187, y)
    end

    if C9 == 1 then
        print_number(C9n, 249, y)
    end

------------------------------------------------------------------------------------- D

    y = 269

    if D1 == 1 then
        print_number(D1n, -251, y)
    end

    if D2 == 1 then
        print_number(D2n, -189, y)
    end

    if D3 == 1 then
        print_number(D3n, -127, y)
    end

    if D4 == 1 then
        print_number(D4n, -62, y)
    end

    if D5 == 1 then
        print_number(D5n, 0, y)
    end

    if D6 == 1 then
        print_number(D6n, 60, y)
    end

    if D7 == 1 then
        print_number(D7n, 125, y)
    end

    if D8 == 1 then
        print_number(D8n, 187, y)
    end

    if D9 == 1 then
        print_number(D9n, 249, y)
    end

------------------------------------------------------------------------------------- E

    y = 331

    if E1 == 1 then
        print_number(E1n, -251, y)
    end

    if E2 == 1 then
        print_number(E2n, -189, y)
    end

    if E3 == 1 then
        print_number(E3n, -127, y)
    end

    if E4 == 1 then
        print_number(E4n, -62, y)
    end

    if E5 == 1 then
        print_number(E5n, 0, y)
    end

    if E6 == 1 then
        print_number(E6n, 60, y)
    end

    if E7 == 1 then
        print_number(E7n, 125, y)
    end

    if E8 == 1 then
        print_number(E8n, 187, y)
    end

    if E9 == 1 then
        print_number(E9n, 249, y)
    end

------------------------------------------------------------------------------------- F

    y = 393

    if F1 == 1 then
        print_number(F1n, -251, y)
    end

    if F2 == 1 then
        print_number(F2n, -189, y)
    end

    if F3 == 1 then
        print_number(F3n, -127, y)
    end

    if F4 == 1 then
        print_number(F4n, -62, y)
    end

    if F5 == 1 then
        print_number(F5n, 0, y)
    end

    if F6 == 1 then
        print_number(F6n, 60, y)
    end

    if F7 == 1 then
        print_number(F7n, 125, y)
    end

    if F8 == 1 then
        print_number(F8n, 187, y)
    end

    if F9 == 1 then
        print_number(F9n, 249, y)
    end

------------------------------------------------------------------------------------- G

    y = 458

    if G1 == 1 then
        print_number(G1n, -251, y)
    end

    if G2 == 1 then
        print_number(G2n, -189, y)
    end

    if G3 == 1 then
        print_number(G3n, -127, y)
    end

    if G4 == 1 then
        print_number(G4n, -62, y)
    end

    if G5 == 1 then
        print_number(G5n, 0, y)
    end

    if G6 == 1 then
        print_number(G6n, 60, y)
    end

    if G7 == 1 then
        print_number(G7n, 125, y)
    end

    if G8 == 1 then
        print_number(G8n, 187, y)
    end

    if G9 == 1 then
        print_number(G9n, 249, y)
    end

------------------------------------------------------------------------------------- H

    y = 520

    if H1 == 1 then
        print_number(H1n, -251, y)
    end

    if H2 == 1 then
        print_number(H2n, -189, y)
    end

    if H3 == 1 then
        print_number(H3n, -127, y)
    end

    if H4 == 1 then
        print_number(H4n, -62, y)
    end

    if H5 == 1 then
        print_number(H5n, 0, y)
    end

    if H6 == 1 then
        print_number(H6n, 60, y)
    end

    if H7 == 1 then
        print_number(H7n, 125, y)
    end

    if H8 == 1 then
        print_number(H8n, 187, y)
    end

    if H9 == 1 then
        print_number(H9n, 249, y)
    end

------------------------------------------------------------------------------------- I

    y = 582

    if I1 == 1 then
        print_number(I1n, -251, y)
    end

    if I2 == 1 then
        print_number(I2n, -189, y)
    end

    if I3 == 1 then
        print_number(I3n, -127, y)
    end

    if I4 == 1 then
        print_number(I4n, -62, y)
    end

    if I5 == 1 then
        print_number(I5n, 0, y)
    end

    if I6 == 1 then
        print_number(I6n, 60, y)
    end

    if I7 == 1 then
        print_number(I7n, 125, y)
    end

    if I8 == 1 then
        print_number(I8n, 187, y)
    end

    if I9 == 1 then
        print_number(I9n, 249, y)
    end

end

-----------------------------------------------------------------------------------------------------------------------

function print_number(number, x, y)

    love.graphics.printf(tostring(number), x, y, VIRTUAL_WIDTH, 'center')
end

----------------------------------------------------------------------------------------------------------------------- Checks if current cell has no verified number

function pressing_number(number)

------------------------------------------------------------------------------------- A

    if ch_cell == 1 then

        if A1 == 2 then

            A1t = 1
            A1tn = number
        end

    elseif ch_cell == 2 then

        if A2 == 2 then

            A2t = 1
            A2tn = number
        end

    elseif ch_cell == 3 then

        if A3 == 2 then

            A3t = 1
            A3tn = number
        end

    elseif ch_cell == 4 then

        if A4 == 2 then

            A4t = 1
            A4tn = number
        end

    elseif ch_cell == 5 then

        if A5 == 2 then

            A5t = 1
            A5tn = number
        end

    elseif ch_cell == 6 then

        if A6 == 2 then

            A6t = 1
            A6tn = number
        end

    elseif ch_cell == 7 then

        if A7 == 2 then

            A7t = 1
            A7tn = number
        end

    elseif ch_cell == 8 then

        if A8 == 2 then

            A8t = 1
            A8tn = number
        end

    elseif ch_cell == 9 then

        if A9 == 2 then

            A9t = 1
            A9tn = number
        end

------------------------------------------------------------------------------------- B

    elseif ch_cell == 11 then

        if B1 == 2 then

            B1t = 1
            B1tn = number
        end

    elseif ch_cell == 12 then

        if B2 == 2 then

            B2t = 1
            B2tn = number
        end

    elseif ch_cell == 13 then

        if B3 == 2 then

            B3t = 1
            B3tn = number
        end

    elseif ch_cell == 14 then

        if B4 == 2 then

            B4t = 1
            B4tn = number
        end

    elseif ch_cell == 15 then

        if B5 == 2 then

            B5t = 1
            B5tn = number
        end

    elseif ch_cell == 16 then

        if B6 == 2 then

            B6t = 1
            B6tn = number
        end

    elseif ch_cell == 17 then

        if B7 == 2 then

            B7t = 1
            B7tn = number
        end

    elseif ch_cell == 18 then

        if B8 == 2 then

            B8t = 1
            B8tn = number
        end

    elseif ch_cell == 19 then

        if B9 == 2 then

            B9t = 1
            B9tn = number
        end

------------------------------------------------------------------------------------- C

    elseif ch_cell == 21 then

        if C1 == 2 then

            C1t = 1
            C1tn = number
        end

    elseif ch_cell == 22 then

        if C2 == 2 then

            C2t = 1
            C2tn = number
        end

    elseif ch_cell == 23 then

        if C3 == 2 then

            C3t = 1
            C3tn = number
        end

    elseif ch_cell == 24 then

        if C4 == 2 then

            C4t = 1
            C4tn = number
        end

    elseif ch_cell == 25 then

        if C5 == 2 then

            C5t = 1
            C5tn = number
        end

    elseif ch_cell == 26 then

        if C6 == 2 then

            C6t = 1
            C6tn = number
        end

    elseif ch_cell == 27 then

        if C7 == 2 then

            C7t = 1
            C7tn = number
        end

    elseif ch_cell == 28 then

        if C8 == 2 then

            C8t = 1
            C8tn = number
        end

    elseif ch_cell == 29 then

        if C9 == 2 then

            C9t = 1
            C9tn = number
        end

------------------------------------------------------------------------------------- D

    elseif ch_cell == 31 then

        if D1 == 2 then

            D1t = 1
            D1tn = number
        end

    elseif ch_cell == 32 then

        if D2 == 2 then

            D2t = 1
            D2tn = number
        end

    elseif ch_cell == 33 then

        if D3 == 2 then

            D3t = 1
            D3tn = number
        end

    elseif ch_cell == 34 then

        if D4 == 2 then

            D4t = 1
            D4tn = number
        end

    elseif ch_cell == 35 then

        if D5 == 2 then

            D5t = 1
            D5tn = number
        end

    elseif ch_cell == 36 then

        if D6 == 2 then

            D6t = 1
            D6tn = number
        end

    elseif ch_cell == 37 then

        if D7 == 2 then

            D7t = 1
            D7tn = number
        end

    elseif ch_cell == 38 then

        if D8 == 2 then

            D8t = 1
            D8tn = number
        end

    elseif ch_cell == 39 then

        if D9 == 2 then

            D9t = 1
            D9tn = number
        end

------------------------------------------------------------------------------------- E

    elseif ch_cell == 41 then

        if E1 == 2 then

            E1t = 1
            E1tn = number
        end

    elseif ch_cell == 42 then

        if E2 == 2 then

            E2t = 1
            E2tn = number
        end

    elseif ch_cell == 43 then

        if E3 == 2 then

            E3t = 1
            E3tn = number
        end

    elseif ch_cell == 44 then

        if E4 == 2 then

            E4t = 1
            E4tn = number
        end

    elseif ch_cell == 45 then

        if E5 == 2 then

            E5t = 1
            E5tn = number
        end

    elseif ch_cell == 46 then

        if E6 == 2 then

            E6t = 1
            E6tn = number
        end

    elseif ch_cell == 47 then

        if E7 == 2 then

            E7t = 1
            E7tn = number
        end

    elseif ch_cell == 48 then

        if E8 == 2 then

            E8t = 1
            E8tn = number
        end

    elseif ch_cell == 49 then

        if E9 == 2 then

            E9t = 1
            E9tn = number
        end

------------------------------------------------------------------------------------- F

    elseif ch_cell == 51 then

        if F1 == 2 then

            F1t = 1
            F1tn = number
        end

    elseif ch_cell == 52 then

        if F2 == 2 then

            F2t = 1
            F2tn = number
        end

    elseif ch_cell == 53 then

        if F3 == 2 then

            F3t = 1
            F3tn = number
        end

    elseif ch_cell == 54 then

        if F4 == 2 then

            F4t = 1
            F4tn = number
        end

    elseif ch_cell == 55 then

        if F5 == 2 then

            F5t = 1
            F5tn = number
        end

    elseif ch_cell == 56 then

        if F6 == 2 then

            F6t = 1
            F6tn = number
        end

    elseif ch_cell == 57 then

        if F7 == 2 then

            F7t = 1
            F7tn = number
        end

    elseif ch_cell == 58 then

        if F8 == 2 then

            F8t = 1
            F8tn = number
        end

    elseif ch_cell == 59 then

        if F9 == 2 then

            F9t = 1
            F9tn = number
        end

------------------------------------------------------------------------------------- G

    elseif ch_cell == 61 then

        if G1 == 2 then

            G1t = 1
            G1tn = number
        end

    elseif ch_cell == 62 then

        if G2 == 2 then

            G2t = 1
            G2tn = number
        end

    elseif ch_cell == 63 then

        if G3 == 2 then

            G3t = 1
            G3tn = number
        end

    elseif ch_cell == 64 then

        if G4 == 2 then

            G4t = 1
            G4tn = number
        end

    elseif ch_cell == 65 then

        if G5 == 2 then

            G5t = 1
            G5tn = number
        end

    elseif ch_cell == 66 then

        if G6 == 2 then

            G6t = 1
            G6tn = number
        end

    elseif ch_cell == 67 then

        if G7 == 2 then

            G7t = 1
            G7tn = number
        end

    elseif ch_cell == 68 then

        if G8 == 2 then

            G8t = 1
            G8tn = number
        end

    elseif ch_cell == 69 then

        if G9 == 2 then

            G9t = 1
            G9tn = number
        end

------------------------------------------------------------------------------------- H

    elseif ch_cell == 71 then

        if H1 == 2 then

            H1t = 1
            H1tn = number
        end

    elseif ch_cell == 72 then

        if H2 == 2 then

            H2t = 1
            H2tn = number
        end

    elseif ch_cell == 73 then

        if H3 == 2 then

            H3t = 1
            H3tn = number
        end

    elseif ch_cell == 74 then

        if H4 == 2 then

            H4t = 1
            H4tn = number
        end

    elseif ch_cell == 75 then

        if H5 == 2 then

            H5t = 1
            H5tn = number
        end

    elseif ch_cell == 76 then

        if H6 == 2 then

            H6t = 1
            H6tn = number
        end

    elseif ch_cell == 77 then

        if H7 == 2 then

            H7t = 1
            H7tn = number
        end

    elseif ch_cell == 78 then

        if H8 == 2 then

            H8t = 1
            H8tn = number
        end

    elseif ch_cell == 79 then

        if H9 == 2 then

            H9t = 1
            H9tn = number
        end

------------------------------------------------------------------------------------- I

    elseif ch_cell == 81 then

        if I1 == 2 then

            I1t = 1
            I1tn = number
        end

    elseif ch_cell == 82 then

        if I2 == 2 then

            I2t = 1
            I2tn = number
        end

    elseif ch_cell == 83 then

        if I3 == 2 then

            I3t = 1
            I3tn = number
        end

    elseif ch_cell == 84 then

        if I4 == 2 then

            I4t = 1
            I4tn = number
        end

    elseif ch_cell == 85 then

        if I5 == 2 then

            I5t = 1
            I5tn = number
        end

    elseif ch_cell == 86 then

        if I6 == 2 then

            I6t = 1
            I6tn = number
        end

    elseif ch_cell == 87 then

        if I7 == 2 then

            I7t = 1
            I7tn = number
        end

    elseif ch_cell == 88 then

        if I8 == 2 then

            I8t = 1
            I8tn = number
        end

    elseif ch_cell == 89 then

        if I9 == 2 then

            I9t = 1
            I9tn = number
        end

    end
end

-----------------------------------------------------------------------------------------------------------------------

function print_temp_number(number, x, y)

    love.graphics.setColor(1, 1, 1, 0.7)
    love.graphics.setFont(numberfont)

    print_number(number, x, y)
end

-----------------------------------------------------------------------------------------------------------------------

function temp_numbers()

------------------------------------------------------------------------------------- A

    y = 80

    if A1t == 1 then
        print_temp_number(A1tn, -251, y)
    end

    if A2t == 1 then
        print_temp_number(A2tn, -189, y)
    end

    if A3t == 1 then
        print_temp_number(A3tn, -127, y)
    end

    if A4t == 1 then
        print_temp_number(A4tn, -62, y)
    end
    
    if A5t == 1 then
        print_temp_number(A5tn, 0, y)
    end
    
    if A6t == 1 then
        print_temp_number(A6tn, 60, y)
    end

    if A7t == 1 then
        print_temp_number(A7tn, 125, y)
    end
    
    if A8t == 1 then
        print_temp_number(A8tn, 187, y)
    end
    
    if A9t == 1 then
        print_temp_number(A9tn, 249, y)
    end

------------------------------------------------------------------------------------- B

    y = 142

    if B1t == 1 then
        print_temp_number(B1tn, -251, y)
    end

    if B2t == 1 then
        print_temp_number(B2tn, -189, y)
    end

    if B3t == 1 then
        print_temp_number(B3tn, -127, y)
    end

    if B4t == 1 then
        print_temp_number(B4tn, -62, y)
    end
    
    if B5t == 1 then
        print_temp_number(B5tn, 0, y)
    end
    
    if B6t == 1 then
        print_temp_number(B6tn, 60, y)
    end

    if B7t == 1 then
        print_temp_number(B7tn, 125, y)
    end
    
    if B8t == 1 then
        print_temp_number(B8tn, 187, y)
    end
    
    if B9t == 1 then
        print_temp_number(B9tn, 249, y)
    end

------------------------------------------------------------------------------------- C

    y = 204

    if C1t == 1 then
        print_temp_number(C1tn, -251, y)
    end

    if C2t == 1 then
        print_temp_number(C2tn, -189, y)
    end

    if C3t == 1 then
        print_temp_number(C3tn, -127, y)
    end

    if C4t == 1 then
        print_temp_number(C4tn, -62, y)
    end

    if C5t == 1 then
        print_temp_number(C5tn, 0, y)
    end

    if C6t == 1 then
        print_temp_number(C6tn, 60, y)
    end

    if C7t == 1 then
        print_temp_number(C7tn, 125, y)
    end

    if C8t == 1 then
        print_temp_number(C8tn, 187, y)
    end

    if C9t == 1 then
        print_temp_number(C9tn, 249, y)
    end

------------------------------------------------------------------------------------- D

    y = 269

    if D1t == 1 then
        print_temp_number(D1tn, -251, y)
    end

    if D2t == 1 then
        print_temp_number(D2tn, -189, y)
    end

    if D3t == 1 then
        print_temp_number(D3tn, -127, y)
    end

    if D4t == 1 then
        print_temp_number(D4tn, -62, y)
    end

    if D5t == 1 then
        print_temp_number(D5tn, 0, y)
    end

    if D6t == 1 then
        print_temp_number(D6tn, 60, y)
    end

    if D7t == 1 then
        print_temp_number(D7tn, 125, y)
    end

    if D8t == 1 then
        print_temp_number(D8tn, 187, y)
    end

    if D9t == 1 then
        print_temp_number(D9tn, 249, y)
    end

------------------------------------------------------------------------------------- E

    y = 331

    if E1t == 1 then
        print_temp_number(E1tn, -251, y)
    end

    if E2t == 1 then
        print_temp_number(E2tn, -189, y)
    end

    if E3t == 1 then
        print_temp_number(E3tn, -127, y)
    end

    if E4t == 1 then
        print_temp_number(E4tn, -62, y)
    end

    if E5t == 1 then
        print_temp_number(E5tn, 0, y)
    end

    if E6t == 1 then
        print_temp_number(E6tn, 60, y)
    end

    if E7t == 1 then
        print_temp_number(E7tn, 125, y)
    end

    if E8t == 1 then
        print_temp_number(E8tn, 187, y)
    end

    if E9t == 1 then
        print_temp_number(E9tn, 249, y)
    end

------------------------------------------------------------------------------------- F

    y = 393

    if F1t == 1 then
        print_temp_number(F1tn, -251, y)
    end

    if F2t == 1 then
        print_temp_number(F2tn, -189, y)
    end

    if F3t == 1 then
        print_temp_number(F3tn, -127, y)
    end

    if F4t == 1 then
        print_temp_number(F4tn, -62, y)
    end

    if F5t == 1 then
        print_temp_number(F5tn, 0, y)
    end

    if F6t == 1 then
        print_temp_number(F6tn, 60, y)
    end

    if F7t == 1 then
        print_temp_number(F7tn, 125, y)
    end

    if F8t == 1 then
        print_temp_number(F8tn, 187, y)
    end

    if F9t == 1 then
        print_temp_number(F9tn, 249, y)
    end

------------------------------------------------------------------------------------- G

    y = 458

    if G1t == 1 then
        print_temp_number(G1tn, -251, y)
    end

    if G2t == 1 then
        print_temp_number(G2tn, -189, y)
    end

    if G3t == 1 then
        print_temp_number(G3tn, -127, y)
    end

    if G4t == 1 then
        print_temp_number(G4tn, -62, y)
    end

    if G5t == 1 then
        print_temp_number(G5tn, 0, y)
    end

    if G6t == 1 then
        print_temp_number(G6tn, 60, y)
    end

    if G7t == 1 then
        print_temp_number(G7tn, 125, y)
    end

    if G8t == 1 then
        print_temp_number(G8tn, 187, y)
    end

    if G9t == 1 then
        print_temp_number(G9tn, 249, y)
    end

------------------------------------------------------------------------------------- H

    y = 520

    if H1t == 1 then
        print_temp_number(H1tn, -251, y)
    end

    if H2t == 1 then
        print_temp_number(H2tn, -189, y)
    end

    if H3t == 1 then
        print_temp_number(H3tn, -127, y)
    end

    if H4t == 1 then
        print_temp_number(H4tn, -62, y)
    end

    if H5t == 1 then
        print_temp_number(H5tn, 0, y)
    end

    if H6t == 1 then
        print_temp_number(H6tn, 60, y)
    end

    if H7t == 1 then
        print_temp_number(H7tn, 125, y)
    end

    if H8t == 1 then
        print_temp_number(H8tn, 187, y)
    end

    if H9t == 1 then
        print_temp_number(H9tn, 249, y)
    end

------------------------------------------------------------------------------------- I

    y = 582

    if I1t == 1 then
        print_temp_number(I1tn, -251, y)
    end

    if I2t == 1 then
        print_temp_number(I2tn, -189, y)
    end

    if I3t == 1 then
        print_temp_number(I3tn, -127, y)
    end

    if I4t == 1 then
        print_temp_number(I4tn, -62, y)
    end

    if I5t == 1 then
        print_temp_number(I5tn, 0, y)
    end

    if I6t == 1 then
        print_temp_number(I6tn, 60, y)
    end

    if I7t == 1 then
        print_temp_number(I7tn, 125, y)
    end

    if I8t == 1 then
        print_temp_number(I8tn, 187, y)
    end

    if I9t == 1 then
        print_temp_number(I9tn, 249, y)
    end

end

-----------------------------------------------------------------------------------------------------------------------

function pressing_enter()

------------------------------------------------------------------------------------- A

    if A1 == 2 then
        if A1tn == A1n then
            
            A1 = 1
            A1t = 2

        end
    end

    if A2 == 2 then
        if A2tn == A2n then
            
            A2 = 1
            A2t = 2

        end
    end

    if A3 == 2 then
        if A3tn == A3n then
            
            A3 = 1
            A3t = 2

        end
    end

    if A4 == 2 then
        if A4tn == A4n then
            
            A4 = 1
            A4t = 2

        end
    end

    if A5 == 2 then
        if A5tn == A5n then
            
            A5 = 1
            A5t = 2

        end
    end

    if A6 == 2 then
        if A6tn == A6n then
            
            A6 = 1
            A6t = 2

        end
    end

    if A7 == 2 then
        if A7tn == A7n then
            
            A7 = 1
            A7t = 2

        end
    end

    if A8 == 2 then
        if A8tn == A8n then
            
            A8 = 1
            A8t = 2

        end
    end

    if A9 == 2 then
        if A9tn == A9n then
            
            A9 = 1
            A9t = 2

        end
    end

------------------------------------------------------------------------------------- B

    if B1 == 2 then
        if B1tn == B1n then
                
            B1 = 1
            B1t = 2

        end
    end

    if B2 == 2 then
        if B2tn == B2n then
                
            B2 = 1
            B2t = 2

        end
    end

    if B3 == 2 then
        if B3tn == B3n then
                
            B3 = 1
            B3t = 2

        end
    end

    if B4 == 2 then
        if B4tn == B4n then
                
            B4 = 1
            B4t = 2

        end
    end

    if B5 == 2 then
        if B5tn == B5n then
                
            B5 = 1
            B5t = 2

        end
    end

    if B6 == 2 then
        if B6tn == B6n then
                
            B6 = 1
            B6t = 2

        end
    end

    if B7 == 2 then
        if B7tn == B7n then
                
            B7 = 1
            B7t = 2

        end
    end

    if B8 == 2 then
        if B8tn == B8n then
                
            B8 = 1
            B8t = 2

        end
    end

    if B9 == 2 then
        if B9tn == B9n then
                
            B9 = 1
            B9t = 2

        end
    end

------------------------------------------------------------------------------------- C

    if C1 == 2 then
        if C1tn == C1n then
                
            C1 = 1
            C1t = 2

        end
    end

    if C2 == 2 then
        if C2tn == C2n then
                
            C2 = 1
            C2t = 2

        end
    end

    if C3 == 2 then
        if C3tn == C3n then
                
            C3 = 1
            C3t = 2

        end
    end

    if C4 == 2 then
        if C4tn == C4n then
                
            C4 = 1
            C4t = 2

        end
    end

    if C5 == 2 then
        if C5tn == C5n then
                
            C5 = 1
            C5t = 2

        end
    end

    if C6 == 2 then
        if C6tn == C6n then
                
            C6 = 1
            C6t = 2

        end
    end

    if C7 == 2 then
        if C7tn == C7n then
                
            C7 = 1
            C7t = 2

        end
    end

    if C8 == 2 then
        if C8tn == C8n then
                
            C8 = 1
            C8t = 2

        end
    end

    if C9 == 2 then
        if C9tn == C9n then
                
            C9 = 1
            C9t = 2

        end
    end

------------------------------------------------------------------------------------- D

    if D1 == 2 then
        if D1tn == D1n then
                
            D1 = 1
            D1t = 2

        end
    end

    if D2 == 2 then
        if D2tn == D2n then
                
            D2 = 1
            D2t = 2

        end
    end

    if D3 == 2 then
        if D3tn == D3n then
                
            D3 = 1
            D3t = 2

        end
    end

    if D4 == 2 then
        if D4tn == D4n then
                
            D4 = 1
            D4t = 2

        end
    end

    if D5 == 2 then
        if D5tn == D5n then
                
            D5 = 1
            D5t = 2

        end
    end

    if D6 == 2 then
        if D6tn == D6n then
                
            D6 = 1
            D6t = 2

        end
    end

    if D7 == 2 then
        if D7tn == D7n then
                
            D7 = 1
            D7t = 2

        end
    end

    if D8 == 2 then
        if D8tn == D8n then
                
            D8 = 1
            D8t = 2

        end
    end

    if D9 == 2 then
        if D9tn == D9n then
                
            D9 = 1
            D9t = 2

        end
    end

------------------------------------------------------------------------------------- E

    if E1 == 2 then
        if E1tn == E1n then
                
            E1 = 1
            E1t = 2

        end
    end

    if E2 == 2 then
        if E2tn == E2n then
                
            E2 = 1
            E2t = 2

        end
    end

    if E3 == 2 then
        if E3tn == E3n then
                
            E3 = 1
            E3t = 2

        end
    end

    if E4 == 2 then
        if E4tn == E4n then
                
            E4 = 1
            E4t = 2

        end
    end

    if E5 == 2 then
        if E5tn == E5n then
                
            E5 = 1
            E5t = 2

        end
    end

    if E6 == 2 then
        if E6tn == E6n then
                
            E6 = 1
            E6t = 2

        end
    end

    if E7 == 2 then
        if E7tn == E7n then
                
            E7 = 1
            E7t = 2

        end
    end

    if E8 == 2 then
        if E8tn == E8n then
                
            E8 = 1
            E8t = 2

        end
    end

    if E9 == 2 then
        if E9tn == E9n then
                
            E9 = 1
            E9t = 2

        end
    end

------------------------------------------------------------------------------------- F

    if F1 == 2 then
        if F1tn == F1n then
                
            F1 = 1
            F1t = 2

        end
    end

    if F2 == 2 then
        if F2tn == F2n then
                
            F2 = 1
            F2t = 2

        end
    end

    if F3 == 2 then
        if F3tn == F3n then
                
            F3 = 1
            F3t = 2

        end
    end

    if F4 == 2 then
        if F4tn == F4n then
                
            F4 = 1
            F4t = 2

        end
    end

    if F5 == 2 then
        if F5tn == F5n then
                
            F5 = 1
            F5t = 2

        end
    end

    if F6 == 2 then
        if F6tn == F6n then
                
            F6 = 1
            F6t = 2

        end
    end

    if F7 == 2 then
        if F7tn == F7n then
                
            F7 = 1
            F7t = 2

        end
    end

    if F8 == 2 then
        if F8tn == F8n then
                
            F8 = 1
            F8t = 2

        end
    end

    if F9 == 2 then
        if F9tn == F9n then
                
            F9 = 1
            F9t = 2

        end
    end

------------------------------------------------------------------------------------- G

    if G1 == 2 then
        if G1tn == G1n then
                
            G1 = 1
            G1t = 2

        end
    end

    if G2 == 2 then
        if G2tn == G2n then
                
            G2 = 1
            G2t = 2

        end
    end

    if G3 == 2 then
        if G3tn == G3n then
                
            G3 = 1
            G3t = 2

        end
    end

    if G4 == 2 then
        if G4tn == G4n then
                
            G4 = 1
            G4t = 2

        end
    end

    if G5 == 2 then
        if G5tn == G5n then
                
            G5 = 1
            G5t = 2

        end
    end

    if G6 == 2 then
        if G6tn == G6n then
                
            G6 = 1
            G6t = 2

        end
    end

    if G7 == 2 then
        if G7tn == G7n then
                
            G7 = 1
            G7t = 2

        end
    end

    if G8 == 2 then
        if G8tn == G8n then
                
            G8 = 1
            G8t = 2

        end
    end

    if G9 == 2 then
        if G9tn == G9n then
                
            G9 = 1
            G9t = 2

        end
    end

------------------------------------------------------------------------------------- H

    if H1 == 2 then
        if H1tn == H1n then
                
            H1 = 1
            H1t = 2

        end
    end

    if H2 == 2 then
        if H2tn == H2n then
                
            H2 = 1
            H2t = 2

        end
    end

    if H3 == 2 then
        if H3tn == H3n then
                
            H3 = 1
            H3t = 2

        end
    end

    if H4 == 2 then
        if H4tn == H4n then
                
            H4 = 1
            H4t = 2

        end
    end

    if H5 == 2 then
        if H5tn == H5n then
                
            H5 = 1
            H5t = 2

        end
    end

    if H6 == 2 then
        if H6tn == H6n then
                
            H6 = 1
            H6t = 2

        end
    end

    if H7 == 2 then
        if H7tn == H7n then
                
            H7 = 1
            H7t = 2

        end
    end

    if H8 == 2 then
        if H8tn == H8n then
                
            H8 = 1
            H8t = 2

        end
    end

    if H9 == 2 then
        if H9tn == H9n then
                
            H9 = 1
            H9t = 2

        end
    end

------------------------------------------------------------------------------------- I

    if I1 == 2 then
        if I1tn == I1n then
                
            I1 = 1
            I1t = 2

        end
    end

    if I2 == 2 then
        if I2tn == I2n then
                
            I2 = 1
            I2t = 2

        end
    end

    if I3 == 2 then
        if I3tn == I3n then
                
            I3 = 1
            I3t = 2

        end
    end

    if I4 == 2 then
        if I4tn == I4n then
                
            I4 = 1
            I4t = 2

        end
    end

    if I5 == 2 then
        if I5tn == I5n then
                
            I5 = 1
            I5t = 2

        end
    end

    if I6 == 2 then
        if I6tn == I6n then
                
            I6 = 1
            I6t = 2

        end
    end

    if I7 == 2 then
        if I7tn == I7n then
                
            I7 = 1
            I7t = 2

        end
    end

    if I8 == 2 then
        if I8tn == I8n then
                
            I8 = 1
            I8t = 2

        end
    end

    if I9 == 2 then
        if I9tn == I9n then
                
            I9 = 1
            I9t = 2

        end
    end

end

-----------------------------------------------------------------------------------------------------------------------

function numbers()

    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.setFont(numberfont)

------------------------------------------------------------------------------------- A

    y = 80

    if A1 == 1 then
        print_number(A1n, -251, y)
    end

    if A2 == 1 then
        print_number(A2n, -189, y)
    end

    if A3 == 1 then
        print_number(A3n, -127, y)
    end

    if A4 == 1 then
        print_number(A4n, -62, y)
    end

    if A5 == 1 then
        print_number(A5n, 0, y)
    end

    if A6 == 1 then
        print_number(A6n, 60, y)
    end

    if A7 == 1 then
        print_number(A7n, 125, y)
    end

    if A8 == 1 then
        print_number(A8n, 187, y)
    end

    if A9 == 1 then
        print_number(A9n, 249, y)
    end

------------------------------------------------------------------------------------- B

    y = 142

    if B1 == 1 then
        print_number(B1n, -251, y)
    end

    if B2 == 1 then
        print_number(B2n, -189, y)
    end

    if B3 == 1 then
        print_number(B3n, -127, y)
    end

    if B4 == 1 then
        print_number(B4n, -62, y)
    end

    if B5 == 1 then
        print_number(B5n, 0, y)
    end

    if B6 == 1 then
        print_number(B6n, 60, y)
    end

    if B7 == 1 then
        print_number(B7n, 125, y)
    end

    if B8 == 1 then
        print_number(B8n, 187, y)
    end

    if B9 == 1 then
        print_number(B9n, 249, y)
    end

------------------------------------------------------------------------------------- C

    y = 204

    if C1 == 1 then
        print_number(C1n, -251, y)
    end

    if C2 == 1 then
        print_number(C2n, -189, y)
    end

    if C3 == 1 then
        print_number(C3n, -127, y)
    end

    if C4 == 1 then
        print_number(C4n, -62, y)
    end

    if C5 == 1 then
        print_number(C5n, 0, y)
    end

    if C6 == 1 then
        print_number(C6n, 60, y)
    end

    if C7 == 1 then
        print_number(C7n, 125, y)
    end

    if C8 == 1 then
        print_number(C8n, 187, y)
    end

    if C9 == 1 then
        print_number(C9n, 249, y)
    end

------------------------------------------------------------------------------------- D

    y = 269

    if D1 == 1 then
        print_number(D1n, -251, y)
    end

    if D2 == 1 then
        print_number(D2n, -189, y)
    end

    if D3 == 1 then
        print_number(D3n, -127, y)
    end

    if D4 == 1 then
        print_number(D4n, -62, y)
    end

    if D5 == 1 then
        print_number(D5n, 0, y)
    end

    if D6 == 1 then
        print_number(D6n, 60, y)
    end

    if D7 == 1 then
        print_number(D7n, 125, y)
    end

    if D8 == 1 then
        print_number(D8n, 187, y)
    end

    if D9 == 1 then
        print_number(D9n, 249, y)
    end

------------------------------------------------------------------------------------- E

    y = 331

    if E1 == 1 then
        print_number(E1n, -251, y)
    end

    if E2 == 1 then
        print_number(E2n, -189, y)
    end

    if E3 == 1 then
        print_number(E3n, -127, y)
    end

    if E4 == 1 then
        print_number(E4n, -62, y)
    end

    if E5 == 1 then
        print_number(E5n, 0, y)
    end

    if E6 == 1 then
        print_number(E6n, 60, y)
    end

    if E7 == 1 then
        print_number(E7n, 125, y)
    end

    if E8 == 1 then
        print_number(E8n, 187, y)
    end

    if E9 == 1 then
        print_number(E9n, 249, y)
    end

------------------------------------------------------------------------------------- F

    y = 393

    if F1 == 1 then
        print_number(F1n, -251, y)
    end

    if F2 == 1 then
        print_number(F2n, -189, y)
    end

    if F3 == 1 then
        print_number(F3n, -127, y)
    end

    if F4 == 1 then
        print_number(F4n, -62, y)
    end

    if F5 == 1 then
        print_number(F5n, 0, y)
    end

    if F6 == 1 then
        print_number(F6n, 60, y)
    end

    if F7 == 1 then
        print_number(F7n, 125, y)
    end

    if F8 == 1 then
        print_number(F8n, 187, y)
    end

    if F9 == 1 then
        print_number(F9n, 249, y)
    end

------------------------------------------------------------------------------------- G

    y = 458

    if G1 == 1 then
        print_number(G1n, -251, y)
    end

    if G2 == 1 then
        print_number(G2n, -189, y)
    end

    if G3 == 1 then
        print_number(G3n, -127, y)
    end

    if G4 == 1 then
        print_number(G4n, -62, y)
    end

    if G5 == 1 then
        print_number(G5n, 0, y)
    end

    if G6 == 1 then
        print_number(G6n, 60, y)
    end

    if G7 == 1 then
        print_number(G7n, 125, y)
    end

    if G8 == 1 then
        print_number(G8n, 187, y)
    end

    if G9 == 1 then
        print_number(G9n, 249, y)
    end

------------------------------------------------------------------------------------- H

    y = 520

    if H1 == 1 then
        print_number(H1n, -251, y)
    end

    if H2 == 1 then
        print_number(H2n, -189, y)
    end

    if H3 == 1 then
        print_number(H3n, -127, y)
    end

    if H4 == 1 then
        print_number(H4n, -62, y)
    end

    if H5 == 1 then
        print_number(H5n, 0, y)
    end

    if H6 == 1 then
        print_number(H6n, 60, y)
    end

    if H7 == 1 then
        print_number(H7n, 125, y)
    end

    if H8 == 1 then
        print_number(H8n, 187, y)
    end

    if H9 == 1 then
        print_number(H9n, 249, y)
    end

------------------------------------------------------------------------------------- I

    y = 582

    if I1 == 1 then
        print_number(I1n, -251, y)
    end

    if I2 == 1 then
        print_number(I2n, -189, y)
    end

    if I3 == 1 then
        print_number(I3n, -127, y)
    end

    if I4 == 1 then
        print_number(I4n, -62, y)
    end

    if I5 == 1 then
        print_number(I5n, 0, y)
    end

    if I6 == 1 then
        print_number(I6n, 60, y)
    end

    if I7 == 1 then
        print_number(I7n, 125, y)
    end

    if I8 == 1 then
        print_number(I8n, 187, y)
    end

    if I9 == 1 then
        print_number(I9n, 249, y)
    end

end

-----------------------------------------------------------------------------------------------------------------------

function level_complete()

    if A1 == 1 and A2 == 1 and A3 == 1 and A4 == 1 and A5 == 1 and A6 == 1 then
    end

end

