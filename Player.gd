extends KinematicBody2D

var Bullet = preload("res://Bullet.tscn")

signal shoot(Bullet,direction,location)

onready var _shootPosition = $Position2D

func _ready():
	
	pass

func _process(delta):
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	look_at(get_global_mouse_position())
	pass

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			emit_signal("shoot",Bullet,rotation,_shootPosition.global_position)