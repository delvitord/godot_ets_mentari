extends Control

func _ready():
	pass


func _on_BtnKarya1_pressed():
	get_tree().change_scene("res://Scenes/Karya1.tscn")
	if get_tree().change_scene("res://Scenes/Karya1.tscn") != OK:
		print("Scene Tidak Ada")
	
	
func _on_BtnKarya2_pressed():
	get_tree().change_scene("res://Scenes/Karya2.tscn")
	if get_tree().change_scene("res://Scenes/Karya2.tscn") != OK:
		print("Scene Tidak Ada")


func _on_BtnAbout_pressed():
	get_tree().change_scene("res://Scenes/About.tscn")
	if get_tree().change_scene("res://Scenes/About.tscn") != OK:
		print("Scene Tidak Ada")

func _on_BtnQuis_pressed():
	get_tree().change_scene("res://Scenes/Quiz.tscn")
	if get_tree().change_scene("res://Scenes/Quis.tscn") != OK:
		print("Scene Tidak Ada")


func _on_BtnGuide_pressed():
	get_tree().change_scene("res://Scenes/Guide.tscn")
	if get_tree().change_scene("res://Scenes/Guide.tscn") != OK:
		print("Scene Tidak Ada")


func _on_BtnExit_pressed():
	get_tree().quit()


func _on_BtnKarya3_pressed():
	get_tree().change_scene("res://Scenes/Karya3.tscn")
	if get_tree().change_scene("res://Scenes/Karya3.tscn") != OK:
		print("Scene Tidak Ada")
		
func _on_BtnKarya4_pressed():
	get_tree().change_scene("res://Scenes/Karya4.tscn")
	if get_tree().change_scene("res://Scenes/Karya4.tscn") != OK:
		print("Scene Tidak Ada")
