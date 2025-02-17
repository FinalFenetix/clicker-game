extends Node

var coins: float = 0
var coinsPerPress: float = 1
var inflationCost: float = 1
var coinsPerSecond: float = 0
var buttonSkin = 0

func _ready() -> void:
	pass


func _process(delta: float) -> void:
	coins = round(coins * 10) / 10
	inflationCost = round(inflationCost * 10) / 10
