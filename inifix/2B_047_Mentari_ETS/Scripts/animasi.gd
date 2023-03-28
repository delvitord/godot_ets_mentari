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
var res = PoolVector2Array()
var resOri = PoolVector2Array()

var trs = 1
var rot = 1

func _process(delta): 
	#menggerakkan objek menggunakan delta waktu
	if (trs < 240):
		trs += 5
		update()

func _ready():
	var KL_Domba = $"/root/Animasi/karyaLayer/Domba"
	KL_Domba.visible = true
	
	
var tpx = 150
var tpy = 50
var rb = 80
var derajat = 30
var r = 25
var rs = 8

func _draw_domba():
	var px = Primitif.convert_to_kartesian(0, 0,100,-100, margin_left, margin_top)
	draw_circle(Vector2(px[0]-tpx, px[1]-tpy), rb, Color.aliceblue)
	derajat = 30
	var bulu = Dasar.circle(px[0]-(tpx-rb), px[1]-tpy,30)
	for i in 9:
		put_pixel_all(Trans.rotate2d(px[0]-tpx, px[1]-tpy, bulu, derajat),Color.aliceblue)
		for j in 2: #ubah jadi 15
			put_pixel_all(Trans.rotate2d(px[0]-tpx, px[1]-tpy, Dasar.circle(px[0]-(tpx-rb), px[1]-tpy,r), derajat),Color.aliceblue)
			r -= 2
		r = 30
		derajat -= 30
	derajat = 30
	
	var bulus = Dasar.circle(px[0]-(tpx-(rb+15)), px[1]-(tpy+25),10)
	put_pixel_all(bulus, Color.azure)
	for i in 8:
		put_pixel_all(Trans.rotate2d(px[0]-tpx, px[1]-tpy, bulus, derajat),Color.azure)
		#put_pixel_all(Trans.translate2(0, trs, ))
		for j in 6:
			put_pixel_all(Trans.rotate2d(px[0]-tpx, px[1]-tpy, Dasar.circle(px[0]-(tpx-(rb+15)), px[1]-(tpy+25),rs), derajat),Color.azure)
			rs -= 2
		rs = 8
		derajat -= 30
			
			
	var rk = 30
	var kepala = Dasar.circle(px[0]-tpx, px[1]-tpy, rk)
	put_pixel_all(kepala, Color.peachpuff)
	for ki in 2: #ubah jadi 28
		put_pixel_all(Dasar.circle(px[0]-tpx, px[1]-tpy, rk), Color.peachpuff)
		rk -= 1
	
	#kepala
	draw_circle(Vector2(px[0]-tpx, px[1]-(tpy-20)), rk, Color.gray)
	#mata
	draw_circle(Vector2(px[0]-(tpx+8), px[1]-(tpy-18)), 4, Color.azure) 
	draw_circle(Vector2(px[0]-(tpx+8), px[1]-(tpy-18)), 2, Color.black) 
	draw_circle(Vector2(px[0]-(tpx-8), px[1]-(tpy-18)), 4, Color.azure)
	draw_circle(Vector2(px[0]-(tpx-8), px[1]-(tpy-18)), 2, Color.black)
	
	
	var rtl = 8
	var rtp = 4
	
	var telinga = Dasar.ellipse(px[0]-(tpx+30), px[1]-(tpy-5), 10, 5)
	put_pixel_all(Trans.rotate2d(px[0]-(tpx+30), px[1]-(tpy-5), telinga, 30),Color.black)
	for it in 4: #ubah jadi 4
		put_pixel_all(Trans.rotate2d(px[0]-(tpx+30), px[1]-(tpy-5), Dasar.ellipse(px[0]-(tpx+30), px[1]-(tpy-5), rtl, rtp), 30),Color.black)
		rtl -= 2
		rtp -= 1
	rtl = 8
	rtp = 4
	var telingak = Dasar.ellipse(px[0]-(tpx-30), px[1]-(tpy-5), 10, 5)
	put_pixel_all(Trans.rotate2d(px[0]-(tpx-30), px[1]-(tpy-5), telingak, 330),Color.black)
	for itk in 4: #ubah jadi 4
		put_pixel_all(Trans.rotate2d(px[0]-(tpx-30), px[1]-(tpy-5), Dasar.ellipse(px[0]-(tpx-30), px[1]-(tpy-5), rtl, rtp), 330),Color.black)
		rtl -= 2
		rtp -= 1

	
	var kaki = Dasar.persegipanjang(px[0]-(tpx+83), px[1]-(tpy+55), 13, 30, margin_left, margin_top)
	put_pixel_all(kaki, Color.antiquewhite)	
	draw_circle(Vector2(px[0]-(tpx+26), px[1]-(tpy-108)), 6.5, Color.black)
	kaki = Dasar.persegipanjang(px[0]-(tpx+33), px[1]-(tpy+55), 13, 30, margin_left, margin_top)
	put_pixel_all(kaki, Color.antiquewhite)	
	draw_circle(Vector2(px[0]-(tpx-24), px[1]-(tpy-108)), 6.5, Color.black)
	
	var res = PoolVector2Array()
	var resOri = PoolVector2Array()
	var bulu1 = PoolVector2Array()
	var bulu2 = PoolVector2Array()
	var bulu3 = PoolVector2Array()
	var bulu4 = PoolVector2Array()
	var bulu5 = PoolVector2Array()
	
	px = Primitif.convert_to_kartesian(-150, 50, 100, 100, margin_left, margin_top) 
	bulu1 = Dasar.circle(px[0], px[1], 20)
	var trss = Trans.translate2(-90,0+trs)
	bulu1 = Trans.transformPoints2(bulu1, trss)
	res.append_array(bulu1)
	put_pixel_all(res,Color.floralwhite)
	
	bulu2 = Dasar.circle(px[0], px[1], 20)
	trss = Trans.translate2(90,0+trs)
	bulu2 = Trans.transformPoints2(bulu2, trss)
	res.append_array(bulu2)
	put_pixel_all(res,Color.floralwhite)
	
	bulu3 = Dasar.circle(px[0], px[1], 20)
	trss = Trans.translate2(0,-90+trs)
	bulu3 = Trans.transformPoints2(bulu3, trss)
	res.append_array(bulu3)
	put_pixel_all(res,Color.floralwhite)
	
	bulu4 = Dasar.circle(px[0], px[1], 20)
	trss = Trans.translate2(-50,-50+trs)
	bulu4 = Trans.transformPoints2(bulu4, trss)
	res.append_array(bulu4)
	put_pixel_all(res,Color.floralwhite)
	
	bulu5 = Dasar.circle(px[0], px[1], 20)
	trss = Trans.translate2(50,-50+trs)
	bulu5 = Trans.transformPoints2(bulu5, trss)
	res.append_array(bulu5)
	put_pixel_all(res,Color.floralwhite)
	
	bulu1 = Dasar.circle(px[0], px[1], 10)
	trss = Trans.translate2(-70,0+trs)
	bulu1 = Trans.transformPoints2(bulu1, trss)
	res.append_array(bulu1)
	put_pixel_all(res,Color.floralwhite)
	
	bulu2 = Dasar.circle(px[0], px[1], 10)
	trss = Trans.translate2(70,0+trs)
	bulu2 = Trans.transformPoints2(bulu2, trss)
	res.append_array(bulu2)
	put_pixel_all(res,Color.floralwhite)
	
	bulu3 = Dasar.circle(px[0], px[1], 10)
	trss = Trans.translate2(0,-70+trs)
	bulu3 = Trans.transformPoints2(bulu3, trss)
	res.append_array(bulu3)
	put_pixel_all(res,Color.floralwhite)
	
	bulu4 = Dasar.circle(px[0], px[1], 10)
	trss = Trans.translate2(-30,-30+trs)
	bulu4 = Trans.transformPoints2(bulu4, trss)
	res.append_array(bulu4)
	put_pixel_all(res,Color.floralwhite)
	
	
	bulu5 = Dasar.circle(px[0], px[1], 10)
	trss = Trans.translate2(30,-50+trs)
	bulu5 = Trans.transformPoints2(bulu5, trss)
	res.append_array(bulu5)
	put_pixel_all(res,Color.floralwhite)
	
	
	bulu1 = Dasar.circle(px[0], px[1], 10)
	trss = Trans.translate2(-35,0+trs)
	bulu1 = Trans.transformPoints2(bulu1, trss)
	res.append_array(bulu1)
	put_pixel_all(res,Color.floralwhite)
	
	bulu2 = Dasar.circle(px[0], px[1], 10)
	trss = Trans.translate2(35,0+trs)
	bulu2 = Trans.transformPoints2(bulu2, trss)
	res.append_array(bulu2)
	put_pixel_all(res,Color.floralwhite)
	
	bulu3 = Dasar.circle(px[0], px[1], 10)
	trss = Trans.translate2(0,-35+trs)
	bulu3 = Trans.transformPoints2(bulu3, trss)
	res.append_array(bulu3)
	put_pixel_all(res,Color.floralwhite)

	
