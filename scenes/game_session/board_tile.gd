class_name BoardTile extends NinePatchRect

var data: BoardTileData:
	set(value):
		if data == null: data = BoardTileData.new()
		modulate = data.tile_color

func _ready() -> void:
	data = BoardTileData.new()
