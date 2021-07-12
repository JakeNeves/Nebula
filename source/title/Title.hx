package title;

import flixel.FlxSprite;

class Title extends FlxSprite
{
	public function new(titleX:Int = 0, titleY:Int = 0)
	{
		super(titleX, titleY);
		loadGraphic("assets/images/title/nebula.png", false, 236, 52);
	}
}
