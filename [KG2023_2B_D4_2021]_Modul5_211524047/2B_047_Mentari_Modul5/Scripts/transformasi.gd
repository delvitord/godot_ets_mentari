class_name transformasi extends Reference

# Operasi Matrix

var theMatrix=[[0,0,0],[0,0,0],[0,0,0]]
			
func matrix3x3Add(Ma, Mb):
	for r in range(3):
		for c in range(3):
			Mb[r][c] += Ma[r][c]

func matrix3x3Sub(Ma, Mb):
	for r in range(3):
		for c in range(3):
			Mb[r][c] -= Ma[r][c]

func matrix3x3PreMultiply(Ma, Mb):
	var Mtemp=[[0,0,0],[0,0,0],[0,0,0]]
	
	for r in range(3):
		for c in range(3):
			Mtemp[r][c] = Ma[r][0]*Mb[0][c] + Ma[r][1]*Mb[1][c] + Ma[r][2]*Mb[2][c]
			
	for r in range(3):
		for c in range(3):
			Mb[r][c] = Mtemp[r][c]

func matrix3x3SetIdentity(m):
	for i in range(3):
		for j in range(3):
			if(i==j):
				m[i][j] = 1
			else:
				m[i][j] = 0

# Transformasi

func scale2(pts: PoolVector2Array, sx: float, sy: float, refpt: Vector2):
	var m=[[0,0,0],[0,0,0],[0,0,0]]
	matrix3x3SetIdentity(theMatrix)
	matrix3x3SetIdentity(m)
	m[0][0] = sx
	m[0][2] = (1 - sx) * refpt.x
	m[1][1] = sy
	m[1][2] = (1 - sy) * refpt.y
	matrix3x3PreMultiply(m, theMatrix)
	pts = transformPoints2(pts)
	return pts
	
#rotation
func rotate2(pts: PoolVector2Array, a: float, refpt: Vector2):
	var m=[[0,0,0],[0,0,0],[0,0,0]]
	matrix3x3SetIdentity(m)
	matrix3x3SetIdentity(theMatrix)
	a = deg2rad(a)
	m[0][0] = cos(a)
	m[0][1] = -sin(a)
	m[0][2] = refpt.x * (1 - cos(a)) + refpt.y * sin(a)
	m[1][0] = sin(a)
	m[1][1] = cos(a)
	m[1][2] = refpt.y * (1 - cos(a)) - refpt.x * sin(a)
	matrix3x3PreMultiply(m, theMatrix)
	pts = transformPoints2(pts)
	return pts

#translation
func translate2(pts: PoolVector2Array, tx: int, ty: int):
	var m=[[0,0,0],[0,0,0],[0,0,0]]
	
	matrix3x3SetIdentity(m)
	matrix3x3SetIdentity(theMatrix)
	m[0][2] = tx
	m[1][2] = ty
	matrix3x3PreMultiply(m, theMatrix)
	
	pts = transformPoints2(pts)
	return pts

#transform
func transformPoints2(pts: PoolVector2Array):
	var tmp
	
	for k in range(pts.size()):
		tmp = theMatrix[0][0] * pts[k].x + theMatrix[0][1] * pts[k].y + theMatrix[0][2]
		pts[k].y = theMatrix[1][0] * pts[k].x + theMatrix[1][1] * pts[k].y + theMatrix[1][2]
		pts[k].x = tmp
	return pts
