package;

import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.math.FlxRandom;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.ui.FlxButton;
import flixel.util.FlxAxes;
import flixel.util.FlxColor;
import flixel.util.FlxSave;
import flixel.util.FlxTimer;
import lime.utils.Assets;
import util.Changeables.Changables;
import util.NebulaGeneralState;

class TitleState extends FlxState
{
	// var title:FlxText;
	// var fartButton:FlxButton;
	var save:FlxSave;

	var title:FlxObject;

	#if desktop
	var exitButton:FlxButton;
	#end

	override public function create()
	{
		// title = new FlxText(0, 20, 0, "Nebula", 22);
		// title.alignment = CENTER;
		// title.screenCenter(FlxAxes.X);
		// add(title);

		FlxG.autoPause = false;

		if (FlxG.sound.music == null)
		{
			FlxG.sound.playMusic(Asset.getMusic("title"));
		}

		// 25% chance to get an alternate title screen background
		if (FlxG.random.bool(25))
		{
			var bg:FlxSprite = new FlxSprite().loadGraphic(Asset.image("title/titlebg2"), false, 800, 600);
			bg.setGraphicSize(Std.int(bg.width));
			bg.screenCenter(FlxAxes.X);
			add(bg);
		}
		else
		{
			var bg:FlxSprite = new FlxSprite().loadGraphic(Asset.image("title/titlebg1"), false, 800, 600);
			bg.setGraphicSize(Std.int(bg.width));
			bg.screenCenter(FlxAxes.X);
			add(bg);
		}

		title = new FlxSprite().loadGraphic(Asset.image("title/nebula"), false, 236, 52);
		title.screenCenter(FlxAxes.X);
		title.y = 100;
		add(title);

		// extraDetailsTitleUpdate();

		var versionText = new FlxText(0, 560, 0, "v" + Main.versionNumber + " TECH DEMO", 18);
		versionText.setFormat("Consolas", 18, FlxColor.WHITE);
		add(versionText);

		var infoText = new FlxText(0, 580, 0, "2021 Jake Neves" + "\nDo Not Distribute", 18);
		infoText.setFormat("Consolas", 18, FlxColor.WHITE);
		add(infoText);

		// Testing Button
		// fartButton = new FlxButton(0, 0, "Fart");
		// fartButton.onUp.sound = FlxG.sound.load(Assets.fard__wav);
		// fartButton.x = (FlxG.width / 2) - 10 - fartButton.width;
		// fartButton.y = FlxG.height - fartButton.height - 10;
		// add(fartButton);

		var playButton = new FlxButton(0, 0, "Start", clickPlay);
		playButton.loadGraphic(Asset.image("ui/buttonMedium"), true, 120, 20);
		playButton.onUp.sound = FlxG.sound.load(Asset.getSound("general/click"));
		playButton.x = FlxG.width - 120 - playButton.width;
		playButton.y = FlxG.height - playButton.height - 400;
		playButton.screenCenter(FlxAxes.X);
		add(playButton);

		var specialButton = new FlxButton(0, 0, "Specials Features");
		specialButton.loadGraphic(Asset.image("ui/buttonMedium"), true, 120, 20);
		specialButton.onUp.sound = FlxG.sound.load(Asset.getSound("general/click"));
		specialButton.x = FlxG.width - 120 - specialButton.width;
		specialButton.y = FlxG.height - specialButton.height - 375;
		specialButton.screenCenter(FlxAxes.X);
		add(specialButton);

		var settingsButton = new FlxButton(0, 0, "Settings", clickSettings);
		settingsButton.loadGraphic(Asset.image("ui/buttonMedium"), true, 120, 20);
		settingsButton.onUp.sound = FlxG.sound.load(Asset.getSound("general/click"));
		settingsButton.x = FlxG.width - 250 - settingsButton.width;
		settingsButton.y = FlxG.height - settingsButton.height - 350;
		settingsButton.screenCenter(FlxAxes.X);
		add(settingsButton);

		var issuesButton = new FlxButton(0, 0, "Issues", clickIssues);
		issuesButton.loadGraphic(Asset.image("ui/buttonSmall"), true, 60, 20);
		issuesButton.onUp.sound = FlxG.sound.load(Asset.getSound("general/click"));
		issuesButton.x = FlxG.width - 250 - issuesButton.width;
		issuesButton.y = FlxG.height - issuesButton.height - 325;
		issuesButton.screenCenter(FlxAxes.X);
		add(issuesButton);

		#if desktop
		var exitButton = new FlxButton(780, 0, "", clickExit);
		exitButton.loadGraphic(Asset.image("buttonExit"), true, 20, 20);
		exitButton.onUp.sound = FlxG.sound.load(Asset.getSound("general/click"));
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

	function clickIssues()
	{
		NebulaGeneralState.openHyperlink('https://github.com/JakeNeves/Nebula/issues');
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
			FlxG.switchState(new MenuState());
		});
	}
}
