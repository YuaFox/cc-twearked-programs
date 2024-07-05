local i = 2
local run = true

while run do
    turtle.select(i)
    local selected = turtle.compareUp()
    while not selected do
        i = (i + 1) % 17
        if turtle.select(i) then
            selected = turtle.compareUp()
        else
            selected = true
            run = false
        end
    end 
    if run then
        turtle.place()
        turtle.select(1)
        turtle.place()
        turtle.dig()
    end
end
