package util;

class TimeStructureUtils
{
	public static var AnyTimeStructure:Array<TimeStructureUtils> = [];

	public var startingTicks:Float = 0;

	public var length:Float = Math.POSITIVE_INFINITY; // ticks/second?

	/**
	 * Clears all known time structures
	 */
	public static function clearAllTimeStructures()
	{
		AnyTimeStructure = [];
	}

	/**
	 * Allows you to get a specific timestamps (Useful in making cutscenes/times-events)
	 * @param tick the amount of ticks specified (20 ticks = 1 second)
	 * @return TimeStructureUtils
	 */
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
