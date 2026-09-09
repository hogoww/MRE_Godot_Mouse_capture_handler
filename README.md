# Capturing the mouse and event propagation
 
When you capture the InputEventMouseButton in a [Node._unhandled_input()](https://docs.godotengine.org/en/stable/classes/class_node.html#class-node-private-method-unhandled-input), the event is not passed down in the next handler ([CollisionObject3D._input_event()](https://docs.godotengine.org/en/stable/classes/class_collisionobject3d.html#class-collisionobject3d-private-method-input-event)).

If you want the event to continue propagating when capturing the mouse, use:
```
Input.call_deferred(&"set_mouse_mode",Input.MOUSE_MODE_CAPTURED)
```
If you *don't* want the event to continue propagating when capturing the mouse, use:
```
Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
```

## What ?

Try it !  
- open the project;
- Launch the default scene (node_3d.tscn);
- Click on the cube !

### Expected output when mouse capturing

clicked  
unclicked  

### Expected output when deferring mouse capture

clicked  
Clicked on CharacterBody3D:<CharacterBody3D#25820136822>  
unclicked  

## I still can't target my cube !

Make sure you're [CollisionObject3D](https://docs.godotengine.org/en/stable/classes/class_collisionobject3d.html#class-collisionobject3d) is [ray pickable](https://docs.godotengine.org/en/stable/classes/class_collisionobject3d.html#class-collisionobject3d-property-input-ray-pickable)

Otherwise, there's this *great* forum post about collision that might be relevant: [Collision Not Working Checklist](https://forum.godotengine.org/t/collision-not-working-checklist/105786) !
