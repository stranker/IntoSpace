extends Area2D

export (float) var incrementFactor = 5
export (float) var initialRadius = 50
var angle = 0

func _ready():
	add_to_group("MagneticArea")
	$Colision.shape.radius = initialRadius

func _process(delta):
	angle += delta * 5
	rotation = angle

func increment_magnet():
	$Colision.shape.radius += incrementFactor
	$Sprite.scale += Vector2(0.15,0.15)
	pass