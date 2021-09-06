package;

import flash.Lib;
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.BlendMode;
import flixel.FlxG;
import flixel.system.FlxBasePreloader;
import openfl.display.Sprite;

@:bitmap("art/loaderArt.png") class LogoImg extends BitmapData {}

class Preloader extends FlxBasePreloader
{
	public function new(MinDisTime:Float = 4, ?AllowedURLs:Array<String>)
	{
		super(MinDisTime, AllowedURLs);
	}

	var nLogo:Sprite;

	override function create():Void
	{
		this._width = Lib.current.stage.stageWidth;
		this._height = Lib.current.stage.stageWidth;

		var ratio:Float = this._width / 800;

		nLogo = new Sprite();
		nLogo.addChild(new Bitmap(new LogoImg(0, 0)));
		nLogo.scaleX = nLogo.scaleY = ratio;
		nLogo.x = ((this._width) / 2) - ((nLogo.width) / 2);
		nLogo.y = (this._height / 2) - ((nLogo.height) / 2);
		addChild(nLogo);

		super.create();
	}

	override function update(Percent:Float):Void
	{
		if (Percent < 70)
		{
			nLogo.scaleX += Percent / 800;
			nLogo.scaleY += Percent / 800;
			nLogo.x -= Percent * 0.6;
			nLogo.y -= Percent / 2;
		}
		else
		{
			nLogo.scaleX = this._width / 800;
			nLogo.scaleY = this._width / 800;
			nLogo.x = ((this._width) / 2) - ((nLogo.width) / 2);
			nLogo.y = (this._height / 2) - ((nLogo.height) / 2);
		}
	}
}
