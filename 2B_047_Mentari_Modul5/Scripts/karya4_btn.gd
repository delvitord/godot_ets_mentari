extends Button

onready var KL_Circle = $"/root/Karya4/KaryaLayer/Circle"

onready var KL_Elips = $"/root/Karya4/KaryaLayer/Elips"

onready var KL_Game = $"/root/Karya4/KaryaLayer/Game"

onready var KL_Kereta = $"/root/Karya4/KaryaLayer/Kereta"

onready var KL_O2 = $"/root/Karya4/KaryaLayer/Objek2"

onready var KL_O1 = $"/root/Karya4/KaryaLayer/Objek1"

onready var KL_G2 = $"/root/Karya4/KaryaLayer/Gambar2"

onready var KL_G1 = $"/root/Karya4/KaryaLayer/Gambar1"

onready var KL_St= $"/root/Karya4/KaryaLayer/Stopan"

onready var KL_At = $"/root/Karya4/KaryaLayer/Atom"

func _on_BtnBack_pressed():
	get_tree().change_scene("res://Scenes/Welcome.tscn")


func _on_BtnNext_pressed():
	if(KL_Circle.visible == true):
		KL_Circle.visible = !KL_Circle.visible
		KL_Elips.visible = !KL_Elips.visible
	elif(KL_Elips.visible == true):
		KL_Elips.visible = !KL_Elips.visible
		KL_Game.visible = !KL_Game.visible
	elif(KL_Game.visible == true):
		KL_Game.visible = !KL_Game.visible
		KL_Kereta.visible = !KL_Kereta.visible
	elif(KL_Kereta.visible == true):
		KL_Kereta.visible = !KL_Kereta.visible
		KL_O1.visible = !KL_O1.visible
	elif(KL_O1.visible == true):
		KL_O1.visible = !KL_O1.visible
		KL_O2.visible = !KL_O2.visible	
	elif(KL_O2.visible == true):
		KL_O2.visible = !KL_O2.visible
		KL_G1.visible = !KL_G1.visible
	elif(KL_G1.visible == true):
		KL_G1.visible = !KL_G1.visible
		KL_G2.visible = !KL_G2.visible
	elif(KL_G2.visible == true):
		KL_G2.visible = !KL_G2.visible
		KL_St.visible = !KL_St.visible
	elif(KL_St.visible == true):
		KL_St.visible = !KL_St.visible
		KL_At.visible = !KL_At.visible
	elif(KL_At.visible == true):
		KL_At.visible = !KL_At.visible
		KL_Circle.visible = !KL_Circle.visible


func _on_BtnPrev_pressed():
	if(KL_Circle.visible == true):
		KL_Circle.visible = !KL_Circle.visible
		KL_At.visible = !KL_At.visible
	elif(KL_At.visible == true):
		KL_At.visible = !KL_At.visible
		KL_St.visible = !KL_St.visible
	elif(KL_St.visible == true):
		KL_St.visible = !KL_St.visible
		KL_G2.visible = !KL_G2.visible
	elif(KL_G2.visible == true):
		KL_G2.visible = !KL_G2.visible
		KL_G1.visible = !KL_G1.visible
	elif(KL_G1.visible == true):
		KL_G1.visible = !KL_G1.visible
		KL_O2.visible = !KL_O2.visible
	elif(KL_O2.visible == true):
		KL_O2.visible = !KL_O2.visible
		KL_O1.visible = !KL_O1.visible
	elif(KL_Kereta.visible == true):
		KL_Kereta.visible = !KL_Kereta.visible
		KL_Game.visible = !KL_Game.visible
	elif(KL_Game.visible == true):
		KL_Game.visible = !KL_Game.visible
		KL_Elips.visible = !KL_Elips.visible
	elif(KL_Elips.visible == true):
		KL_Elips.visible = !KL_Elips.visible
		KL_Circle.visible = !KL_Circle.visible
	elif(KL_Elips.visible == true):
		KL_Elips.visible = !KL_Elips.visible
		KL_Circle.visible = !KL_Circle.visible
		
		
		
		
		
		
