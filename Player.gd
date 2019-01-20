extends KinematicBody2D

var Bullet = preload("res://Bullet.tscn")

signal shoot(Bullet,direction,location)

onready var _shootPosition = $Position2D

var motion = Vector2()

func _ready():
	
	pass

func _physics_process(delta):
	
	if Input.is_key_pressed(KEY_W):
		motion.y = -50		
	elif Input.is_key_pressed(KEY_S):
		motion.y = 50
	else:
		motion.y = 0		
	if Input.is_key_pressed(KEY_D):
		motion.x = 50		
	elif Input.is_key_pressed(KEY_A):
		motion.x = -50		
	else:
		motion.x = 0
	look_at(get_global_mouse_position())	
	motion = move_and_slide(motion)
	pass

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			emit_signal("shoot",Bullet,rotation,_shootPosition.global_position)
			get_node("FireFlash").visible = true
			get_node("FireLight").visible = true
			get_node("Timer").start()
			
			




func _on_Timer_timeout():
	get_node("FireFlash").visible = !get_node("FireFlash").visible
	get_node("FireLight").visible = !get_node("FireLight").visible
	get_node("Timer").stop()
	pass # replace with function body
