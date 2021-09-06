package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxAxes;
import flixel.util.FlxColor;
import title.Background;
import title.JakeNevesHaxe;
import title.Title;

class TitleState extends FlxState
{
	var title:FlxText;
	// var fartButton:FlxButton;
	var playButton:FlxButton;
	var specialButton:FlxButton;
	var settingsButton:FlxButton;

	var versionText:FlxText;
	var infoText:FlxText;

	#if desktop
	var exitButton:FlxButton;
	#end

	override public function create()
	{
		// title = new FlxText(0, 20, 0, "Nebula", 22);
		// title.alignment = CENTER;
		// title.screenCenter(FlxAxes.X);
		// add(title);

		if (FlxG.sound.music == null)
		{
			FlxG.sound.playMusic(Assets.title__ogg);
		}

		final background = new Background(0, 0);
		add(background);

		final title = new Title(280, 100);
		add(title);

		versionText = new FlxText(0, 560, 0, "v0.01 TECH DEMO", 18);
		versionText.setFormat("Consolas", 18, FlxColor.WHITE);
		add(versionText);

		infoText = new FlxText(0, 580, 0, "2021 Jake Neves" + "\nDo Not Distribute", 18);
		infoText.setFormat("Consolas", 18, FlxColor.WHITE);
		add(infoText);

		// Testing Button
		// fartButton = new FlxButton(0, 0, "Fart");
		// fartButton.onUp.sound = FlxG.sound.load(Assets.fard__wav);
		// fartButton.x = (FlxG.width / 2) - 10 - fartButton.width;
		// fartButton.y = FlxG.height - fartButton.height - 10;
		// add(fartButton);

		playButton = new FlxButton(0, 0, "Venture Fourth", clickPlay);
		playButton.loadGraphic(Assets.buttonlarge__png, true, 120, 20);
		playButton.onUp.sound = FlxG.sound.load(Assets.click__wav);
		playButton.x = FlxG.width - 120 - playButton.width;
		playButton.y = FlxG.height - playButton.height - 400;
		playButton.screenCenter(FlxAxes.X);
		add(playButton);

		specialButton = new FlxButton(0, 0, "Specials Features");
		specialButton.loadGraphic(Assets.buttonlarge__png, true, 120, 20);
		specialButton.onUp.sound = FlxG.sound.load(Assets.click__wav);
		specialButton.x = FlxG.width - 120 - specialButton.width;
		specialButton.y = FlxG.height - specialButton.height - 375;
		specialButton.screenCenter(FlxAxes.X);
		add(specialButton);

		settingsButton = new FlxButton(0, 0, "Settings", clickSettings);
		settingsButton.loadGraphic(Assets.buttonlarge__png, true, 120, 20);
		settingsButton.onUp.sound = FlxG.sound.load(Assets.click__wav);
		settingsButton.x = FlxG.width - 120 - settingsButton.width;
		settingsButton.y = FlxG.height - settingsButton.height - 350;
		settingsButton.screenCenter(FlxAxes.X);
		add(settingsButton);

		#if desktop
		exitButton = new FlxButton(780, 0, "", clickExit);
		exitButton.loadGraphic(Assets.buttonExit__png, true, 20, 20);
		exitButton.onUp.sound = FlxG.sound.load(Assets.click__wav);
		add(exitButton);
		#end

		FlxG.camera.fade(FlxColor.WHITE, 0.32, true);

		super.create();
	}

	#if desktop
	function clickExit()
	{
		Sys.exit(0);
	}
	#end

	function clickSettings()
	{
		FlxG.camera.fade(FlxColor.WHITE, 0.05, false, function()
		{
			FlxG.switchState(new SettingsState());
		});
	}

	function clickPlay()
	{
		FlxG.camera.fade(FlxColor.WHITE, 0.05, false, function()
		{
			FlxG.switchState(new MenuState());
		});
	}
}
