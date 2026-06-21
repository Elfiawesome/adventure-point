class_name GameSession extends Node2D

var board_tiles: Dictionary[int, BoardTile] = {}

func _ready() -> void:
	($Tile as BoardTile).data.tile_color = Color.BLACK

func _input(event: InputEvent) -> void:
	if event is InputEventKey:
		if event.pressed:
			($Tile as BoardTile).data.tile_color = Color.from_rgba8(randi_range(0,255),randi_range(0,255),randi_range(0,255))

func on_receive_data(packet: PacketData) -> void:
	packet.handle(self)

func send() -> void:
	pass
