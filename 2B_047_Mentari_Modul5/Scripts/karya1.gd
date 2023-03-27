extends Node2D

var Primitif = primitif.new()

export var margin_left = 50
export var margin_top  = 50
var x = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

func _ready():
	var KL_FnLinear = $"/root/Karya1/KaryaLayer/FnLinear"
	KL_FnLinear.visible = true
	update()

func _draw_linear():
	#kiri atas standar
	var res = Primitif.lineDDA(420, 100, 70, 200)
	put_pixel_all(res,Color("#ff0000"))
	res = Primitif.lineDDA(420, 105, 70, 205)
	put_pixel_all(res,Color("#f6ff00"))
	res = Primitif.lineDDA(420, 110, 70, 210)
	put_pixel_all(res,Color("#00ff22"))
	res = Primitif.lineDDA(420, 115, 70, 215)
	put_pixel_all(res,Color("#00e5ff"))
	res = Primitif.lineDDA(420, 120, 70, 220)
	put_pixel_all(res,Color("#f700ff"))
	
	#kanan atas 
	res = Primitif.lineDDA(450, 100, 771, 200)
	put_pixel_all(Primitif.line_style(res, 2, 3),("#ff0000"))
	res = Primitif.lineDDA(450, 105, 771, 205)
	put_pixel_all(Primitif.line_style(res, 2, 3),("#f6ff00"))
	res = Primitif.lineDDA(450, 110, 771, 210)
	put_pixel_all(Primitif.line_style(res, 2, 3),("#00ff22"))
	res = Primitif.lineDDA(450, 115, 771, 215)
	put_pixel_all(Primitif.line_style(res, 2, 3),("#00e5ff"))
	res = Primitif.lineDDA(450, 120, 771, 220)
	put_pixel_all(Primitif.line_style(res, 2, 3),("#f700ff"))
	
	#kanan bawah
	res = Primitif.lineDDA(450, 420, 771, 320)
	put_pixel_all(Primitif.line_style(res, 2, 0.5),("#ff0000"))
	res = Primitif.lineDDA(450, 415, 771, 315)
	put_pixel_all(Primitif.line_style(res, 2, 0.5),("#f6ff00"))
	res = Primitif.lineDDA(450, 410, 771, 310)
	put_pixel_all(Primitif.line_style(res, 2, 0.5),("#00ff22"))
	res = Primitif.lineDDA(450, 405, 771, 305)
	put_pixel_all(Primitif.line_style(res, 2, 0.5),("#00e5ff"))
	res = Primitif.lineDDA(450, 400, 771, 300)
	put_pixel_all(Primitif.line_style(res, 2, 0.5),("#f700ff"))
	
	#kiri bawah
	res = Primitif.lineDDA(420, 420, 70, 320)
	put_pixel_all(Primitif.line_style(res, 1, 3),("#ff0000"))
	res = Primitif.lineDDA(420, 415, 70, 315)
	put_pixel_all(Primitif.line_style(res, 1, 3),("#f6ff00"))
	res = Primitif.lineDDA(420, 410, 70, 310)
	put_pixel_all(Primitif.line_style(res, 1, 3),("#00ff22"))
	res = Primitif.lineDDA(420, 405, 70, 305)
	put_pixel_all(Primitif.line_style(res, 1, 3),("#00e5ff"))
	res = Primitif.lineDDA(420, 400, 70, 300)
	put_pixel_all(Primitif.line_style(res, 1, 3),("#f700ff"))
	

	
	
func _draw_kubik():
	var y = []
	for i in range(10):
		y.append(pow(i,3)-2*i+5)

	var res = PoolVector2Array()
	for i in range(9):
		var px = Primitif.convert_to_kartesian(x[i], y[i], x[i+1], y[i+1], margin_left, margin_top)
		print(px)
		res.append_array(Primitif.lineMidpoint(px[0], px[1], px[2], px[3]))
	
	put_pixel_all(res,Color("#32CD30"))
	print("Persamaan Garis Kubik")

func _draw_margin():
	var res = Primitif.drawMargin(margin_top, OS.window_size.x-margin_left, OS.window_size.y-margin_top, margin_left)
	put_pixel_all(res,Color("#32CD30"))
	
func _draw_grid():
	var res = Primitif.drawGrid(margin_top, OS.window_size.x-margin_left, OS.window_size.y-margin_top, margin_left)
	put_pixel_all(res,Color("#3e433f"))
	
func _draw_kartesian():
	var res = Primitif.drawKartesian(margin_top, OS.window_size.x-margin_left, OS.window_size.y-margin_top, margin_left)
	put_pixel_all(res,Color("#E51616"))


func put_pixel(x, y, color=Color("007fff")):
	draw_primitive(PoolVector2Array([Vector2(x, y)]),
		PoolColorArray([color]),
		PoolVector2Array())

func put_pixel_all(dot: PoolVector2Array, color):
	for i in dot.size():
		put_pixel(dot[i].x, dot[i].y, color)
