

x1 = -251
x2 = -189
x3 = -127
x4 = -62
x5 = 0
x6 = 60
x7 = 125
x8 = 187
x9 = 249

y1 = 80
y2 = 142
y3 = 204
y4 = 269
y5 = 331
y6 = 393
y7 = 458
y8 = 520
y9 = 582

cells = {
    A1, A2, A3, A4, A5, A6, A7, A8, A9, 
    B1, B2, B3, B4, B5, B6, B7, B8, B9, 
    C1, C2, C3, C4, C5, C6, C7, C8, C9, 
    D1, D2, D3, D4, D5, D6, D7, D8, D9, 
    E1, E2, E3, E4, E5, E6, E7, E8, E9, 
    F1, F2, F3, F4, F5, F6, F7, F8, F9, 
    G1, G2, G3, G4, G5, G6, G7, G8, G9, 
    H1, H2, H3, H4, H5, H6, H7, H8, H9,
    I1, I2, I3, I4, I5, I6, I7, I8, I9
}


function easy1()

------------------------------- Which numbers are correct and which are on the board at the start

    A1 = Cell(x1, y1, 6)
    A2 = Cell(x2, y1, 1)
    A3 = Cell(x3, y1, 3)
    A4 = Cell(x4, y1, 4)
    A5 = Cell(x5, y1, 8)
    A6 = Cell(x6, y1, 2)
    A7 = Cell(x7, y1, 9)
    A8 = Cell(x8, y1, 5)
    A9 = Cell(x9, y1, 7)

    A2.switch = 1
    A5.switch = 1
    A7.switch = 1
    A9.switch = 1

----------------------- B

    B1 = Cell(x1, y2, 9)
    B2 = Cell(x2, y2, 2)
    B3 = Cell(x3, y2, 5)
    B4 = Cell(x4, y2, 7)
    B5 = Cell(x5, y2, 6)
    B6 = Cell(x6, y2, 1)
    B7 = Cell(x7, y2, 3)
    B8 = Cell(x8, y2, 4)
    B9 = Cell(x9, y2, 8)

    B7.switch = 1
    B8.switch = 1

----------------------- C

    C1 = Cell(x1, y3, 4)
    C2 = Cell(x2, y3, 8)
    C3 = Cell(x3, y3, 7)
    C4 = Cell(x4, y3, 9)
    C5 = Cell(x5, y3, 3)
    C6 = Cell(x6, y3, 5)
    C7 = Cell(x7, y3, 1)
    C8 = Cell(x8, y3, 2)
    C9 = Cell(x9, y3, 6)

    C1.switch = 1
    C2.switch = 1
    C3.switch = 1
    C4.switch = 1
    C6.switch = 1
    C7.switch = 1
    C9.switch = 1

----------------------- D

    D1 = Cell(x1, y4, 5)
    D2 = Cell(x2, y4, 7)
    D3 = Cell(x3, y4, 8)
    D4 = Cell(x4, y4, 1)
    D5 = Cell(x5, y4, 4)
    D6 = Cell(x6, y4, 9)
    D7 = Cell(x7, y4, 2)
    D8 = Cell(x8, y4, 6)
    D9 = Cell(x9, y4, 3)

    D3.switch = 1
    D4.switch = 1
    D6.switch = 1
    D8.switch = 1

----------------------- E

    E1 = Cell(x1, y5, 1)
    E2 = Cell(x2, y5, 6)
    E3 = Cell(x3, y5, 9)
    E4 = Cell(x4, y5, 2)
    E5 = Cell(x5, y5, 5)
    E6 = Cell(x6, y5, 3)
    E7 = Cell(x7, y5, 8)
    E8 = Cell(x8, y5, 7)
    E9 = Cell(x9, y5, 4)

    E5.switch = 1

----------------------- F

    F1 = Cell(x1, y6, 3)
    F2 = Cell(x2, y6, 4)
    F3 = Cell(x3, y6, 2)
    F4 = Cell(x4, y6, 6)
    F5 = Cell(x5, y6, 7)
    F6 = Cell(x6, y6, 8)
    F7 = Cell(x7, y6, 5)
    F8 = Cell(x8, y6, 1)
    F9 = Cell(x9, y6, 9)

    F2.switch = 1
    F4.switch = 1
    F6.switch = 1
    F7.switch = 1

----------------------- G

    G1 = Cell(x1, y7, 8)
    G2 = Cell(x2, y7, 5)
    G3 = Cell(x3, y7, 4)
    G4 = Cell(x4, y7, 3)
    G5 = Cell(x5, y7, 1)
    G6 = Cell(x6, y7, 6)
    G7 = Cell(x7, y7, 7)
    G8 = Cell(x8, y7, 9)
    G9 = Cell(x9, y7, 2)

    G1.switch = 1
    G3.switch = 1
    G4.switch = 1
    G6.switch = 1
    G7.switch = 1
    G8.switch = 1
    G9.switch = 1

----------------------- H

    H1 = Cell(x1, y8, 7)
    H2 = Cell(x2, y8, 9)
    H3 = Cell(x3, y8, 1)
    H4 = Cell(x4, y8, 8)
    H5 = Cell(x5, y8, 2)
    H6 = Cell(x6, y8, 4)
    H7 = Cell(x7, y8, 6)
    H8 = Cell(x8, y8, 3)
    H9 = Cell(x9, y8, 5)

    H2.switch = 1
    H3.switch = 1

----------------------- I

    I1 = Cell(x1, y9, 2)
    I2 = Cell(x2, y9, 3)
    I3 = Cell(x3, y9, 6)
    I4 = Cell(x4, y9, 5)
    I5 = Cell(x5, y9, 9)
    I6 = Cell(x6, y9, 7)
    I7 = Cell(x7, y9, 4)
    I8 = Cell(x8, y9, 8)
    I9 = Cell(x9, y9, 1)

    I1.switch = 1
    I3.switch = 1
    I5.switch = 1
    I8.switch = 1

end

-------------------------------


