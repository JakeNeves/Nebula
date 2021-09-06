package ui;

import flixel.FlxSprite;

class OptionsBackground extends FlxSprite
{
	public function new(titleX:Int = 0, titleY:Int = 0)
	{
		super(titleX, titleY);
		loadGraphic("assets/images/menu/optionsBackground.png", false, 800, 600);
	}
}
