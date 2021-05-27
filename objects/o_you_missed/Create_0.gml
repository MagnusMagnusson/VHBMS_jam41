y -= room_height;
gravity = 1;
bounced = false;

var b = instance_create_depth(xstart - 128,ystart + 256, depth, o_button);
b.text = "Another Throw!";
b.action = reset;
b.attach = id;
show_debug_message(b)

