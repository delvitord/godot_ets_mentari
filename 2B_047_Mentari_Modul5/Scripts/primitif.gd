class_name primitif extends Reference

func lineDDA(xa : float, ya : float, xb : float, yb : float):
	print(xa)
	print(yb)
	var dx = xb - xa
	var dy = yb - ya
	var steps
	var xIncrement
	var yIncrement
	var x = xa
	var y = ya
	var res = PoolVector2Array()
	if (abs(dx) > abs(dy)) :
		steps = abs(dx)
	else : 
		steps = abs(dy)
	xIncrement = dx/ float(steps)
	yIncrement = dy/ float(steps)
	res.append(Vector2(round(x), round(y)))
	for k in steps:
		x += xIncrement
		y += yIncrement
		res.append(Vector2(round(x), round(y)))
	return res
	
func lineBersenham(xa : int, ya : int, xb : int, yb : int):
	var dx = abs(xa - xb)
	var dy = abs(ya - yb)
	
	var p = 2 * dy - dx
	var twoDy = 2 * dy
	var twoDyDx = 2 * (dy - dx)
	
	var x
	var y
	var xEnd
	var yEnd
	
	var res = PoolVector2Array()
	
	if xa > xb : 
		x = xb
		y = yb
		xEnd = xa
	else : 
		x = xa
		y = ya
		xEnd = xb
	if ya > yb : 
		x = xb
		y = yb
		yEnd = ya
	else : 
		x = xa
		y = ya
		yEnd = yb
	
	res.append(Vector2(x, y))
	
	if x < xEnd :	
		while x < xEnd :
			x += 1
			if p < 0 :
				p += twoDy
			else : 
				y += 1
				p += twoDyDx
			res.append(Vector2(x, y))
	elif y < yEnd :
		while y < yEnd :
			y += 1
			if p < 0 :
				p += twoDy
			else : 
				p += twoDyDx
			res.append(Vector2(x, y))
	return res
	
func lineMidpoint(xa : int, ya : int, xb : int, yb : int):
	pass
	
func drawMargin(margin_top, margin_right, margin_bottom, margin_left):
	var res = PoolVector2Array()
	res.append_array(lineBersenham(margin_left, margin_top, margin_right, margin_top))
	res.append_array(lineBersenham(margin_left, margin_bottom, margin_right, margin_bottom))  # Kiri Bawah Kanan Bawah
	res.append_array(lineBersenham(margin_left, margin_top, margin_left, margin_bottom))      # Kiri Atas Kiri Bawah
	res.append_array(lineBersenham(margin_right, margin_top, margin_right, margin_bottom))   # Kanan Atas Kanan Bawah
	return res
	
func drawGrid(margin_top, margin_right, margin_bottom, margin_left):
	
	var res = PoolVector2Array()
	
	# Sumbu Y
	var xa = margin_left;
	var ya = 2*margin_top;
	var xb = OS.window_size.x - xa
	var yb = OS.window_size.y - ya
	var y_range = (OS.window_size.y / margin_top) - 3
	for count in range(y_range):
		res.append_array(lineDDA(xa,ya,xb,ya))
		ya = ya + margin_top
	
	# Sumbu X
	xa = 2*margin_left
	ya = margin_top
	xb = OS.window_size.x - xa
	yb = OS.window_size.y - ya
	var x_range = (OS.window_size.x / margin_left) - 3
	for count in range(x_range):
		res.append_array(lineDDA(xa,ya,xa,yb))
		xa = xa + margin_left

	return res

func drawKartesian(margin_top, margin_right, margin_bottom, margin_left):
	var res = PoolVector2Array()
	#Sumbu X
	var xa = margin_left                       
	var ya = margin_top      
	var xb = OS.window_size.x - xa        
	var yb = OS.window_size.y / 2                       
	res.append_array(lineDDA(xa,yb,xb,yb))
	
	#Sumbu Y  
	xa = margin_left                        
	ya = margin_top
	xb = OS.window_size.x / 2                        
	yb = OS.window_size.y - margin_top         
	res.append_array(lineDDA(xb,ya,xb,yb))
	
	return res

# world coordinat to pixel coordinat untuk bentuk dasar
func convert_to_pixel(xa, ya, xb, yb, margin_left, margin_top):
	xa = margin_left+xa
	xb = margin_left+xb
	ya = OS.window_size.y -margin_top - ya
	yb = OS.window_size.y -margin_top - yb
	return [xa,ya,xb,yb]


# pixel coordinat to kartesian koordinat untuk fungsi
func convert_to_kartesian(xa, ya, xb, yb, margin_left, margin_top):
	var axis = ceil(float(OS.window_size.x / 2))
	var ordinat = ceil(float(OS.window_size.y / 2))
	xa = axis + xa
	xb = axis + xb
	ya = ordinat - ya
	yb = ordinat - yb
	return [xa,ya,xb,yb]
func line_style(res, type, gap):
	var buffer = PoolVector2Array()
	var dash = 10
	var dot = 1
	
	var count = 0	
	for i in res.size():
		match type:
			# dash-dash
			1: 
				if (count < dash):
					buffer.append_array([res[i]])
					count += 1
				elif (count >= dash && count < dash+gap):
					count += 1
				else:
					count = 0

			# point-point
			2: 
				if (count < dot):
					buffer.append_array([res[i]])
					count+=1
				elif (count >= dot && count < dot+gap):
					count+=1
				else:
					count = 0
			
			# point-dash
			3: 
				if(count < dot):
					buffer.append_array([res[i]])
					count += 1
				elif(count >= dot && count < dot+gap):
					count += 1
				elif(count >= dot+gap && count < dash):
					buffer.append_array([res[i]])
					count +=1
				elif (count >= dash && count < dash+gap):
					count +=1
				else:
					count = 0
	return buffer
	
	
	
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

func scale2(sx: float, sy: float, refpt: Vector2):
	var m=[[0,0,0],[0,0,0],[0,0,0]]
	
	matrix3x3SetIdentity(m)
	m[0][0] = sx
	m[0][2] = (1 - sx) * refpt.x
	m[1][1] = sy
	m[1][2] = (1 - sy) * refpt.y
	matrix3x3PreMultiply(m, theMatrix)
	
#rotation
func rotate2(a: float, refpt: Vector2):
	var m=[[0,0,0],[0,0,0],[0,0,0]]
	
	matrix3x3SetIdentity(m)
	a = deg2rad(a)
	m[0][0] = cos(a)
	m[0][1] = -sin(a)
	m[0][2] = refpt.x * (1 - cos(a)) + refpt.y * sin(a)
	m[1][0] = sin(a)
	m[1][1] = cos(a)
	m[1][2] = refpt.y * (1 - cos(a)) - refpt.x * sin(a)
	matrix3x3PreMultiply(m, theMatrix)

#translation
func translate2(tx: int, ty: int):
	var m=[[0,0,0],[0,0,0],[0,0,0]]
	
	matrix3x3SetIdentity(m)
	m[0][2] = tx
	m[1][2] = ty
	matrix3x3PreMultiply(m, theMatrix)

#transform
func transformPoints2(npts: int, pts: PoolVector2Array):
	var tmp
	
	for k in range(npts):
		tmp = theMatrix[0][0] * pts[k].x + theMatrix[0][1] * pts[k].y + theMatrix[0][2]
		pts[k].y = theMatrix[1][0] * pts[k].x + theMatrix[1][1] * pts[k].y + theMatrix[1][2]
		pts[k].x = tmp
	return pts

