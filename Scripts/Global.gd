extends Node

var camera = null
var player = null
var coins = 999999
var points = 0
var UI = null
var upgrades = []
var upgradePanel
var spawnManager = null

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

func set_active_spawns(val):
	spawnManager.set_active_spawners(val)
	pass