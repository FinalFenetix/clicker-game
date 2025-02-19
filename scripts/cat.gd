extends Button

@export var originalCost: float = 75000
var currentCost: float = originalCost * Global.inflationCost
var inflationCost:= 1.0


func _process(delta: float) -> void:
	currentCost = originalCost * inflationCost
	currentCost = round(currentCost * 10) / 10
	text = "Cat \n Increase clicks per \n second by 100 \n for 10 seconds! \n cost: " + str(currentCost)


func _on_pressed() -> void:
	if Global.coins >= currentCost:
		Global.coins -= currentCost
		Global.coinsPerSecond += 100
		$Timer.start()
		Global.inflationCost += currentCost * 0.0015
		inflationCost += currentCost * 0.0015
		inflationCost = round(inflationCost * 10) / 10

func _on_timer_timeout() -> void:
	Global.coinsPerSecond -= 100
