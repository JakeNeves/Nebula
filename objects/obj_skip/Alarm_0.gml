switch (menu_type) {
	case MENU_TYPE.NORMAL:
		room_goto(rm_menu);
		break;
	case MENU_TYPE.POST_NEUTRAL:
		room_goto(rm_menu_sylux);
		break;
}