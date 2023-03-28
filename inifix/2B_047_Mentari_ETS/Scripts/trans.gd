class_name trans extends Reference

func rotate2d(xp, yp, res, angle) :
	angle = deg2rad(angle)
	var center = Vector2(xp, yp)
	for i in range(res.size()):
		res[i] = center + (res[i] - center).rotated(angle)
	return res

# Operasi Matrix
var theMatrix = [[1,0,0],[0,1,0],[0,0,1]]

func matrix3x3Add(Ma, Mb):
	for r in range(3):
		for c in range(3):
			Mb[r][c] += Ma[r][c]
			
	return Mb

func matrix3x3Sub(Ma, Mb):
	for r in range(3):
		for c in range(3):
			Mb[r][c] -= Ma[r][c]
			
	return Mb

func matrix3x3PreMultiply(Ma, Mb):
	var Mtemp=[[0,0,0],[0,0,0],[0,0,0]]
	
	for r in range(3):
		for c in range(3):
			Mtemp[r][c] = Ma[r][0]*Mb[0][c] + Ma[r][1]*Mb[1][c] + Ma[r][2]*Mb[2][c]

	return Mtemp

func newMatrix3x3SetIdentity():
	return [[1,0,0],[0,1,0],[0,0,1]]
	
# Transformasi
func scale2(sx: float, sy: float, refpt: Vector2, baseMatrix = newMatrix3x3SetIdentity()):
	var m=newMatrix3x3SetIdentity()
	
	m[0][0] = sx
	m[0][2] = (1 - sx) * refpt.x
	m[1][1] = sy
	m[1][2] = (1 - sy) * refpt.y
	return matrix3x3PreMultiply(m, baseMatrix)

#rotation
func rotate2(a: float, refpt: Vector2, baseMatrix = newMatrix3x3SetIdentity()):
	var m=newMatrix3x3SetIdentity()
	
	a = deg2rad(a)
	m[0][0] = cos(a)
	m[0][1] = -sin(a)
	m[0][2] = refpt.x * (1 - cos(a)) + refpt.y * sin(a)
	m[1][0] = sin(a)
	m[1][1] = cos(a)
	m[1][2] = refpt.y * (1 - cos(a)) - refpt.x * sin(a)
	return matrix3x3PreMultiply(m, baseMatrix)

#translation
func translate2(tx: int, ty: int, baseMatrix = newMatrix3x3SetIdentity()):
	var m=newMatrix3x3SetIdentity()
	
	m[0][2] = tx
	m[1][2] = ty
	return matrix3x3PreMultiply(m, baseMatrix)

#transform
func transformPoints2(pts, baseMatrix = newMatrix3x3SetIdentity()):
	var tmp
	
	for k in range(len(pts)):
		tmp = baseMatrix[0][0] * pts[k].x + baseMatrix[0][1] * pts[k].y + baseMatrix[0][2]
		pts[k].y = baseMatrix[1][0] * pts[k].x + baseMatrix[1][1] * pts[k].y + baseMatrix[1][2]
		pts[k].x = tmp
	return pts
