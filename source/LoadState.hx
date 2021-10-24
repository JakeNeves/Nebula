package;

import util.NebulaGeneralState;

class LoadState extends NebulaGeneralState
{
	inline static var minimumTime = 1.0;

	override function update(elapsed:Float)
	{
		super.update(elapsed);
		#if debug
		if (FlxG.keys.justPressed.SPACE)
			trace();
		#end
	}
}
