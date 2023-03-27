extends Button

onready var KL_FnLinear = $"/root/Karya1/KaryaLayer/FnLinear"

onready var KL_FnKuadratik = $"/root/Karya1/KaryaLayer/FnKuadratik"

onready var KL_FnKubik = $"/root/Karya1/KaryaLayer/FnKubik"

func _on_BtnBack_pressed():
	get_tree().change_scene("res://Scenes/Welcome.tscn")
	if get_tree().change_scene("res://Scenes/Welcome.tscn") != OK:
		print("Scene Tidak Ada")


func _on_BtnNext_pressed():
	if(KL_FnLinear.visible == true):
		KL_FnLinear.visible = !KL_FnLinear.visible
		KL_FnKuadratik.visible = !KL_FnKuadratik.visible
	elif(KL_FnKuadratik.visible == true):
		KL_FnKuadratik.visible = !KL_FnKuadratik.visible
		KL_FnKubik.visible = !KL_FnKubik.visible
	elif(KL_FnKubik.visible == true):
		KL_FnKubik.visible = !KL_FnKubik.visible
		KL_FnLinear.visible = !KL_FnLinear.visible

func _on_BtnPrev_pressed():
	if(KL_FnLinear.visible == true):
		KL_FnLinear.visible = !KL_FnLinear.visible
		KL_FnKubik.visible = !KL_FnKubik.visible
	elif(KL_FnKuadratik.visible == true):
		KL_FnKuadratik.visible = !KL_FnKuadratik.visible
		KL_FnLinear.visible = !KL_FnLinear.visible
	elif(KL_FnKubik.visible == true):
		KL_FnKubik.visible = !KL_FnKubik.visible
		KL_FnKuadratik.visible = !KL_FnKuadratik.visible
