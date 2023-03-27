extends Node2D

var Primitif = primitif.new()
var Dasar = dasar.new()
var Trans = trans.new()

var screen_width = OS.window_size.x 
var screen_height = OS.window_size.y
var x = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

const margin_left = 50
const margin_top  = 50
var margin_right = screen_width - margin_left
var margin_bottom = screen_height - margin_top
		

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.

func _ready():
	var KL_Circle = $"/root/Karya4/KaryaLayer/Circle"
	KL_Circle.visible = true
	
func _draw_lingkaran():
	var px = Primitif.convert_to_kartesian(0,0,0,0, margin_left, margin_top)
	var lingkaran = Dasar.circle(px[0], px[1], 100)
	put_pixel_all(Primitif.line_style(lingkaran, 1,  3),Color("#fc0317"))

	lingkaran = Dasar.circle(px[0], px[1], 95)
	put_pixel_all(Primitif.line_style(lingkaran, 2,  3),Color("#03ecfc"))
	
	lingkaran = Dasar.circle(px[0], px[1], 90)
	put_pixel_all(Primitif.line_style(lingkaran, 1,  3),Color("#32CD30"))

	lingkaran = Dasar.circle(px[0], px[1], 85)
	put_pixel_all(Primitif.line_style(lingkaran, 2,  3),Color("#03ecfc"))
	
	lingkaran = Dasar.circle(px[0], px[1], 80)
	put_pixel_all(Primitif.line_style(lingkaran, 1,  3),Color("#32CD30"))
	
	lingkaran = Dasar.circle(px[0], px[1], 75)
	put_pixel_all(Primitif.line_style(lingkaran, 2,  3),Color("#03ecfc"))
	
	lingkaran = Dasar.circle(px[0], px[1], 70)
	put_pixel_all(Primitif.line_style(lingkaran, 1,  3),Color("#32CD30"))
	
	lingkaran = Dasar.circle(px[0], px[1], 65)
	put_pixel_all(Primitif.line_style(lingkaran, 2,  3),Color("#03ecfc"))
	
	lingkaran = Dasar.circle(px[0], px[1], 60)
	put_pixel_all(Primitif.line_style(lingkaran, 1,  3),Color("#32CD30"))
	
	lingkaran = Dasar.circle(px[0], px[1], 55)
	put_pixel_all(Primitif.line_style(lingkaran, 2,  3),Color("#03ecfc"))
	
	lingkaran = Dasar.circle(px[0], px[1], 50)
	put_pixel_all(Primitif.line_style(lingkaran, 1,  3),Color("#32CD30"))
	
	lingkaran = Dasar.circle(px[0], px[1], 45)
	put_pixel_all(Primitif.line_style(lingkaran, 2,  3),Color("#03ecfc"))
	
	lingkaran = Dasar.circle(px[0], px[1], 40)
	put_pixel_all(Primitif.line_style(lingkaran, 1,  3),Color("#32CD30"))
	
	lingkaran = Dasar.circle(px[0], px[1], 35)
	put_pixel_all(Primitif.line_style(lingkaran, 2,  3),Color("#03ecfc"))
		
	lingkaran = Dasar.circle(px[0], px[1], 30)
	put_pixel_all(Primitif.line_style(lingkaran, 1,  3),Color("#32CD30"))
	
	lingkaran = Dasar.circle(px[0], px[1], 25)
	put_pixel_all(Primitif.line_style(lingkaran, 2,  3),Color("#fc0317"))
	
	
	lingkaran = Dasar.circle(px[0], px[1], 20)
	put_pixel_all(Primitif.line_style(lingkaran, 1,  3),Color("#03ecfc"))
	
	lingkaran = Dasar.circle(px[0], px[1], 15)
	put_pixel_all(Primitif.line_style(lingkaran, 2,  3),Color("#32CD30"))
	
	lingkaran = Dasar.circle(px[0], px[1], 10)
	put_pixel_all(Primitif.line_style(lingkaran, 1,  3),Color("#03ecfc"))
	
	lingkaran = Dasar.circle(px[0], px[1], 5)
	put_pixel_all(Primitif.line_style(lingkaran, 2,  3),Color("#32CD30"))
	
	lingkaran = Dasar.circle(px[0], px[1], 2)
	put_pixel_all(Primitif.line_style(lingkaran, 1,  3),Color("#03ecfc"))
	
	var a = 200
	px = Primitif.convert_to_kartesian(-200,100,0,0,margin_left, margin_top)
	var circleOri = Dasar.circle(px[0],px[1], 70)
	for i in range (2):
	
		Trans.translate2(a, 0, circleOri)
		var circlePool = Trans.transformPoints2(circleOri.size(), circleOri)  
		circlePool.append_array(circleOri)
		a+= 200
		put_pixel_all(circlePool,Color.antiquewhite)
		
	a = 200
	px = Primitif.convert_to_kartesian(-200,-100,0,0,margin_left, margin_top)
	circleOri = Dasar.circle(px[0],px[1], 70)
	for i in range (2):
		#Trans.matrix3x3SetIdentity(theMatrix)
		Trans.translate2(a, 0, circleOri)
		var circlePool = Trans.transformPoints2(circleOri.size(), circleOri)  
		circlePool.append_array(circleOri)
		a+= 200
		put_pixel_all(circlePool,Color.antiquewhite)

