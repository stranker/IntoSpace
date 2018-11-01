extends Node

var camera = null
var player = null
var coins = 9999999
var points = 0
var UI = null
var upgrades = []

func _ready():
	pass

func get_upgrade_by_id(id):
	var upgrade = null
	for i in upgrades:
		if i["id"] == id:
			upgrade = i
	return upgrade
	