extends Node

var item_id
var item_price
var item_texture
var item_level
var item_max_level

func create_upgrade_item(_id,_price,_texture,_itemlevel,_itemMaxLevel):
	item_id = _id
	item_price = _price
	item_texture = _texture
	item_level = _itemlevel
	item_max_level = _itemMaxLevel
	pass

func can_be_upgraded():
	return item_level < item_max_level