extends CanvasLayer

export (PackedScene) var itemPanel
var upgradesDictionary = {}

func _ready():
	load_upgrade_items()
	create_upgrade_items()
	pass

func _on_ClosePanel_button_down():
	$MC/Panel.hide()
	pass # replace with function body

func create_item_panel(upgradeItem):
	var ip = itemPanel.instance()
	$MC/Panel/MC/GC.call_deferred("add_child",ip)
	ip.set_upgrade_info(upgradeItem)
	pass

func create_upgrade_items():
	for i in upgradesDictionary["Upgrades"]:
		create_item_panel(i)
	pass

func load_upgrade_items():
	var file = File.new()
	file.open("res://Data/upgrades.txt",File.READ)
	if file.is_open():
		var line = file.get_as_text()
		upgradesDictionary = parse_json(line)
		if !upgradesDictionary.keys().empty():
			Global.upgrades = upgradesDictionary["Upgrades"]
	file.close()
	pass