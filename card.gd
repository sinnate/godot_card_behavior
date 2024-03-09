extends TextureRect
var in_valide_range : bool = false
var is_selected : bool = false 
var is_mouse_in : bool = false 

func _input(event):
	if is_mouse_in and event.is_action_pressed("card_interaction") and !is_selected:
		is_selected = true
	elif is_selected and event.is_action_pressed("card_interaction") :
		is_selected = false
		if in_valide_range :
			queue_free()
		#global_position = intial_position
		get_parent().queue_sort()



func _on_mouse_entered():
	is_mouse_in = true
	scale = scale*1.2
	z_index = 1

func _ready():
	get_node("Paper/RichTextLabel").text = "it's " + str(get_index())


func _on_mouse_exited():
	is_mouse_in = false
	scale = Vector2(1,1)
	z_index = 0

func _process(_delta):
	if is_selected :
		global_position =  get_global_mouse_position() - size/2


func _on_area_2d_area_entered(area):
	print(area.get_index())
	in_valide_range = true


func _on_area_2d_area_exited(area):
	in_valide_range = false
