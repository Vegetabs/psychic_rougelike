extends Control

func _ready() -> void:
	_main()

func _load_scene(scene_name:String) -> void:
	var path = ScenePaths.str_to_path(scene_name)
	var inst = load(path).instantiate()
	self.add_child(inst)

func _unload_scene(node_name:String) -> void:
	var node = _get_node(node_name)
	if node != null:
		node.queue_free()

func _get_node(node_name:String):
	var node = null
	for i in self.get_children():
		if i.name == node_name:
			node = i
	return node

func _main() -> void:
	_load_scene("game_env")
