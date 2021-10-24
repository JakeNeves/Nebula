package;

import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import ui.HUD;

using flixel.util.FlxSpriteUtil;

class PlayState extends FlxState
{
	override public function create()
	{
		FlxG.camera.fade(FlxColor.WHITE, 0.48, true);

		// this will NOT be in the final game, but the code is here though...
		var test:FlxSprite = new FlxSprite().loadGraphic(Asset.testRoom__png, false, 192, 192);
		test.setGraphicSize(Std.int(test.width * 1.0));
		add(test);

		var player = new Player(100, 100);
		add(player);

		var hud = new HUD();
		add(hud);

		FlxG.camera.follow(player, TOPDOWN, 1);

		super.create();
		// add(new FlxText("Test Room, Something funny here!", 32).screenCenter());
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
