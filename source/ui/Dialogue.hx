package ui;

import flixel.FlxSprite;
import flixel.addons.text.FlxTypeText;
import flixel.group.FlxSpriteGroup;
import flixel.text.FlxText;

using StringTools;

class Dialogue extends FlxSpriteGroup
{
	static public var chara:String = "jake";

	static public var dialogue:Null<String> = chara + "cool text";
	static public var dbox:FlxSprite = new FlxSprite().loadGraphic(Asset.dialogue__png, false, 256, 64);
	static public var font:FlxText = new FlxText(0, 0, dbox.width, dialogue, 8);
}
