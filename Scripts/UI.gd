extends CanvasLayer

var meters = 0
var coins = 0

func _ready():
	Global.UI = self
	$Panel/Coins.text = str(Global.coins)
	$Panel/Meters.text = str(Global.player.get_meters()) + "m"
	pass

func _process(delta):
	update_labels()
	pass

func update_labels():
	if meters != Global.player.get_meters():
		meters = Global.player.get_meters()
		$Panel/Meters.text = str(int(meters)) + "m"
	if coins != Global.coins:
		coins = Global.coins
		$Panel/Coins.text = str(coins)
	pass