func _draw_woll():
	#Bola woll
	var rxw = 30
	var ryw = 15
	
	var px = Primitif.convert_to_kartesian(0, 0,100,-100, margin_left, margin_top)
	draw_circle(Vector2(px[0]+tpx+100, px[1]),30, Color.aqua)
	var bolawoll = Dasar.ellipse(px[0]+tpx+100, px[1], rxw, ryw)
	for i in 6:
		var trs = Trans.rotate2d(px[0]-tpx, px[1]-tpy, bolawoll, derajat)
		for ii in 5:
			put_pixel_all(Trans.rotate2d(px[0]+tpx+100, px[1], Dasar.ellipse(px[0]+tpx+100, px[1], rxw, ryw), derajat),Color.blue)
			rxw -= 1
			ryw -= 1
		rxw = 30
		ryw = 15
		derajat -= 30
		
	draw_circle(Vector2(px[0]+tpx, px[1]),30, Color.gray)
	bolawoll = Dasar.ellipse(px[0]+tpx, px[1], rxw, ryw)
	for i in 6:
		var trs = Trans.rotate2d(px[0]-tpx, px[1]-tpy, bolawoll, derajat)
		for ii in 5:
			put_pixel_all(Trans.rotate2d(px[0]+tpx, px[1], Dasar.ellipse(px[0]+tpx, px[1], rxw, ryw), derajat),Color.white)
			rxw -= 1
			ryw -= 1
		rxw = 30
		ryw = 15
		derajat -= 30
	
	draw_circle(Vector2(px[0]+tpx+50, px[1]+50),30, Color.pink)
	bolawoll = Dasar.ellipse(px[0]+tpx+50, px[1]+50, rxw, ryw)
	for i in 6:
		var trs = Trans.rotate2d(px[0]-tpx, px[1]-tpy, bolawoll, derajat)
		for ii in 5:
			put_pixel_all(Trans.rotate2d(px[0]+tpx+50, px[1]+50, Dasar.ellipse(px[0]+tpx+50, px[1]+50, rxw, ryw), derajat),Color.red)
			rxw -= 1
			ryw -= 1
		rxw = 30
		ryw = 15
		derajat -= 30
	
	draw_circle(Vector2(px[0]+tpx+50, px[1]-50),30, Color.aquamarine)
	bolawoll = Dasar.ellipse(px[0]+tpx+50, px[1]-50, rxw, ryw)
	for i in 6:
		var trs = Trans.rotate2d(px[0]-tpx, px[1]-tpy, bolawoll, derajat)
		for ii in 5:
			put_pixel_all(Trans.rotate2d(px[0]+tpx+50, px[1]-50, Dasar.ellipse(px[0]+tpx+50, px[1]-50, rxw, ryw), derajat),Color.darkgreen)
			rxw -= 1
			ryw -= 1
		rxw = 30
		ryw = 15
		derajat -= 30

	
	
