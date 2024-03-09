extends Node

var card_template := preload("res://card.res")

func _on_button_pressed():
	var new_card = card_template.instantiate()
	%Hand.add_child(new_card)

