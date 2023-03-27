class_name dasar extends primitif
	
func persegi(xa, ya, s, margin_left, margin_top):
	var res = PoolVector2Array()
	# Kiri Bawah ke Kiri Atas (Sisi Kiri)
	var px = convert_to_pixel(xa, ya, xa, ya+s, margin_left, margin_top)
	res.append_array(lineDDA(px[0], px[1], px[2], px[3]))
	# Kiri Atas ke Kanan Atas (Sisi Atas)
	px = convert_to_pixel(xa, ya+s, xa+s, ya+s, margin_left, margin_top)
	res.append_array(lineDDA(px[0], px[1], px[2], px[3]))
	# Kanan Atas ke Kanan Bawah (Sisi Kanan)
	px = convert_to_pixel(xa+s, ya+s, xa+s, ya, margin_left, margin_top)
	res.append_array(lineDDA(px[0], px[1], px[2], px[3]))
	# Kanan Bawah ke Kiri Bawah (Sisi Bawah)
	px = convert_to_pixel(xa+s, ya, xa, ya, margin_left, margin_top)
	res.append_array(lineDDA(px[0], px[1], px[2], px[3]))
	return res

func persegipanjang(xa, ya, p, l, margin_left, margin_top):
	var res = PoolVector2Array()
	# Kiri Bawah ke Kiri Atas (Sisi Kiri)
	var px = convert_to_pixel(xa, ya, xa, ya+l, margin_left, margin_top)
	res.append_array(lineDDA(px[0], px[1], px[2], px[3]))
	# Kiri Atas ke Kanan Atas (Sisi Atas)
	px = convert_to_pixel(xa, ya+l, xa+p, ya+l, margin_left, margin_top)
	res.append_array(lineDDA(px[0], px[1], px[2], px[3]))
	# Kanan Atas ke Kanan Bawah (Sisi Kanan)
	px = convert_to_pixel(xa+p, ya+l, xa+p, ya, margin_left, margin_top)
	res.append_array(lineDDA(px[0], px[1], px[2], px[3]))
	# Kanan Bawah ke Kiri Bawah (Sisi Bawah)
	px = convert_to_pixel(xa+p, ya, xa, ya, margin_left, margin_top)
	res.append_array(lineDDA(px[0], px[1], px[2], px[3]))
	return res
	
func segitigasiku(xa, ya, a, t, margin_left, margin_top):
	var res = PoolVector2Array()
	#kanan bawah ke kiri bawah 
	var px = convert_to_pixel(xa+a, ya, xa, ya, margin_left, margin_top)
	res.append_array(lineDDA(px[0], px[1], px[2], px[3]))
	# Kiri Bawah ke Kiri Atas (Sisi Kiri)
	px = convert_to_pixel(xa, ya, xa, ya+t, margin_left, margin_top)
	res.append_array(lineDDA(px[0], px[1], px[2], px[3]))
	# Kiri Atas ke Kanan bawah(Sisi Atas)
	px = convert_to_pixel(xa, ya+t, xa+t, ya, margin_left, margin_top)
	res.append_array(lineDDA(px[0], px[1], px[2], px[3]))	
	return res
	
func trapesiumsiku(xa, ya, a, b ,t, margin_left, margin_top):
	var res = PoolVector2Array()
	#kiri bawah ke kiri atas 
	var px = convert_to_pixel(xa, ya, xa, ya+t, margin_left, margin_top)
	res.append_array(lineDDA(px[0], px[1], px[2], px[3]))
	
	# Kiri Atas ke Kanan atas
	px = convert_to_pixel(xa, ya+t, xa+a, ya+t, margin_left, margin_top)
	res.append_array(lineDDA(px[0], px[1], px[2], px[3]))
	
	# Kanan Atas ke Kanan bawah
	px = convert_to_pixel(xa+a, ya+t, xa+b, ya, margin_left, margin_top)
	res.append_array(lineDDA(px[0], px[1], px[2], px[3]))
	
	# Kanan Bawah ke Kiri bawah
	px = convert_to_pixel(xa+b, ya, xa, ya, margin_left, margin_top)
	res.append_array(lineDDA(px[0], px[1], px[2], px[3]))
	return res
	
