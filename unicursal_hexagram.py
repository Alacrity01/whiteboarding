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
turtle.setheading(30)
turtle.ht()

# print(turtle.heading())
# print(turtle.isvisible())

pointList = [origin]

turtle.pendown()
turtle.fd(hexSide)


atOrigin = False

while atOrigin == False:
    pointList.append(turtle.pos())
    turtle.right(hexAngle)
    turtle.fd(hexSide)

    if turtle.distance(origin) < 1.0:
        atOrigin = True

print(pointList)

turtle.penup()

turtle.setpos(pointList[5])

turtle.pendown()

turtle.goto(pointList[1])

turtle.goto(pointList[3])

turtle.goto(pointList[0])

turtle.goto(pointList[4])

turtle.goto(pointList[2])

turtle.goto(pointList[5])



turtle.exitonclick()