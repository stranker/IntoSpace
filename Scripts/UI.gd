extends CanvasLayer

var points = 0
var coins = 0

func _ready():
	Global.UI = self
	$Panel/Coins.text = str(Global.coins)
	$Panel/Points.text = str(Global.points)
	$Panel/Home.hide()
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

func _on_PauseButton_button_down():
	get_tree().paused = !get_tree().paused
	if get_tree().paused:
		$Panel/Home.show()
	else:
		$Panel/Home.hide()
	pass # replace with function body

func _on_Home_button_down():
	Global.player = null
	get_tree().change_scene("res://Scenes/MainMenu.tscn")
	get_tree().paused = false
	Global.new_game()
	pass # replace with function body
