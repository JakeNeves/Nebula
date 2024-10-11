enum RARITY {
	COMMON,
	UNCOMMON,
	RARE,
	EPIC,
	LEGENDARY,
	MYTHIC,
	DIVINE
}

function BuildItem(_id, _sprite, _name, _desc, _rare = undefined) constructor {
	_sprite = noone;
	_id = "";
	_name = "";
	_desc = [""];
	
	_rare = RARITY.COMMON;
	
	switch (_rare) {
		case RARITY.COMMON:
			break;
		case RARITY.UNCOMMON:
			break;
		case RARITY.RARE:
			break;
		case RARITY.EPIC:
			break;
		case RARITY.LEGENDARY:
			break;
		case RARITY.MYTHIC:
			break;
		case RARITY.DIVINE:
			break;
	}
	
	item = function() { };
};