Minimal reproducible example for MOUSE_MODE_CAPTURED.

When you capture the InputEventMouseButton in a [Node._unhandled_input(](https://docs.godotengine.org/en/stable/classes/class_node.html#class-node-private-method-unhandled-input), the
event is not passed down in the next handler ([CollisionObject3D._input_event()](https://docs.godotengine.org/en/stable/classes/class_collisionobject3d.html#class-collisionobject3d-private-method-input-event))
