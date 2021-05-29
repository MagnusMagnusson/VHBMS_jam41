y -= room_height;
gravity = 1;
bounced = false;

var b = instance_create_layer(xstart - 128,ystart + 256, layer_get_id("il_ui"), o_button);
b.text = "Another Throw!";
b.action = reset;
b.attach = id;

var b = instance_create_layer(xstart + 128,ystart + 256, layer_get_id("il_ui"), o_button);
b.text = "To the Store!";
b.action = open_shop;
b.attach = id;

show_debug_message(b)

