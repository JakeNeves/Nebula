package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;

class MenuState extends FlxState
{
	var backButton:FlxButton;
	var runButton:FlxButton;

	/**
	 * The Character's Given ID.
	 */
	static public var character:String = 'jake';

	/**
	 * The Character's Numerical ID.
	 */
	static public var characterNumericalID:Int = 1;

	/**
	 * Character Navigation, use the A and D or the Left and Right keys
	 * switch between characters, this is a work-in-progress right now!
	 */
	function updateCharacterNavigation()
	{
		var navigateLeft:Bool = false;
		var navigateRight:Bool = false;

		#if FLX_KEYBOARD
		navigateLeft = FlxG.keys.anyJustPressed([LEFT, A]);
		navigateRight = FlxG.keys.anyJustPressed([RIGHT, D]);
		#end
		if (navigateLeft)
		{
			characterNumericalID -= 1;
			// trace('Switched character to ' + character + '!' + '\nCharacter\'s Numerical ID is ' + characterNumericalID + '...');
		}
		else if (navigateRight)
		{
			characterNumericalID += 1;
			// trace('Switched character to ' + character + '!' + '\nCharacter\'s Numerical ID is ' + characterNumericalID + '...');
		}
		// Since -1 is 'out of range', we will set the ID to 0 and the character to 'jake'. Do not Use negative integers!
		if (characterNumericalID <= -1)
		{
			characterNumericalID += 1;
			// trace('Character\'s Numerical ID is out of range!');
		}
		/**
		 *	When you add a character, it's given the ID you register your character as
		 *	each character is assigned a numerical ID for when you change character in
		 *	the menu, the game will read the numerical ID rather than the given name!
		 */
		// switch (MenuState.characterNumericalID)
		// {
		//	case 0:
		//		MenuState.character = 'blocky'; // the numerical ID for blocky is 0
		//	case 1:
		//		MenuState.character = 'jake'; // the numerical ID for jake is 1 (this is an example of adding custom characters)
		// }
	}

	override public function create():Void
	{
		var bg:FlxSprite = new FlxSprite().loadGraphic(Asset.optionsBackground__png, false, 800, 600);
		bg.setGraphicSize(Std.int(bg.width * 1.0));
		bg.screenCenter();
		add(bg);

		var characterSelect:FlxText = new FlxText(600, 70, 0, "Select Character" + "\n < " + character + " >", 16);
		characterSelect.setFormat("Consolas", 16, FlxColor.BLACK);
		add(characterSelect);

		var menuText:FlxText = new FlxText(0, 560, 0, "Main Menu", 18);
		menuText.setFormat("Consolas", 18, FlxColor.BLACK);
		add(menuText);

		var demoText:FlxText = new FlxText(0, 580, 0, "Tech Demo, Available to public for testing...", 18);
		demoText.setFormat("Consolas", 18, FlxColor.BLACK);
		add(demoText);

		backButton = new FlxButton(10, 30, "", clickBack);
		backButton.loadGraphic(Asset.buttonBack__png, true, 20, 20);
		backButton.onUp.sound = FlxG.sound.load(Asset.click__wav);
		add(backButton);

		runButton = new FlxButton(0, 30, "New Run", startGame);
		runButton.loadGraphic(Asset.buttonSmall__png, true, 60, 20);
		runButton.onUp.sound = FlxG.sound.load(Asset.click__wav);
		runButton.x = (FlxG.width / 2) - 10 - backButton.width;
		add(runButton);

		FlxG.camera.fade(FlxColor.WHITE, 0.32, true);

		super.create();
	}

	override public function update(elapsed:Float)
	{
		updateCharacterNavigation();
		super.update(elapsed);
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
	}
}
