extends TextureButton

func _process(delta: float) -> void:
	if Global.buttonSkin == 1:
		show()
	else:
		hide()

func _on_pressed() -> void:
	Global.coins += Global.coinsPerPress
