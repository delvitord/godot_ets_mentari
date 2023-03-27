extends CheckButton

onready var HL_Margin = $"/root/Karya4/KaryaLayer/HelperLayer/Margin"

onready var HL_Grid = $"/root/Karya4/KaryaLayer/HelperLayer/Grid"

onready var HL_Kartesian = $"/root/Karya4/KaryaLayer/HelperLayer/Kartesian"

func _on_BtnMargin_visibility_pressed():
	HL_Margin.visible = !HL_Margin.visible

func _on_BtnGrid_visibility_pressed():
	HL_Grid.visible = !HL_Grid.visible
	
func _on_BtnKartesian_visibility_pressed():
	HL_Kartesian.visible = !HL_Kartesian.visible
