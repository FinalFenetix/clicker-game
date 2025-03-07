extends Button
@export var originalCost: float = 100000
var currentCost: float = originalCost * Global.inflationCost
var inflationCost:= 1.0


func _process(delta: float) -> void:
	currentCost = originalCost * inflationCost
	currentCost = round(currentCost * 10) / 10
	text = "Close all windows \n +225 coins per click \n cost: " + str(currentCost)


func _on_pressed() -> void:
	if Global.coins >= currentCost:
		Global.coins -= currentCost
		Global.coinsPerPress += 225
		Global.inflationCost += currentCost * 0.0015
		inflationCost += currentCost * 0.0015
		inflationCost = round(inflationCost * 10) / 10
