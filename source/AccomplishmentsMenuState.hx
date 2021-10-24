import flixel.FlxSprite;
import flixel.FlxState;

using StringTools;

class AccomplishmentsMenuState extends FlxState
{
	var options:Array<String> = [];

	override function create()
	{
		var bg:FlxSprite = new FlxSprite().loadGraphic(Asset.accomplishmentsBackground__png, false, 800, 600);
		bg.setGraphicSize(Std.int(bg.width * 1.0));
		bg.screenCenter();
		add(bg);

		super.create();
	}
}
