# Goal: Write a Turtle program that will create a Unicursal Hexagram, knowing only the interior angle of a hexagon (120 degrees)

import turtle


t = turtle.Turtle()
t.color('white', 'blue')
t.begin_fill()


origin = (-100, 100)
hexSide = 200
hexAngle = 120

t.setpos(origin)
t.ht()

print(t.heading())
print(t.pos())
print(t.isvisible())
