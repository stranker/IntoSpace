extends Area2D

export (float) var incrementFactor = 5
export (float) var initialRadius = 60
var level = 1
var angle = 0
var id_upgrade = 5
onready var upgrade = Global.get_upgrade_by_id(id_upgrade)

func _ready():
	add_to_group("MagneticArea")
	$Colision.shape.radius = initialRadius

func _process(delta):
	angle += delta * 5
	rotation = angle
	if level != upgrade["level"]:
		level = upgrade["level"]
		increment_magnet()

func increment_magnet():
	$Colision.shape.radius += incrementFactor
	$Sprite.scale += Vector2(0.15,0.15)
	pass