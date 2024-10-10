package util;

class Lighting
{
	public static var maxRenderCount:Int;
	public static var maxX:Int;
	public static var maxY:Int;
	public static var minX:Int;
	public static var minY:Int;
	public static var screenX:Int;
	public static var screenY:Int;
	public static var lightingThreads:Int;
	public static var offScreenTilesConst:Int;
	public static var offScreenTiles:Int;
	public static var lightMode:Int;

	public static var brightness:Float;
	public static var defBrightness:Float;

	public function Lighting() {}

	public static var NotOld:Array<Bool>;
	public static var UpdatePerFrame:Array<Bool>;
	public static var LightingDrawToScreen:Array<Bool>;

	public static var BlackOut:Void;
	public static var doColors:Void;
	public static var NextLightMode:Void;
	public static var PreRenderPhase:Void;
}
