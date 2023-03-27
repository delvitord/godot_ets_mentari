extends Node2D

var Primitif = primitif.new()
var Dasar = dasar.new()
var Trans = trans.new()
var theMatrix = [[0,0,0],[0,0,0],[0,0,0]]
var Transformasi = transformasi.new()

export var margin_left = 50
export var margin_top  = 50

func _ready():
	var KL_Domba = $"/root/Karya2/KaryaLayer/Domba"
	KL_Domba.visible = true

var res = PoolVector2Array()
var resOri = PoolVector2Array()
var tpx = 0
var tpy = 0
var rb = 80
var derajat = 30
var r = 25
var rs = 8
	
var px = Primitif.convert_to_kartesian(0, 0,100,-100, margin_left, margin_top)

func _draw_domba():
	draw_circle(Vector2(px[0]-tpx, px[1]-tpy), rb, Color.aliceblue)	
	var bulu = Dasar.circle(px[0]-(tpx-rb), px[1]-tpy,30)
	derajat = 30
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
	
	var alat = Dasar.persegipanjang(px[0]+tpx, px[1]+tpy, 10, 15, margin_left, margin_top)
	put_pixel_all(alat, Color.blueviolet)
	



func _draw_woll():
	var rxw = 30
	var ryw = 15
	
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
	


func _draw_keranjang():
	var keranjang = Dasar.ellipse(px[0]+tpx, px[1]-(tpy-50), 100, 20)
	put_pixel_all(keranjang, Color.pink)
	keranjang = Primitif.lineDDA(px[0]+(tpx+100), px[1], px[0]+(tpx+80), px[1]+70)
	put_pixel_all(keranjang, Color.pink)
	keranjang = Primitif.lineDDA(px[0]+(tpx-100), px[1], px[0]+(tpx-80), px[1]+70)
	put_pixel_all(keranjang, Color.pink)
	keranjang = Dasar.ellipse(px[0]+tpx, px[1]-(tpy-120), 80, 10)
	put_pixel_all(keranjang, Color.pink)
	keranjang = Dasar.persegipanjang(px[0]+(tpx+80), px[1]-(tpy+45), 15, 50, margin_left, margin_top)
	put_pixel_all(Trans.rotate2d(px[0]+(tpx+80), px[1]-(tpy+45), keranjang, 18),Color.pink)
	keranjang = Dasar.persegipanjang(px[0]+(tpx-205), px[1]-(tpy+85), 15, 50, margin_left, margin_top)
	put_pixel_all(Trans.rotate2d(px[0]+(tpx-205), px[1]-(tpy+85), keranjang, (360-16)),Color.pink)
	

func draw_pencukur():
	var alat = Dasar.persegipanjang(px[0]+tpx, px[1]+tpy, 10, 15, margin_left, margin_top)
	put_pixel_all(alat, Color.blueviolet)
	
	
func put_pixel(x, y, color=Color("007fff")):
	draw_primitive(PoolVector2Array([Vector2(x, y)]),
		PoolColorArray([color]),
		PoolVector2Array())
		
func put_pixel_all(dot: PoolVector2Array, color):
	for i in dot.size():
		put_pixel(dot[i].x, dot[i].y, color)