func _draw_elips():
	var bukir = Dasar.circle(150,250,10)
	put_pixel_all(bukir, Color("#031cfc"))
	bukir = Dasar.ellipse(150,190,20,60)
	put_pixel_all(bukir, Color("#ff0000"))
	bukir = Dasar.ellipse(150,310,20,60)
	put_pixel_all(bukir, Color("#ff0000"))
	bukir = Dasar.ellipse(210,250,60, 20)
	put_pixel_all(bukir, Color("#ff0000"))	
	bukir = Dasar.ellipse(90,250, 60, 20)
	put_pixel_all(bukir, Color("#ff0000"))
	
	
	var buteng = Dasar.circle(360,240,10)
	put_pixel_all(buteng, Color("#031cfc"))
	
	var px = Primitif.convert_to_kartesian(45,45,-45,45,margin_left,margin_top)
	put_pixel_all(Trans.rotate2d(px[0], px[1], (Dasar.ellipse(px[0],px[1], 60, 30)), 135),Color("#ff0000"))
	put_pixel_all(Trans.rotate2d(px[2], px[3], (Dasar.ellipse(px[2],px[3], 60, 30)), 45),Color("#ff0000"))
	
	px = Primitif.convert_to_kartesian(45,-45,-45,-45,margin_left,margin_top)
	put_pixel_all(Trans.rotate2d(px[0], px[1], (Dasar.ellipse(px[0],px[1], 60, 30)), 45),Color("#ff0000"))
	put_pixel_all(Trans.rotate2d(px[2], px[3], (Dasar.ellipse(px[2],px[3], 60, 30)), 135),Color("#ff0000"))
	
	
	var bukan = Dasar.circle(555,245.5,10)
	put_pixel_all(bukan, Color("#031cfc"))
	bukan = Dasar.ellipse(555,185.5,20,60)
	put_pixel_all(bukan, Color("#ff0000"))
	bukan = Dasar.ellipse(555,305.5,20,60)
	put_pixel_all(bukan, Color("#ff0000"))
	bukan = Dasar.ellipse(615,245.5,60, 20)
	put_pixel_all(bukan, Color("#ff0000"))	
	bukan = Dasar.ellipse(495,245.5, 60, 20)
	put_pixel_all(bukan, Color("#ff0000"))
	
	px = Primitif.convert_to_kartesian(220,25,170,25,margin_left,margin_top)
	put_pixel_all(Trans.rotate2d(px[0], px[1], (Dasar.ellipse(px[0],px[1], 30, 15)), 135),Color("#ff0000"))
	put_pixel_all(Trans.rotate2d(px[2], px[3], (Dasar.ellipse(px[2],px[3], 30, 15)), 45),Color("#ff0000"))
	
	px = Primitif.convert_to_kartesian(220,-25,170,-25,margin_left,margin_top)
	put_pixel_all(Trans.rotate2d(px[0], px[1], (Dasar.ellipse(px[0],px[1], 30, 15)), 45),Color("#ff0000"))
	put_pixel_all(Trans.rotate2d(px[2], px[3], (Dasar.ellipse(px[2],px[3], 30, 15)), 135),Color("#ff0000"))

