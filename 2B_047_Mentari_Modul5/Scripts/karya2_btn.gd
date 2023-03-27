extends Button

onready var KL_Domba = $"/root/Karya2/KaryaLayer/Domba"
onready var KL_Keranjang = $"/root/Karya2/KaryaLayer/Keranjang"
onready var KL_Woll = $"/root/Karya2/KaryaLayer/Woll"

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
		KL_Domba.visible = !KL_Domba.visible

func _on_BtnPrev_pressed():
	if(KL_Domba.visible == true):
		KL_Domba.visible = !KL_Domba.visible
		KL_Woll.visible = !KL_Woll.visible
	elif(KL_Woll.visible == true):
		KL_Woll.visible = !KL_Woll.visible
		KL_Keranjang.visible = !KL_Keranjang.visible
	elif(KL_Keranjang.visible == true):
		KL_Keranjang.visible = !KL_Keranjang.visible
		KL_Domba.visible = !KL_Domba.visible
	
