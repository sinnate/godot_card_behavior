extends Area2D

@onready var point_holder := %PointHolder


func near_position(card_distance : Vector2) -> void :
	var closest_point = 0
	var closset_distance = 0
	var current_pos : float = 0
	for point in point_holder.get_child_count():
		print(point ," > ", point_holder.get_child(point).global_position.x , " ", card_distance.direction_to(point_holder.get_child(point).global_position).x,)
		current_pos = card_distance.direction_to(point_holder.get_child(point).global_position).x
		if current_pos <= closset_distance :
			closest_point = point
			closset_distance = current_pos 
	print(current_pos," > ",closest_point)
