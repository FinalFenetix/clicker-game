extends Label

func _ready() -> void:
	pass


func _process(delta: float) -> void:
	text = "Coins per click: " + str(Global.coinsPerPress) + "\n Coins per second: " + str(Global.coinsPerSecond)
