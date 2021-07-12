package title;

import flixel.FlxSprite;

class JakeNevesHaxe extends FlxSprite
{
	public function new(logoX:Int = 0, logoY:Int = 0)
	{
		super(logoX, logoY);
		loadGraphic("assets/images/title/jakeNevesHaxe.png", false, 84, 29);
	}
}
