package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;
import ui.OptionsBackground;

class MenuState extends FlxState
{
	var backButton:FlxButton;
	var runButton:FlxButton;

	var menuText:FlxText;
	var demoText:FlxText;

	var characterSelect:FlxText;

	var navigateLeft:Bool = false;
	var navigateRight:Bool = false;

	static public var character:String = 'jake';

	function updateNavigation()
	{
		#if FLX_KEYBOARD
		navigateLeft = FlxG.keys.anyPressed([LEFT, A]);
		navigateLeft = FlxG.keys.anyPressed([RIGHT, D]);
		#end

		if (navigateLeft || navigateRight)
		{
			if (navigateLeft) {}
			else if (navigateRight) {}
		}
	}

	override public function create():Void
	{
		characterSelect = new FlxText(60, 120, "Select Character" + "\n< " + character + " >", 16);
		characterSelect.setFormat(Assets.getFont("vgaoem.fon"), 16);

		menuText = new FlxText(0, 560, 0, "Main Menu", 18);
		menuText.setFormat("Consolas", 18, FlxColor.BLACK);
		add(menuText);

		demoText = new FlxText(0, 580, 0, "Tech Demo, Available to public for testing...", 18);
		demoText.setFormat("Consolas", 18, FlxColor.BLACK);
		add(demoText);

		final background = new OptionsBackground(0, 0);
		add(background);

		backButton = new FlxButton(10, 30, "", clickBack);
		backButton.loadGraphic(Assets.buttonBack__png, true, 20, 20);
		backButton.onUp.sound = FlxG.sound.load(Assets.click__wav);
		add(backButton);

		runButton = new FlxButton(0, 30, "New Run", startGame);
		runButton.loadGraphic(Assets.buttonmedium__png, true, 60, 20);
		runButton.onUp.sound = FlxG.sound.load(Assets.click__wav);
		runButton.x = (FlxG.width / 2) - 10 - backButton.width;
		add(runButton);

		FlxG.camera.fade(FlxColor.WHITE, 0.32, true);

		super.create();
	}

	function clickBack()
	{
		FlxG.camera.fade(FlxColor.WHITE, 0.05, false, function()
		{
			FlxG.switchState(new TitleState());
		});
	}

	function startGame()
	{
		FlxG.camera.fade(FlxColor.WHITE, 0.05, true, function()
		{
			FlxG.switchState(new PlayState());
		});
		if (character == null)
		{
			trace('No character found, please refer to either the code or the character\'s files!');
		}
		else
		{
			trace('Starting game with selected character: ' + MenuState.character + '!');
		}
	}
}
