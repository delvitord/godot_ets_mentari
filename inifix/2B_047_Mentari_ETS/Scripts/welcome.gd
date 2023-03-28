extends Control

func _ready():
	pass


func _on_Btn2d_pressed():
	get_tree().change_scene("res://Scenes/Dimensi2.tscn")
	if get_tree().change_scene("res://Scenes/Dimensi2.tscn") != OK:
		print("Scene Tidak Ada")
	
	
func _on_BtnAnimasi_pressed():
	get_tree().change_scene("res://Scenes/Animasi.tscn")
	if get_tree().change_scene("res://Scenes/Animasi.tscn") != OK:
		print("Scene Tidak Ada")


func _on_BtnAbout_pressed():
	get_tree().change_scene("res://Scenes/About.tscn")
	if get_tree().change_scene("res://Scenes/About.tscn") != OK:
		print("Scene Tidak Ada")


func _on_BtnExit_pressed():
	get_tree().quit()

