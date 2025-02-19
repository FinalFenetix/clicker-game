extends Button

@export var originalCost: float = 250000
var currentCost: float = originalCost * Global.inflationCost
var inflationCost:= 1.0


func _process(delta: float) -> void:
	currentCost = originalCost * inflationCost
	currentCost = round(currentCost * 10) / 10
	text = "Multiple cursors! \n +100 per second! \n cost: " + str(currentCost)

func _on_pressed() -> void:
	if Global.coins >= currentCost:
		Global.coins -= currentCost
		Global.coinsPerSecond += 100
		Global.inflationCost += currentCost * 0.0015
		inflationCost += currentCost * 0.0015
		inflationCost = round(inflationCost * 10) / 10
