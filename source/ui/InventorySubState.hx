package ui;

import flixel.FlxSprite;
import flixel.addons.ui.FlxUISubState;
import flixel.group.FlxGroup;

class InventorySubState extends FlxUISubState
{
	override public function create()
	{
		var test:FlxSprite = new FlxSprite().loadGraphic(Assets.testUI__png, false, 80, 80);
		test.setGraphicSize(Std.int(test.width * 1.0));
		test.screenCenter();
		add(test);

		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}

	override public function destroy()
	{
		super.destroy();
	}
}