func _draw_keranjang():
	var px = Primitif.convert_to_kartesian(-150, -100, 100, 100, margin_left, margin_top)
	tpx = 0 
	tpy = 0
	
	var keranjang = Dasar.ellipse(px[0]+tpx, px[1]-(tpy-50), 100, 20)
	put_pixel_all(keranjang, Color.pink)
	keranjang = Primitif.lineDDA(px[0]+(tpx+100), px[1]-(tpy-50), px[0]+(tpx+80), px[1]-(tpy-120))
	put_pixel_all(keranjang, Color.pink)
	keranjang = Primitif.lineDDA(px[0]+(tpx-100), px[1]-(tpy-50), px[0]+(tpx-80), px[1]-(tpy-120))
	put_pixel_all(keranjang, Color.pink)
	keranjang = Dasar.ellipse(px[0]+tpx, px[1]-(tpy-120), 80, 10)
	put_pixel_all(keranjang, Color.pink)
	
	var resk = PoolVector2Array()
	var krj_bawah = PoolVector2Array()
	keranjang = Dasar.ellipse(px[0]-tpx, px[1]-(tpy-85), 100, 20)
	var trss = Trans.scale2(0.9, 0.8, Vector2(px[0]+tpx, px[1]-(tpy-120)))
	krj_bawah = Trans.transformPoints2(keranjang, trss)
	resk.append_array(krj_bawah)
	put_pixel_all(resk,Color.pink)
	
#func _draw_alat():
#	var trAlat = PoolVector2Array()
#	var alat = PoolVector2Array()
#	var rAlat = PoolVector2Array()
	
#	var px = Primitif.convert_to_kartesian(0, 250, 0, 100, margin_left, margin_top) 
#	alat = Dasar.persegipanjang(px[0], px[1], 60, 20, margin_left, margin_top)
#	trAlat = Trans.translate2(-25, -300)
#	alat = Trans.transformPoints2(alat, trAlat)
#	rAlat.append_array(alat)
#	put_pixel_all(rAlat,Color.floralwhite)
	
	
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

