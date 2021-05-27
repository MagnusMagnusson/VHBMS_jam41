SET_STATE_TO STATE_AIMING;
angle = 0;
angleDir = 6;
force = 0;
stake = stake_get("stake_carbon");
max_force = 2*20;
force_direction = 2;

surf_power_gage = -4;

stage = 0;
show_debug_message(global.stakes);
show_debug_message(stake);