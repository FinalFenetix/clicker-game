extends Button


func _on_pressed() -> void:
	if Global.coins >= 50:
		Global.coins -= 50
		Global.coinsperpress += 1
