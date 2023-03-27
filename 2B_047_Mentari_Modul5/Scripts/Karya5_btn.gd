extends Button

onready var KL_Objek_1 = $"/root/Karya5/KaryaLayer/Objek_1"
onready var KL_Objek_2 = $"/root/Karya5/KaryaLayer/Objek_2"
onready var KL_Game = $"/root/Karya5/KaryaLayer/game"
onready var KL_Objek_4 = $"/root/Karya5/KaryaLayer/Objek_4"
onready var KL_Objek_5 = $"/root/Karya5/KaryaLayer/Objek_5"
onready var KL_Objek_6 = $"/root/Karya5/KaryaLayer/Objek_6"
onready var KL_Objek_7 = $"/root/Karya5/KaryaLayer/Objek_7"
onready var KL_Objek_8 = $"/root/Karya5/KaryaLayer/Objek_8"

func _on_Button_Next_pressed():
	if(KL_Objek_1.visible == true):
		KL_Objek_1.visible = !KL_Objek_1.visible
		KL_Objek_2.visible = !KL_Objek_2.visible
	elif(KL_Objek_2.visible == true):
		KL_Objek_2.visible = !KL_Objek_2.visible
		KL_Game.visible = !KL_Game.visible
	elif(KL_Game.visible == true):
		KL_Game.visible = !KL_Game.visible
		KL_Objek_4.visible = !KL_Objek_4.visible
	elif(KL_Objek_4.visible == true):
		KL_Objek_4.visible = !KL_Objek_4.visible
		KL_Objek_1.visible = !KL_Objek_1.visible



func _on_Button_Back_pressed():
	get_tree().change_scene("res://Scenes/Welcome.tscn")


func _on_Button_Prev_pressed():
	if(KL_Objek_1.visible == true):
		KL_Objek_1.visible = !KL_Objek_1.visible
		KL_Objek_4.visible = !KL_Objek_4.visible
	elif(KL_Objek_4.visible == true):
		KL_Objek_4.visible = !KL_Objek_4.visible
		KL_Game.visible = !KL_Game.visible
	elif(KL_Game.visible == true):
		KL_Game.visible = !KL_Game.visible
		KL_Objek_2.visible = !KL_Objek_2.visible
	elif(KL_Objek_2.visible == true):
		KL_Objek_2.visible = !KL_Objek_2.visible
		KL_Objek_1.visible = !KL_Objek_1.visible
	
