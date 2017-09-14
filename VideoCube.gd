extends MeshInstance

var stream = preload("llamigos.webm")
var sfx = preload("SmallExplosion8-Bit.ogg")

func _ready():
	

	var player = VideoPlayer.new()
	player.set_stream(stream)
	add_child(player)
	var texture = player.get_video_texture()
	var material = SpatialMaterial.new()
	material.albedo_texture = texture
	set_material_override(material)
	print(player.get_volume())
	player.set_volume(.3)
	player.play()
	print(player.get_volume())
