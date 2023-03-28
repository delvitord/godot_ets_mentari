extends TextureButton

onready var KL_Domba = $"/root/Dimensi2/KaryaLayer/Domba"
onready var KL_Keranjang = $"/root/Dimensi2/KaryaLayer/Keranjang"
onready var KL_Woll = $"/root/Dimensi2/KaryaLayer/Woll"
onready var KL_Alat = $"/root/Dimensi2/KaryaLayer/Alat"

func _on_BtnBack_pressed():
	get_tree().change_scene("res://Scenes/Welcome.tscn")


func _on_BtnNext_pressed():
	if(KL_Domba.visible == true):
		KL_Domba.visible = !KL_Domba.visible
		KL_Keranjang.visible = !KL_Keranjang.visible
	elif(KL_Keranjang.visible == true):
		KL_Keranjang.visible = !KL_Keranjang.visible
		KL_Woll.visible = !KL_Woll.visible
	elif(KL_Woll.visible == true):
		KL_Woll.visible = !KL_Woll.visible
		KL_Alat.visible = !KL_Alat.visible
	elif(KL_Alat.visible == true):
		KL_Alat.visible = !KL_Alat.visible
		KL_Domba.visible = !KL_Domba.visible

func _on_BtnPrev_pressed():
	if(KL_Domba.visible == true):
		KL_Domba.visible = !KL_Domba.visible
		KL_Alat.visible = !KL_Alat.visible
	elif(KL_Alat.visible == true):
		KL_Alat.visible = !KL_Alat.visible
		KL_Keranjang.visible = !KL_Keranjang.visible
	elif(KL_Keranjang.visible == true):
		KL_Keranjang.visible = !KL_Keranjang.visible
		KL_Woll.visible = !KL_Woll.visible
	elif(KL_Woll.visible == true):
		KL_Woll.visible = !KL_Woll.visible
		KL_Domba.visible = !KL_Domba.visible
	