func jajargenjang(xa, ya, a,t,m, margin_left, margin_top):
	var res = PoolVector2Array()
	# Kiri Bawah ke Kiri Atas (Sisi Kiri)
	var px = convert_to_pixel(xa, ya, xa+m, ya+t, margin_left, margin_top)
	res.append_array(lineDDA(px[0], px[1], px[2], px[3]))
	# Kiri Atas ke Kanan Atas (Sisi Atas)
	px = convert_to_pixel(xa+m, ya+t, xa+a, ya+t, margin_left, margin_top)
	res.append_array(lineDDA(px[0], px[1], px[2], px[3]))
	# Kanan Atas ke Kanan Bawah (Sisi Kanan)
	px = convert_to_pixel(xa+a, ya+t, xa+a-m, ya, margin_left, margin_top)
	res.append_array(lineDDA(px[0], px[1], px[2], px[3]))
	# Kanan Bawah ke Kiri Bawah (Sisi Bawah)
	px = convert_to_pixel(xa+a-m, ya, xa, ya, margin_left, margin_top)
	res.append_array(lineDDA(px[0], px[1], px[2], px[3]))
	return res

func bendera(xa, ya, a,t, margin_left, margin_top):
	var res = PoolVector2Array()
	#kanan bawah ke kiri bawah 
	var px = convert_to_pixel(xa+a, ya+(a/2), xa, ya+a, margin_left, margin_top)
	res.append_array(lineDDA(px[0], px[1], px[2], px[3]))
	# Kiri Bawah ke Kiri Atas (Sisi Kiri)
	px = convert_to_pixel(xa, ya, xa, ya+t, margin_left, margin_top)
	res.append_array(lineDDA(px[0], px[1], px[2], px[3]))
	# Kiri Atas ke Kanan bawah(Sisi Atas)
	px = convert_to_pixel(xa, ya, xa+a, ya+(a/2), margin_left, margin_top)
	res.append_array(lineDDA(px[0], px[1], px[2], px[3]))
		
	return res
	
func tiang(xa, ya, s,l, margin_left, margin_top):
	var res = PoolVector2Array()
	# Kiri Bawah ke Kiri Atas (Sisi Kiri)
	var px = convert_to_pixel(xa, ya, xa, ya+s, margin_left, margin_top)
	res.append_array(lineDDA(px[0], px[1], px[2], px[3]))
	# Kiri Atas ke Kanan Atas (Sisi Atas)
	px = convert_to_pixel(xa, ya+s, xa+l, ya+s, margin_left, margin_top)
	res.append_array(lineDDA(px[0], px[1], px[2], px[3]))
	# Kanan Atas ke Kanan Bawah (Sisi Kanan)
	px = convert_to_pixel(xa+l, ya+s, xa+l, ya, margin_left, margin_top)
	res.append_array(lineDDA(px[0], px[1], px[2], px[3]))
	# Kanan Bawah ke Kiri Bawah (Sisi Bawah)
	px = convert_to_pixel(xa+l, ya, xa, ya, margin_left, margin_top)
	res.append_array(lineDDA(px[0], px[1], px[2], px[3]))
	return res
	
func trapesium(xa, ya, t, p, l, margin_left, margin_top):
	var res = PoolVector2Array()
	# Kiri Bawah ke Kiri Atas (Sisi Kiri)
	var px = convert_to_pixel(xa, ya, xa+t/2, ya+l, margin_left, margin_top)
	res.append_array(lineDDA(px[0], px[1], px[2], px[3]))
	# Kiri Atas ke Kanan Atas (Sisi Atas)
	px = convert_to_pixel(xa+t/2, ya+l, xa+p-t/2, ya+l, margin_left, margin_top)
	res.append_array(lineDDA(px[0], px[1], px[2], px[3]))
	# Kanan Atas ke Kanan Bawah (Sisi Kanan)
	px = convert_to_pixel(xa+p-t/2, ya+l, xa+p, ya, margin_left, margin_top)
	res.append_array(lineDDA(px[0], px[1], px[2], px[3]))
	# Kanan Bawah ke Kiri Bawah (Sisi Bawah)
	px = convert_to_pixel(xa+p, ya, xa, ya, margin_left, margin_top)
	res.append_array(lineDDA(px[0], px[1], px[2], px[3]))
	return res
	
