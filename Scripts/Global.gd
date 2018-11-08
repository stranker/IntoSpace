extends Node

var camera = null
var player = null
var coins = 0
var points = 0
var enemiesParent = null
var coinsParent = null
var UI = null
var upgrades = []
var upgradePanel

func _ready():
	new_game()
	pass

func get_upgrade_by_id(id):
	var upgrade = null
	for i in upgrades:
		if i["id"] == id:
			upgrade = i
	return upgrade

func new_game():
	points = 0