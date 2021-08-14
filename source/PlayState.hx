package;

import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;

using flixel.util.FlxSpriteUtil;

class PlayState extends FlxState
{
	var player:Player;

	override public function create()
	{
		FlxG.camera.fade(FlxColor.WHITE, 0.48, true);

		player = new Player(100, 100);
		add(player);

		FlxG.camera.follow(player, TOPDOWN, 1);

		super.create();
		// add(new FlxText("Test Room, Something funny here!", 32).screenCenter());
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
