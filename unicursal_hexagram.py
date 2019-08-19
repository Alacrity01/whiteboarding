# Goal: Write a Turtle program that will create a Unicursal Hexagram, knowing only the interior angle of a hexagon (120 degrees)

import turtle

turtle.color('white', 'blue')
turtle.bgcolor('black')
turtle.begin_fill()

origin = (-100, 100)
hexSide = 200
hexAngle = 180 - 120

turtle.penup()
turtle.setpos(origin)
turtle.ht()

print(turtle.heading())
print(turtle.pos())
print(turtle.isvisible())

turtle.pendown()
turtle.fd(hexSide)

while turtle.pos() != origin:

    turtle.right(hexAngle)
    turtle.fd(hexSide)


turtle.exitonclick()