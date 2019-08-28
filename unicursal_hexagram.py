# Goal: Write a Turtle program that will create a Unicursal Hexagram, knowing only the interior angle of a hexagon (120 degrees)

import turtle

turtle.setup( width = 1920, height = 1080, startx = None, starty = None)
turtle.bgcolor('black')
turtle.color('white', 'blue')

origin = (float(-200), float(200)) # set starting position saved as variable origin
hexSide = 400  # set length of the hexagon side in pixels
hexAngle = 180 - 120 # turn angle to make hexagon

turtle.penup() 
turtle.setpos(origin) # set turtle to begin drawing hexagon
turtle.setheading(30)
turtle.ht()

pointList = [origin] # add origin as first coordinate to list of points to be used to draw hexagram

turtle.pendown() 
turtle.fd(hexSide) # first line drawn before loop so that position != origin

atOrigin = False

while atOrigin == False: # obtain coordinates for points of hexagon
    pointList.append(turtle.pos())
    turtle.right(hexAngle)
    turtle.fd(hexSide)

    if turtle.distance(origin) < 1.0:
        atOrigin = True

print(pointList)

turtle.clear() # clear hexagon and prepare to draw unicursal hexagram
turtle.penup()
turtle.setpos(pointList[5])

turtle.pendown() # draw unicursal hexagram
turtle.goto(pointList[1])
turtle.goto(pointList[3])
turtle.goto(pointList[0])
turtle.goto(pointList[4])
turtle.goto(pointList[2])
turtle.goto(pointList[5])

turtle.exitonclick()