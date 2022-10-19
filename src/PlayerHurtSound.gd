extends AudioStreamPlayer

func _ready():
	var _finshed_error = connect("finished", self, "queue_free")