func trapesium_keranjang(xa, ya, aa, ab, t, margin_left, margin_top):
	var res = PoolVector2Array()
	# Kiri Bawah ke Kiri Atas (Sisi Kiri)
	var px = convert_to_pixel(xa, ya, xa-t, ya+t, margin_left, margin_top)
	res.append_array(lineDDA(px[0], px[1], px[2], px[3]))
	# Kiri Atas ke Kanan Atas (Sisi Atas)
	px = convert_to_pixel(xa-t, ya+t, xa+aa, ya+t, margin_left, margin_top)
	res.append_array(lineDDA(px[0], px[1], px[2], px[3]))
	# Kanan Atas ke Kanan Bawah (Sisi Kanan)
	px = convert_to_pixel(xa+aa, ya+t, xa+ab, ya, margin_left, margin_top)
	res.append_array(lineDDA(px[0], px[1], px[2], px[3]))
	# Kanan Bawah ke Kiri Bawah (Sisi Bawah)
	px = convert_to_pixel(xa+ab, ya, xa, ya, margin_left, margin_top)
	res.append_array(lineDDA(px[0], px[1], px[2], px[3]))
	return res

func _circle_plot(xp, yp, x, y):
	var res = PoolVector2Array()

	res.append(Vector2(xp + x, yp + y))
	res.append(Vector2(xp - x, yp + y))
	res.append(Vector2(xp + x, yp - y))
	res.append(Vector2(xp - x, yp - y))

	res.append(Vector2(xp + y, yp + x))
	res.append(Vector2(xp - y, yp + x))
	res.append(Vector2(xp + y, yp - x))
	res.append(Vector2(xp - y, yp - x))
	
	return res
	
func circle(xp, yp, radius):
	var x = 0
	var y = radius
	var p = 1 - radius
	var res = PoolVector2Array()
	res.append_array(_circle_plot(xp, yp, x, y))

	while (x < y):
		x += 1
		if (p < 0):
			p += 2 * x + 1
		else:
			y -= 1
			p += 2 * (x - y) + 1
		res.append_array(_circle_plot(xp, yp, x, y))
	return res


func _ellipse_plot(xp, yp, x, y):
	var res = PoolVector2Array()
	
	res.append(Vector2(xp + x, yp + y))
	res.append(Vector2(xp - x, yp + y))
	res.append(Vector2(xp + x, yp - y))
	res.append(Vector2(xp - x, yp - y))
	
	return res

func ellipse(xp, yp, Rx, Ry):
	var Rx2 = Rx*Rx
	var Ry2 = Ry*Ry
	var twoRx2 = 2*Rx2
	var twoRy2 = 2*Ry2
	var p 
	var x = 0
	var y = Ry
	var px = 0
	var py = twoRx2 * y
	var res = PoolVector2Array()

	res.append_array(_ellipse_plot(xp, yp, x, y))

	# Region 1
	p = round(Ry2 - (Rx2 * Ry) + (0.25 * Rx2))
	while (px < py):
		x += 1
		px += twoRy2
		if (p < 0):
			p += Ry2 + px
		else:
			y -= 1
			py -= twoRx2
			p += Ry2 + px - py
		res.append_array(_ellipse_plot(xp, yp, x, y))
		
	# Region 2
	p = round(Ry2 * (x+0.5) * (x+0.5) + Rx2 * (y-1) * (y-1) - Rx2 * Ry2)
	while (y > 0):
		y -= 1
		py -= twoRx2
		if (p > 0):
			p += Rx2 - py
		else:
			x += 1
			px += twoRy2
			p += Rx2 - py + px
		res.append_array(_ellipse_plot(xp, yp, x, y))
	return res
