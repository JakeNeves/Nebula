package;

import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.math.FlxPoint;

class Player extends FlxSprite
{
	static inline var speed:Float = 100;

	public function new(x:Float = 0, y:Float = 0)
	{
		super(x, y);
		loadGraphic(AssetPaths.jake__png, true, 16, 32);
		// setFacingFlip(FlxObject.LEFT, false, true);
		// setFacingFlip(FlxObject.RIGHT, true, false);
		animation.add("up", [2, 0, 1, 0], 4, false);
		animation.add("down", [5, 3, 4, 3], 4, false);
		animation.add("left", [8, 6, 7, 6], 4, false);
		animation.add("right", [11, 9, 10, 9], 4, false);

		drag.x = drag.y = 1200;
		setSize(16, 32);
		// offset.set(0, 0);
	}

	override function update(elapsed:Float)
	{
		updateMovement();
		super.update(elapsed);
	}

	function updateMovement()
	{
		var up:Bool = false;
		var down:Bool = false;
		var left:Bool = false;
		var right:Bool = false;

		#if FLX_KEYBOARD
		up = FlxG.keys.anyPressed([UP, W]);
		down = FlxG.keys.anyPressed([DOWN, S]);
		left = FlxG.keys.anyPressed([LEFT, A]);
		right = FlxG.keys.anyPressed([RIGHT, D]);
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
	}
}
