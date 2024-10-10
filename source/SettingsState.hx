package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.system.scaleModes.FillScaleMode;
import flixel.system.scaleModes.FixedScaleMode;
import flixel.text.FlxText;
import flixel.ui.FlxBar;
import flixel.ui.FlxButton;
import flixel.util.FlxAxes;
import flixel.util.FlxColor;
import flixel.util.FlxSave;
import util.Changeables;

class SettingsState extends FlxState
{
	var volumeBar:FlxBar;
	var volAmountText:FlxText;

	var save:FlxSave;

	override public function create():Void
	{
		var bg:FlxSprite = new FlxSprite().loadGraphic(Asset.image("title/settingsbg"), false, 800, 600);
		bg.setGraphicSize(Std.int(bg.width * 1.0));
		bg.screenCenter();
		add(bg);

		var title:FlxText = new FlxText(0, 20, 0, "Settings", 22);
		title.setFormat("Arial", 32, FlxColor.WHITE);
		title.alignment = CENTER;
		title.screenCenter(FlxAxes.X);
		add(title);

		var volText:FlxText = new FlxText(0, title.y + title.height + 10, 0, "Volume", 8);
		volText.alignment = CENTER;
		volText.screenCenter(FlxAxes.X);
		add(volText);

		var volDownButton:FlxButton = new FlxButton(8, volText.y + volText.height + 2, "-", clickVolDown);
		volDownButton.loadGraphic(Asset.image("ui/buttonSquare"), true, 20, 20);
		volDownButton.onUp.sound = FlxG.sound.load(Asset.getSound("general/click"));
		add(volDownButton);

		var volUpButton:FlxButton = new FlxButton(FlxG.width - 28, volDownButton.y, "+", clickVolUp);
		volUpButton.loadGraphic(Asset.image("ui/buttonSquare"), true, 20, 20);
		volUpButton.onUp.sound = FlxG.sound.load(Asset.getSound("general/click"));
		add(volUpButton);

		volumeBar = new FlxBar(volDownButton.x + volDownButton.width + 4, volDownButton.y, LEFT_TO_RIGHT, Std.int(FlxG.width - 64),
			Std.int(volUpButton.height));
		volumeBar.createFilledBar(FlxColor.BLACK, 0xff2b2b2b, true, FlxColor.GRAY);
		add(volumeBar);

		volAmountText = new FlxText(0, 0, 200, (FlxG.sound.volume * 100) + "%", 8);
		volAmountText.alignment = CENTER;
		volAmountText.borderStyle = FlxTextBorderStyle.OUTLINE;
		volAmountText.borderColor = 0xff000000;
		volAmountText.y = volumeBar.y + (volumeBar.height / 2) - (volAmountText.height / 2);
		volAmountText.screenCenter(FlxAxes.X);
		add(volAmountText);

		var backButton:FlxButton = new FlxButton(0, 0, "Back", clickBack);
		backButton.loadGraphic(Asset.image("ui/buttonSmall"), true, 60, 20);
		backButton.onUp.sound = FlxG.sound.load(Asset.getSound("general/click"));
		backButton.x = (FlxG.width / 2) - 10 - backButton.width;
		backButton.y = FlxG.height - backButton.height - 10;
		add(backButton);

		/*#if desktop
			var fullscreenButton:FlxButton = new FlxButton(0, volumeBar.y + volumeBar.height + 8, "Toggle Fullscreen", clickFullscreen);
			fullscreenButton.screenCenter(FlxAxes.X);
			add(fullscreenButton);
			#end */

		var formatButton:FlxButton = new FlxButton(0, 0, "Format", clickFormat);
		formatButton.loadGraphic(Asset.image("ui/buttonSmall"), true, 60, 20);
		formatButton.onUp.sound = FlxG.sound.load(Asset.getSound("general/dataFormat"));
		formatButton.x = FlxG.width - 120 - formatButton.width;
		formatButton.y = FlxG.height - formatButton.height - 100;
		formatButton.screenCenter(FlxAxes.X);
		add(formatButton);

		FlxG.camera.fade(FlxColor.WHITE, 0.32, true);

		save = new FlxSave();
		save.bind('nebula', 'tetrasoft');

		super.create();
	}

	/*#if desktop
		function clickFullscreen()
		{
			Changables.fullscreen = !Changables.fullscreen;
			// fullscreenButton.text = Changables.fullscreen ? "Fullscreen" : "Windowed";
			save.data.fullscreen = Changables.fullscreen;
		}
		#end */
	function clickBack()
	{
		save.close();
		FlxG.camera.fade(FlxColor.WHITE, 0.05, false, function()
		{
			FlxG.switchState(new TitleState());
		});
	}

	function clickFormat()
	{
		save.erase();
		Changables.extraDetails = true;
		FlxG.sound.volume = 1.0;
		FlxG.camera.fade(FlxColor.RED, 0.32, true);
	}

	function updateVolume()
	{
		var volume:Int = Math.round(FlxG.sound.volume * 100);
		volumeBar.value = volume;
		volAmountText.text = volume + "%";
	}

	function clickVolDown()
	{
		FlxG.sound.volume -= 0.1;
		save.data.volume = FlxG.sound.volume;
		updateVolume();
	}

	function clickVolUp()
	{
		FlxG.sound.volume += 0.1;
		save.data.volume = FlxG.sound.volume;
		updateVolume();
	}
}
