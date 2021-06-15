

function cell_chosen(x, y)

    love.graphics.setColor(0.4, 0.4, 0.4, 0.2)
    love.graphics.rectangle('fill', x, y, 12, 12)
    if x == 1 then
        cell_x = 1
    elseif x == 2 then
        cell_x = 2
    elseif x == 3 then
        cell_x = 3

    end
    if y == 1 then
        cell_y = 1
    elseif y == 2 then
        cell_y = 2
    elseif y == 3 then
        cell_y = 3
end

number_check(9, cell_x, cell_y)


function number_check(z, x, y)

        if love.keypressed(z) then
            if check_use(x, y) == true then
                count = count + 1
            else
            end
        else 
        end
        
        if love.keypressed(1) then
            check_use(x, y) = false
            z_cellxy('1', x, y)
        elseif love.keypressed(2) then
            z_cellxy('2', x, y)
        elseif love.keypressed(3) then
            z_cellxy('3', x, y)
        elseif love.keypressed(4) then
            z_cellxy('4', x, y)
        elseif love.keypressed(5) then
            z_cellxy('5', x, y)
        elseif love.keypressed(6) then
            z_cellxy('6', x, y)
        elseif love.keypressed(7) then
            z_cellxy('7', x, y)
        elseif love.keypressed(8) then
            z_cellxy('8', x, y)
        elseif love.keypressed(9) then
            z_cellxy('9', x, y)
    end
end


function check_use(z, cell_x, cell_y)
    if love.keypressed(z) then
        pick_cell(cell_x, cell_y)
    end
end


function pick_cell(cell_x, cell_y)
    if 