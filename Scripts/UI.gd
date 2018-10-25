extends CanvasLayer

var points = 0
var coins = 0

func _ready():
	Global.UI = self
	$Panel/Coins.text = str(Global.coins)
	$Panel/Points.text = str(Global.points)
	pass

func _process(delta):
	update_labels()
	pass

func update_labels():
	if points != Global.points:
		$Panel/Points/Chimi.text = "+" + str(Global.points - points)
		$Panel/Points/Anim.play("Popup")
		points = Global.points
		$Panel/Points.text = str(int(points))
	if coins != Global.coins:
		coins = Global.coins
		$Panel/Coins.text = str(coins)
	pass