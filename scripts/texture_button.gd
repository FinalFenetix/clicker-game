extends TextureButton



func _on_pressed() -> void: # On self pressed
	Global.coins += Global.coinsPerPress

func _process(delta: float) -> void:
	if Global.buttonSkin == 0:
		show()
	else:
		hide()
