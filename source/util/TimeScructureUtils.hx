package util;

class TimeStructureUtils
{
	public static var AnyTimeStructure:Array<TimeStructureUtils> = [];

	public var startingTicks:Float = 0;

	public var length:Float = Math.POSITIVE_INFINITY; // ticks/second?

	public static function clearAllTimeStructures()
	{
		AnyTimeStructure = [];
	}

	public static function getTimestamp(tick:Float):TimeStructureUtils
	{
		for (i in AnyTimeStructure)
		{
			if (tick >= i.startingTicks * 1000 && tick < (i.startingTicks + i.length) * 1000)
				return i;
		}
		trace('Warning ' + tick + ' is possibly out of any segments!');
		return null;
	}
}
