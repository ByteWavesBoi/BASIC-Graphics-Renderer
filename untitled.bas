SCREEN 12

CONST scale = 200
CONST depth = 4
CONST centerX = 320
CONST centerY = 240

x = 100
y = 100
z = 100

angleX = 0
angleY = 0

CLS

ry = y * COS(angleX) - z * SIN(angleX)
rz = y * SIN(angleX) + z * COS(angleX)
rx = x * COS(angleY) + rz * SIN(angleY)
rz = -x * SIN(angleY) + rz * COS(angleY)

sx = rx / (rz + depth) * scale + centerX
sy = ry / (rz + depth) * scale + centerY

FOR dx = -3 TO 3
    FOR dy = -3 TO 3
        PSET (sx + dx, sy + dy), 15
    NEXT dy
NEXT dx

DO
LOOP
