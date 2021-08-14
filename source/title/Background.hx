package title;

import flixel.FlxSprite;

class Background extends FlxSprite
{
	public function new(titleX:Int = 0, titleY:Int = 0)
	{
		super(titleX, titleY);
		loadGraphic("assets/images/title/background.png", false, 800, 600);
	}
}
