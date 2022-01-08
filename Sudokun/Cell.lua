

Cell = Class{}

function Cell:init(x, y, number)

    self.x = x
    self.y = y


    self.number = number
    self.tempnumber = 0

    self.switch = 2
    self.tempswitch = 2


end


function Cell:reset()

    self.tempnumber = 0
    self.tempswitch = 2

end


function Cell:update()

end


function Cell:render()

    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.setFont(numberfont)

    love.graphics.printf(tostring(self.number), self.x, self.y, VIRTUAL_WIDTH, 'center')
end


function Cell:temp_render(number)

    love.graphics.setColor(1, 1, 1, 0.7)
    love.graphics.setFont(numberfont)

    love.graphics.printf(tostring(number), self.x, self.y, VIRTUAL_WIDTH, 'center')
end
