extends Node2D

func _ready() -> void:
	var INSTANCE_USERNAME: String = OS.get_cmdline_args()[2]
	
	if INSTANCE_USERNAME == "Player1":
		pass # Host
	else:
		pass # Connect
