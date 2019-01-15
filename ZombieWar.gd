extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	$Player.connect("shoot",self,"_on_signal_shoot")
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func _on_signal_shoot(Bullet,direction,location):
	var bullet = Bullet.instance()
	add_child(bullet)
	bullet.position = location
	bullet.rotation = direction
	bullet.start(Vector2(800,0),direction)