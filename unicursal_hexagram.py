# Goal: Write a Turtle program that will create a Unicursal Hexagram, knowing only the interior angle of a hexagon (120 degrees)

import turtle

turtle.color('white', 'blue')
turtle.bgcolor('black')
turtle.begin_fill()

origin = (float(-100), float(100))
hexSide = 200
hexAngle = 180 - 120

turtle.penup()
turtle.setpos(origin)
turtle.ht()

# print(turtle.heading())
# print(turtle.isvisible())

pointsList = [origin]

turtle.pendown()
turtle.fd(hexSide)


atOrigin = False

while atOrigin == False:
    pointsList.append(turtle.pos())
    turtle.right(hexAngle)
    turtle.fd(hexSide)

    if turtle.distance(origin) < 1.0:
        atOrigin = True

print(pointsList)

turtle.exitonclick()