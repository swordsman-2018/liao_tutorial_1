extends Sprite

var _velocity = Vector2()

func _process(delta):
	self.position += _velocity*delta
	
	pass

func start(velocity,direction):
	
	self._velocity = velocity.rotated(direction)
	
	
	pass
	
func _on_VisibilityNotifier2D_screen_exited():
	self.queue_free()