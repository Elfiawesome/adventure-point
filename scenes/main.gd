class_name MainScene extends Control

static var SET_USERNAME: String = "NOT_SET"
var GAME_SESSION_SCENE: PackedScene = load("res://scenes/game_session/game_session.tscn")

func _ready() -> void:
	SET_USERNAME = OS.get_cmdline_args()[2]
	
	var game_session := GAME_SESSION_SCENE.instantiate()
	
	if SET_USERNAME == "Player1": # Owner/Server
		add_child(game_session)
	else: # Clients
		add_child(game_session)
