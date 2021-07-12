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

class MenuState extends FlxState
{
	var title:FlxText;
	// var fartButton:FlxButton;
	var playButton:FlxButton;
	var specialButton:FlxButton;
	var settingsButton:FlxButton;

	#if desktop
	var exitButton:FlxButton;
	#end

	override public function create()
	{
		// title = new FlxText(0, 20, 0, "Nebula", 22);
		// title.alignment = CENTER;
		// title.screenCenter(FlxAxes.X);
		// add(title);

		final background = new Background(0, 0);
		add(background);

		final title = new Title(50, 50);
		add(title);

		final jnh = new JakeNevesHaxe(220, 200);
		add(jnh);

		// Testing Button
		// fartButton = new FlxButton(0, 0, "Fart");
		// fartButton.onUp.sound = FlxG.sound.load(AssetPaths.fard__wav);
		// fartButton.x = (FlxG.width / 2) - 10 - fartButton.width;
		// fartButton.y = FlxG.height - fartButton.height - 10;
		// add(fartButton);

		playButton = new FlxButton(0, 0, "Start", clickPlay);
		playButton.loadGraphic(AssetPaths.buttonmedium__png, true, 60, 20);
		playButton.onUp.sound = FlxG.sound.load(AssetPaths.click__wav);
		playButton.x = FlxG.width - 120 - playButton.width;
		playButton.y = FlxG.height - playButton.height - 100;
		playButton.screenCenter(FlxAxes.X);
		add(playButton);

		specialButton = new FlxButton(0, 0, "Specials");
		specialButton.loadGraphic(AssetPaths.buttonmedium__png, true, 60, 20);
		specialButton.onUp.sound = FlxG.sound.load(AssetPaths.click__wav);
		specialButton.x = FlxG.width - 120 - specialButton.width;
		specialButton.y = FlxG.height - specialButton.height - 75;
		specialButton.screenCenter(FlxAxes.X);
		add(specialButton);

		settingsButton = new FlxButton(0, 0, "Settings", clickSettings);
		settingsButton.loadGraphic(AssetPaths.buttonmedium__png, true, 60, 20);
		settingsButton.onUp.sound = FlxG.sound.load(AssetPaths.click__wav);
		settingsButton.x = FlxG.width - 120 - settingsButton.width;
		settingsButton.y = FlxG.height - settingsButton.height - 50;
		settingsButton.screenCenter(FlxAxes.X);
		add(settingsButton);

		#if desktop
		settingsButton = new FlxButton(FlxG.width - 28, 8, "x");
		settingsButton.onUp.sound = FlxG.sound.load(AssetPaths.click__wav);
		settingsButton.x = FlxG.width - 120 - settingsButton.width;
		settingsButton.y = FlxG.height - settingsButton.height - 25;
		add(settingsButton);
		#end

		FlxG.camera.fade(FlxColor.WHITE, 0.32, true);

		super.create();
	}

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
			FlxG.camera.fade(FlxColor.BLACK, 0.32, false);
			FlxG.switchState(new PlayState());
		});
	}

	#if desktop
	function clickExit()
	{
		Sys.exit(0);
	}
	#end
}
