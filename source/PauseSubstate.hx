package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxColor;
import ui.NebulaGeneralSubstate;

class PauseSubstate extends NebulaGeneralSubstate
{
	var menuItem:Array<String> = ['Resume', 'Exit to Windows', 'Exit to Menu'];

	var bg:FlxSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.WHITE);

	override function destroy()
	{
		super.destroy();
	}
}
