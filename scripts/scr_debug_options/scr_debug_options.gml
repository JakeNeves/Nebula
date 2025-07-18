/// @description Toggles Noclip.
function noclip() {
	if (!obj_mainchara.plr_noclip) {
		show_debug_message("Noclip is enabled");
		obj_mainchara.plr_noclip = true;
	}
	else {
		show_debug_message("Noclip is disabled");
		obj_mainchara.plr_noclip = false;
	}
}

function give_masters_key() {
	if (!global.has_masters_key) {
		show_debug_message("You've been given the Master's Keys, you should be able to unlock doors in Sebastian's Lab now!");
		global.has_masters_key = true;
	}
	else {
		show_debug_message("You already have the Master's Keys!");
	}
}

/// @param _input
/// @description Set the game's current route, this can effect what you encounter as well as the ending.
function set_route(_input) {
	switch (_input = "") {
		case "neutral":
			global.route_type = ROUTE_TYPE.NEUTRAL;
			show_debug_message("You are now on the Neutral route");
		break;
		
		case "failed":
			global.route_type = ROUTE_TYPE.FAILED_EMPEROR;
			show_debug_message("You are now on the Failed Emperor route");
		break;
		
		case "revelation":
			global.route_type = ROUTE_TYPE.REVELATION;
			show_debug_message("You are now on the True Revelation route");
		break;
		
		default:
			global.route_type = ROUTE_TYPE.NEUTRAL;
			show_debug_message("Invalid route, resorting to the Neutral route");
			break;
	}
}

function set_neutral_route_count(_count = 0) {
	if (_count < 0)
		global.neutral_endings_completed = 0;
	else
		global.neutral_endings_completed = _count;
}

function add_to_wallet(_money) {
	global.money += _money;
	show_debug_message("You've been given " + _money + ", now you have $" + global.money + " in your wallet!");
}

function spawn(_entity = 0) {
    if (_entity != noone) {
        instance_create_depth((obj_mainchara.x + random_range(-150, 150)), (obj_mainchara.y + random_range(-150, 150)), obj_mainchara.depth, _entity);
        show_debug_message("Entity sucessfully spawned!");
    }
    else
        show_debug_message("Unable to spawn entity, please make sure you either have typed the internal ID correctly or the entity doesn't exist.");
}