func _draw_game():
	var game = Dasar.persegipanjang(1,1,150,250,margin_left, margin_top)
	put_pixel_all(game, Color("#ff0000"))
	
	game = Dasar.persegipanjang(25, 150, 100, 80, margin_left, margin_top)
	put_pixel_all(game, Color("#ff0000"))
	
	game = Dasar.circle(165, 355, 22)
	put_pixel_all(game, Color("#ff0000"))
	
	game = Dasar.circle(90, 340, 10)
	put_pixel_all(game, Color("#ff0000"))
	game = Dasar.circle(90, 370, 10)
	put_pixel_all(game, Color("#ff0000"))
	game = Dasar.circle(70, 355, 10)
	put_pixel_all(game, Color("#ff0000"))
	game = Dasar.circle(110, 355, 10)
	put_pixel_all(game, Color("#ff0000"))
	
	game = Dasar.persegi(115,125,10,margin_left, margin_top)
	put_pixel_all(game, Color("#ff0000"))
	game = Dasar.persegi(85,125,10,margin_left, margin_top)
	put_pixel_all(game, Color("#ff0000"))
	game = Dasar.persegi(55,125,10,margin_left, margin_top)
	put_pixel_all(game, Color("#ff0000"))
	game = Dasar.persegi(25,125,10,margin_left, margin_top)
	put_pixel_all(game, Color("#ff0000"))
	
	game = Dasar.persegi(75,150,10,margin_left, margin_top)
	put_pixel_all(game, Color("#ff0000"))
	game = Dasar.persegi(85,150,10,margin_left, margin_top)
	put_pixel_all(game, Color("#ff0000"))
	game = Dasar.persegi(85,160,10,margin_left, margin_top)
	put_pixel_all(game, Color("#ff0000"))
	game = Dasar.persegi(95,160,10,margin_left, margin_top)
	put_pixel_all(game, Color("#ff0000"))
	
	game = Dasar.persegi(30,150,10,margin_left, margin_top)
	put_pixel_all(game, Color("#ff0000"))
	game = Dasar.persegi(40,150,10,margin_left, margin_top)
	put_pixel_all(game, Color("#ff0000"))
	game = Dasar.persegi(50,150,10,margin_left, margin_top)
	put_pixel_all(game, Color("#ff0000"))
	game = Dasar.persegi(50,160,10,margin_left, margin_top)
	put_pixel_all(game, Color("#ff0000"))

	game = Dasar.persegi(62,180,10,margin_left, margin_top)
	put_pixel_all(game, Color("#ff0000"))
	game = Dasar.persegi(62,190,10,margin_left, margin_top)
	put_pixel_all(game, Color("#ff0000"))
	game = Dasar.persegi(72,190,10,margin_left, margin_top)
	put_pixel_all(game, Color("#ff0000"))
	game = Dasar.persegi(72,200,10,margin_left, margin_top)
	put_pixel_all(game, Color("#ff0000"))
	
	game = Dasar.persegi(105, 190,10,margin_left, margin_top)
	put_pixel_all(game, Color("#ff0000"))
	game = Dasar.persegi(105,200,10,margin_left, margin_top)
	put_pixel_all(game, Color("#ff0000"))
	game = Dasar.persegi(105,210,10,margin_left, margin_top)
	put_pixel_all(game, Color("#ff0000"))
	
	

func _draw_kereta():
	var kereta = Dasar.segitigasiku(400,195,30,30,margin_left, margin_top)
	put_pixel_all(kereta, Color("#ff0000"))
	
	kereta = Dasar.persegipanjang(300, 200, 100, 80, margin_left, margin_top)
	put_pixel_all(kereta, Color("#ff0000"))
	kereta = Dasar.persegipanjang(400,240, 7, 30, margin_left, margin_top)
	put_pixel_all(kereta, Color("#ff0000"))
	kereta = Dasar.persegipanjang(225,200 ,75, 140,margin_left, margin_top)
	put_pixel_all(kereta, Color("#ff0000"))
	kereta = Dasar.persegipanjang(235, 280, 55, 50,margin_left, margin_top)
	put_pixel_all(kereta, Color("#ff0000"))
	kereta = Dasar.persegipanjang(370, 280, 20,50,margin_left, margin_top)
	put_pixel_all(kereta, Color("#ff0000"))
	
	kereta = Dasar.persegipanjang(205, 200, 20, 10,margin_left, margin_top)
	put_pixel_all(kereta, Color("#ff0000"))
	kereta = Dasar.persegipanjang(125, 200, 80,50,margin_left, margin_top)
	put_pixel_all(kereta, Color("#ff0000"))
	
	kereta = Dasar.persegipanjang(105, 200, 20, 10,margin_left, margin_top)
	put_pixel_all(kereta, Color("#ff0000"))
	kereta = Dasar.persegipanjang(25, 200, 80,50,margin_left, margin_top)
	put_pixel_all(kereta, Color("#ff0000"))
	
	kereta = Dasar.circle(400, 230,20)
	put_pixel_all(kereta, Color("#ff0000"))
	kereta = Dasar.circle(310, 230,20)
	put_pixel_all(kereta, Color("#ff0000"))
	kereta = Dasar.circle(210, 230,20)
	put_pixel_all(kereta, Color("#ff0000"))
	kereta = Dasar.circle(115, 230,20)
	put_pixel_all(kereta, Color("#ff0000"))
	





		
func _draw_stopan():
	var res = Dasar.persegipanjang(410,25,100,30,margin_left, margin_top)
	put_pixel_all(res,Color("000000"))
	
	res = Dasar.persegipanjang(400,125,175,50,margin_left, margin_top)
	put_pixel_all(res,Color("000000"))
	
	res = Dasar.circle(475,485,20)
	put_pixel_all(res,Color("#FF0000"))
	
	res = Dasar.circle(475,535,20)
	put_pixel_all(res,Color("#FFA500"))
	
	res = Dasar.circle(475,585,20)
	put_pixel_all(res,Color("#32CD30"))
	
func _draw_atom():
	var res = Dasar.circle(200,200,5)
	put_pixel_all(res,Color("#32CD30"))
	var r = 10
	for i in range(3):
		r += 20
		res = Dasar.circle(200,200,r)
		put_pixel_all(res,Color("000000"))
	
	res = Dasar.circle(200,170,4)
	put_pixel_all(res,Color("#FF0000"))
		
	res = Dasar.circle(230,240,4)
	put_pixel_all(res,Color("#FF0000"))
	
	res = Dasar.circle(230,200,4)
	put_pixel_all(res,Color("#FF0000"))
	
	res = Dasar.circle(130,200,4)
	put_pixel_all(res,Color("#FF0000"))





























































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
