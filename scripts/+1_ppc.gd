extends TextureButton
@export var originalCost: float = 20
var currentCost: float = originalCost * Global.inflationCost
var inflationCost:= 1.0

func _process(delta: float) -> void:
	currentCost = originalCost * inflationCost
	currentCost = round(currentCost * 10) / 10

func _on_pressed() -> void:
	if Global.coins >= currentCost:
		Global.coins -= currentCost
		Global.coinsPerPress += 1
		Global.inflationCost += currentCost * 0.0050
		inflationCost += currentCost * 0.0050
		inflationCost = round(inflationCost * 10) / 10
