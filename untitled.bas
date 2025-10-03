Screen 12

Const scale = 200
Const depth = 4
Const centerX = 320
Const centerY = 240

x = 100
y = 100
z = 100

' No rotation, so angleX and angleY are zero
angleX = 0
angleY = 0

Cls

' Project the 3D point to 2D screen coordinates
ry = y * Cos(angleX) - z * Sin(angleX)
rz = y * Sin(angleX) + z * Cos(angleX)
rx = x * Cos(angleY) + rz * Sin(angleY)
rz = -x * Sin(angleY) + rz * Cos(angleY)

sx = rx / (rz + depth) * scale + centerX
sy = ry / (rz + depth) * scale + centerY

' Draw a small filled square centered at (sx, sy)
For dx = -3 To 3
    For dy = -3 To 3
        PSet (sx + dx, sy + dy), 15
    Next dy
Next dx

' Loop forever to keep the screen open
Do
Loop

