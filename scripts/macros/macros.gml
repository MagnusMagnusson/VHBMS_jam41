#macro STATE_AIMING 1
#macro STATE_THROWING 2
#macro STATE_FLYING 3
#macro IS_AIMING state == STATE_AIMING
#macro IS_THROWING state == STATE_THROWING
#macro IS_FLYING state == STATE_FLYING
#macro SET_STATE_TO state = 
#macro OTHER_STUFF asset_has_tags(object_index, "stuff", asset_object) && (x PX_TO_METER) < x0 || (x PX_TO_METER) > x1

#macro PIXELS_IN_METER 80
#macro PX_TO_METER / PIXELS_IN_METER
#macro METER_TO_PX * PIXELS_IN_METER

#macro CAM_X camera_get_view_x(view_camera[0])
#macro CAM_Y camera_get_view_y(view_camera[0])

#macro C_BLOOD $0011CC

#macro CHEST_DISTANCE 125
#macro VAMPIRE_DISTANCE 38
#macro GHOST_DISTANCE 60
#macro WATER_DISTANCE 75
#macro BAT_DISTANCE 15
#macro CROSS_DISTANCE 50