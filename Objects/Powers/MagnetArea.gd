extends Area2D

export (float) var incrementFactor = 5
export (float) var initialRadius = 50

func _ready():
	add_to_group("MagneticArea")
	$Colision.shape.radius = initialRadius

func increment_magnet():
	$Colision.shape.radius += incrementFactor
	pass