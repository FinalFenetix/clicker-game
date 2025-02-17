extends Button

@export var originalCost: float = 200
var currentCost: float = originalCost * Global.inflationCost
var inflationCost:= 1.0


func _process(delta: float) -> void:
	currentCost = originalCost * inflationCost
	currentCost = round(currentCost * 10) / 10
	text = "+0.1 clicks per second \n cost: " + str(currentCost)

func _on_timer_timeout() -> void:
	Global.coins += Global.coinsPerSecond


func _on_pressed() -> void:
	if Global.coins >= currentCost:
		Global.coins -= currentCost
		Global.coinsPerSecond += 0.1
		Global.inflationCost += currentCost * 0.0025
		inflationCost += currentCost *0.0025
		inflationCost = round(inflationCost * 10) / 10
