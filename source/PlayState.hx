package;

import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.addons.editors.ogmo.FlxOgmo3Loader;
import flixel.tile.FlxTilemap;
import flixel.util.FlxAxes;
import flixel.util.FlxColor;
import ui.HUD;

using flixel.util.FlxSpriteUtil;

class PlayState extends FlxState
{
	var player:Player;

	var map:FlxOgmo3Loader;
	var walls:FlxTilemap;

	var level:String = "void";

	var sky:FlxObject;

	override public function create()
	{
		FlxG.camera.fade(FlxColor.WHITE, 0.48, true);

		FlxG.camera.zoom = 1.75;

		// this will NOT be in the final game, but the code is here though...
		// var test:FlxSprite = new FlxSprite().loadGraphic(Asset.testRoom__png, false, 192, 192);
		// test.setGraphicSize(Std.int(test.width * Changables.gameZoom * 0.8));
		// add(test);

		map = new FlxOgmo3Loader(Asset.getDataFile("nebula.ogmo"), Asset.getJSONFile(level + "Test"));
		walls = map.loadTilemap(Asset.image("tiles/" + level), "walls");
		walls.follow();
		switch level
		{
			case "mines":
				sky = new FlxSprite().loadGraphic(Asset.image("background/" + level), false, 800, 600);
				sky.screenCenter(FlxAxes.XY);
				walls.setTileProperties(0, FlxObject.ANY);
				walls.setTileProperties(1, FlxObject.ANY);
				walls.setTileProperties(2, FlxObject.NONE);
				walls.setTileProperties(3, FlxObject.ANY);
				walls.setTileProperties(4, FlxObject.NONE);
				walls.setTileProperties(5, FlxObject.ANY);
				walls.setTileProperties(6, FlxObject.NONE);
				walls.setTileProperties(7, FlxObject.NONE);
				walls.setTileProperties(8, FlxObject.NONE);
				walls.setTileProperties(9, FlxObject.NONE);
				walls.setTileProperties(10, FlxObject.NONE);
				walls.setTileProperties(11, FlxObject.NONE);
				walls.setTileProperties(12, FlxObject.NONE);
				walls.setTileProperties(13, FlxObject.NONE);
				walls.setTileProperties(14, FlxObject.NONE);
				walls.setTileProperties(15, FlxObject.ANY);
				walls.setTileProperties(16, FlxObject.ANY);
				walls.setTileProperties(17, FlxObject.ANY);
				walls.setTileProperties(18, FlxObject.NONE);
				walls.setTileProperties(19, FlxObject.NONE);
				walls.setTileProperties(20, FlxObject.NONE);
				walls.setTileProperties(21, FlxObject.ANY);
				walls.setTileProperties(22, FlxObject.ANY);
				walls.setTileProperties(23, FlxObject.ANY);
				walls.setTileProperties(24, FlxObject.NONE);
				walls.setTileProperties(25, FlxObject.NONE);
				walls.setTileProperties(26, FlxObject.NONE);
				walls.setTileProperties(27, FlxObject.NONE);
				walls.setTileProperties(28, FlxObject.NONE);
				walls.setTileProperties(29, FlxObject.NONE);
				walls.setTileProperties(30, FlxObject.NONE);
				walls.setTileProperties(31, FlxObject.NONE);
				walls.setTileProperties(35, FlxObject.ANY);
				walls.setTileProperties(36, FlxObject.NONE);
				walls.setTileProperties(37, FlxObject.NONE);
				add(sky);
				add(walls);
			case "void":
				sky = new FlxSprite().loadGraphic(Asset.image("background/" + level), false, 800, 600);
				sky.screenCenter(FlxAxes.XY);
				walls.setTileProperties(0, FlxObject.ANY);
				walls.setTileProperties(1, FlxObject.ANY);
				walls.setTileProperties(2, FlxObject.ANY);
				walls.setTileProperties(3, FlxObject.ANY);
				walls.setTileProperties(4, FlxObject.NONE);
				walls.setTileProperties(7, FlxObject.ANY);
				walls.setTileProperties(8, FlxObject.ANY);
				walls.setTileProperties(9, FlxObject.ANY);
				add(sky);
				add(walls);
			default:
				sky = new FlxSprite().loadGraphic(Asset.image("background/sky"), false, 800, 600);
				sky.screenCenter(FlxAxes.XY);
				add(sky);
		}

		player = new Player();
		map.loadEntities(placeEntities, "entities");
		add(player);

		FlxG.camera.follow(player, TOPDOWN, 1);

		var hud = new HUD();
		add(hud);

		super.create();
	}

	function placeEntities(entity:EntityData)
	{
		if (entity.name == "player")
		{
			player.setPosition(entity.x, entity.y);
		}
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		FlxG.collide(player, walls);
	}
}
