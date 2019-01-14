extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"



func _ready():
	$Sprite.connect("shoot",self,"_on_Player_shoot")
	
	pass

func _on_Player_shoot(Bullet, direction, location):
    var b = Bullet.instance()	
    add_child(b)
    b.rotation = direction
    b.position = location
	