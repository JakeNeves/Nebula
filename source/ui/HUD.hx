package ui;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.text.FlxText;
import flixel.ui.FlxBar;
import flixel.util.FlxAxes;
import flixel.util.FlxColor;

class HUD extends FlxTypedGroup<FlxSprite>
{
	var player:Player;

	public function new()
	{
		super();
		var healthBarFill:FlxBar = new FlxBar(FlxG.width - 20, 24, LEFT_TO_RIGHT, 66, 16, Player.playerHP, "", 0, 100, false);
		healthBarFill.createFilledBar(0xffff0000, 0xff000000, false, 0xff000000);
		add(healthBarFill);

		var healthBar:FlxSprite = new FlxSprite(FlxG.width - 20, 24).loadGraphic(Asset.image("ui/healthBar"), false, 66, 16);
		add(healthBar);

		var healthCount:FlxText = new FlxText(healthBar.x, healthBar.y, 0, 'HP ' + Player.playerHP + '%', 8);
		healthCount.setBorderStyle(SHADOW, FlxColor.BLACK, 1, 1);
		add(healthCount);

		var staminaBarFill:FlxBar = new FlxBar(FlxG.width - 20, 48, LEFT_TO_RIGHT, 66, 16, Player.playerStamina, "", 0, 100, false);
		staminaBarFill.createFilledBar(0xff32a852, 0xff000000, false, 0xff000000);
		add(staminaBarFill);

		var staminaBar:FlxSprite = new FlxSprite(FlxG.width - 80, 48).loadGraphic(Asset.image("ui/staminaBar"), false, 66, 16);
		add(staminaBar);

		var staminaCount:FlxText = new FlxText(staminaBar.x, staminaBar.y, 0, Player.playerStamina + '%', 8);
		staminaCount.setBorderStyle(SHADOW, FlxColor.BLACK, 1, 1);
		add(staminaCount);

		forEach(function(sprite) sprite.scrollFactor.set(0, 0));
	}
}
