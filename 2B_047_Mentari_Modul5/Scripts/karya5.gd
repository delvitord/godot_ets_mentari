extends Node2D

var Primitif = primitif.new()
var Dasar = dasar.new()
var Circle = dasar.new()
var Trans = trans.new()
var Aini = transformasi.new()

var screen_width = OS.window_size.x 
var screen_height = OS.window_size.y

const margin_left = 50
const margin_top  = 50
var margin_right = screen_width - margin_left
var margin_bottom = screen_height - margin_top

func _ready():
	var KL_Objek_3 = $"/root/Karya5/KaryaLayer/Objek3"
	KL_Objek_3.visible = true
	

func _draw_game():
	var res = PoolVector2Array()
	var resOri = PoolVector2Array()
	
	var game = Dasar.persegipanjang(1,1,150,250,margin_left, margin_top)
	put_pixel_all(game, Color("#ff0000"))
	
	game = Dasar.persegipanjang(25, 150, 100, 80, margin_left, margin_top)
	put_pixel_all(game, Color("#ff0000"))
	
	game = Dasar.circle(165, 355, 22)
	put_pixel_all(game, Color("#ff0000"))
	
	res.append_array(Dasar.circle(90, 340, 10))
	resOri = Dasar.circle(90, 340, 10)
	var trs = Trans.translate2(0,30)
	resOri = Trans.transformPoints2(resOri, trs)
	res.append_array(resOri)
	trs = Trans.translate2(-20,-15)
	resOri = Trans.transformPoints2(resOri, trs)
	res.append_array(resOri)
	trs = Trans.translate2(40,0)
	resOri = Trans.transformPoints2(resOri, trs)
	res.append_array(resOri)
	put_pixel_all(res,Color.aquamarine)
	
	#tetris Z (translasi)
	res.append_array(Dasar.persegi(85, 162, 10, margin_left, margin_top))
	resOri = Dasar.persegi(85,162,10, margin_left, margin_top)
	trs = Trans.translate2(10,0)
	resOri = Trans.transformPoints2(resOri, trs)
	res.append_array(resOri)
	trs = Trans.translate2(0,10)
	resOri = Trans.transformPoints2(resOri, trs)
	res.append_array(resOri)
	trs = Trans.translate2(10, 0)
	resOri = Trans.transformPoints2(resOri, trs)
	res.append_array(resOri)
	put_pixel_all(res,Color.aqua)
	#kotak 4 (translasi)
	res.append_array(Dasar.persegi(115,125,10, margin_left, margin_top))
	resOri = Dasar.persegi(115,125,10, margin_left, margin_top)
	for i in 3: 
		trs = Trans.translate2(-30,0)
		resOri = Trans.transformPoints2(resOri, trs)
		res.append_array(resOri)
		put_pixel_all(res,Color.aqua)
	
	
	
	#tetris L (translasi)
	res.append_array(Dasar.persegi(30,152,10, margin_left, margin_top))
	resOri = Dasar.persegi(30,152,10, margin_left, margin_top)
	for i in 2:
		trs = Trans.translate2(10,0)
		resOri = Trans.transformPoints2(resOri, trs)
		res.append_array(resOri)
	trs = Trans.translate2(0,-10)
	resOri = Trans.transformPoints2(resOri, trs)
	res.append_array(resOri)
	
	#tetris l (2 translasi)
	res.append_array(Dasar.persegi(62,182,10, margin_left, margin_top))
	resOri = Dasar.persegi(62,182,10, margin_left, margin_top)
	for i in 3:
		trs = Trans.translate2(0,10)
		resOri = Trans.transformPoints2(resOri, trs)
		res.append_array(resOri)
		put_pixel_all(res,Color.aqua)	
	res.append_array(Dasar.persegi(102,192,10, margin_left, margin_top))
	resOri = Dasar.persegi(102,192,10, margin_left, margin_top)
	for i in 2:
		trs = Trans.translate2(0,-10)
		resOri = Trans.transformPoints2(resOri, trs)
		res.append_array(resOri)		
		put_pixel_all(res,Color.aqua)

func put_pixel(x, y, color=Color("007fff")):
	draw_primitive(PoolVector2Array([Vector2(x, y)]),
		PoolColorArray([color]),
		PoolVector2Array())

func put_pixel_all(dot: PoolVector2Array, color):
	for i in dot.size():
		put_pixel(dot[i].x, dot[i].y, color)

func _on_BtnBack_pressed():
	get_tree().change_scene("res://Scenes/Welcome.tscn")

