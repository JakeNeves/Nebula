package;

import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.math.FlxPoint;
import flixel.util.FlxColor;

class Player extends FlxSprite
{
	static inline var speed:Float = 100;
	static inline var sprintSpeed:Float = 175;

	public function new(x:Float = 0, y:Float = 0)
	{
		super(x, y);

		/**
		 *	Keep in mind that when you add any new characters, it's suggested that you
		 *	give the character a numerical ID otherwise you won't be able to play as your
		 *	modded character.
		 */
		switch (MenuState.character)
		{
			case 'blocky':
				// testing changeable characters
				loadGraphic(Asset.blocky__png, true, 16, 32);

				// movement
				animation.add("up", [2, 0, 1, 0], 8, false);
				animation.add("down", [5, 3, 4, 3], 8, false);
				animation.add("left", [8, 6, 7, 6], 8, false);
				animation.add("right", [11, 9, 10, 9], 8, false);

				// punching
				animation.add("punchUp", [12, 0], 8, false);
				animation.add("punchDown", [13, 3], 8, false);
				animation.add("punchLeft", [14, 6], 8, false);
				animation.add("punchRight", [15, 9], 8, false);
			default:
				loadGraphic(Asset.jake__png, true, 16, 32);

				// movement
				animation.add("up", [2, 0, 1, 0], 8, false);
				animation.add("down", [5, 3, 4, 3], 8, false);
				animation.add("left", [8, 6, 7, 6], 8, false);
				animation.add("right", [11, 9, 10, 9], 8, false);

				// punching
				animation.add("punchUp", [12, 0], 8, false);
				animation.add("punchDown", [13, 3], 8, false);
				animation.add("punchLeft", [14, 6], 8, false);
				animation.add("punchRight", [15, 9], 8, false);
		}

		if (MenuState.character == null)
		{
			trace('No character found, please refer to either the code or the character\'s files!');
		}
		else
		{
			trace('Starting game with ' + MenuState.character + ' as the selected character!');
		}

		// setFacingFlip(FlxObject.LEFT, false, true);
		// setFacingFlip(FlxObject.RIGHT, true, false);

		drag.x = drag.y = 300;
		setSize(16, 32);
	}

	override function update(elapsed:Float)
	{
		updateMovement();
		super.update(elapsed);
	}

	function updateMovement()
	{
		// movement
		var up:Bool = false;
		var down:Bool = false;
		var left:Bool = false;
		var right:Bool = false;
		var sprint:Bool = false;

		var esc:Bool = false;

		// punching
		var z:Bool = false;

		#if FLX_KEYBOARD
		up = FlxG.keys.anyPressed([UP, W]);
		down = FlxG.keys.anyPressed([DOWN, S]);
		left = FlxG.keys.anyPressed([LEFT, A]);
		right = FlxG.keys.anyPressed([RIGHT, D]);
		sprint = FlxG.keys.anyPressed([SHIFT, CONTROL]);

		esc = FlxG.keys.anyPressed([ESCAPE]);

		z = FlxG.keys.anyPressed([Z]);
		#end

		if (up && down)
			up = down = false;
		if (left && right)
			left = right = false;

		if (up || down || left || right)
		{
			var newAngle:Float = 0;
			if (up)
			{
				newAngle = -90;
				if (left)
					newAngle -= 45;
				else if (right)
					newAngle += 45;
				facing = FlxObject.UP;
			}
			else if (down)
			{
				newAngle = 90;
				if (left)
					newAngle += 45;
				else if (right)
					newAngle -= 45;
				facing = FlxObject.DOWN;
			}
			else if (left)
			{
				newAngle = 180;
				facing = FlxObject.LEFT;
			}
			else if (right)
			{
				newAngle = 0;
				facing = FlxObject.RIGHT;
			}

			if (sprint)
				velocity.set(sprintSpeed, 0);
			else
				velocity.set(speed, 0);

			velocity.rotate(FlxPoint.weak(0, 0), newAngle);

			if ((velocity.x != 0 || velocity.y != 0) && touching == FlxObject.NONE)
			{
				switch (facing)
				{
					case FlxObject.UP:
						animation.play("up");
					case FlxObject.DOWN:
						animation.play("down");
					case FlxObject.LEFT:
						animation.play("left");
					case FlxObject.RIGHT:
						animation.play("right");
				}
			}
		}
		else if (esc)
		{
			FlxG.camera.fade(FlxColor.WHITE, 0.05, false, function()
			{
				FlxG.switchState(new MenuState());
			});
		}
		else if (z)
		{
			switch (facing)
			{
				case FlxObject.UP:
					animation.play("punchUp");
				case FlxObject.DOWN:
					animation.play("punchDown");
				case FlxObject.LEFT:
					animation.play("punchLeft");
				case FlxObject.RIGHT:
					animation.play("punchRight");
			}
		}
	}
}
