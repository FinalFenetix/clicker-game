extends TextureButton



func _on_pressed() -> void: # On self pressed
	Global.coins += Global.coinsPerPress
