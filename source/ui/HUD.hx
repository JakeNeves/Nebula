package ui;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.text.FlxText;
import flixel.ui.FlxBar;
import flixel.util.FlxColor;

class HUD extends FlxTypedGroup<FlxSprite>
{
	public function new()
	{
		super();
		var healthBar:FlxSprite = new FlxSprite(FlxG.width - 80, 24).loadGraphic(Asset.healthBar__png, false, 66, 16);
		var healthBarFill:FlxBar = new FlxBar(healthBar.x, healthBar.y, LEFT_TO_RIGHT);
		healthBarFill.createFilledBar(0xff000000, 0xffff0000, false, 0xff000000);
		var healthCount:FlxText = new FlxText(healthBar.x, healthBar.y - 20, 0, 'HP', 8);
		healthCount.setBorderStyle(SHADOW, FlxColor.BLACK, 1, 1);
		add(healthBar);
		add(healthBarFill);
		add(healthCount);
		forEach(function(sprite) sprite.scrollFactor.set(0, 0));
	}
}
