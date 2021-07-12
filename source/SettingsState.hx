package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxBar;
import flixel.ui.FlxButton;
import flixel.util.FlxAxes;
import flixel.util.FlxColor;
import flixel.util.FlxSave;
import title.Background;

class SettingsState extends FlxState
{
	var title:FlxText;
	var volText:FlxText;
	var volAmountText:FlxText;

	var save:FlxSave;

	var backButton:FlxButton;
	var formatButton:FlxButton;
	var volUpButton:FlxButton;
	var volDownButton:FlxButton;

	var volumeBar:FlxBar;

	override public function create():Void
	{
		final background = new Background(0, 0);
		add(background);

		title = new FlxText(0, 20, 0, "Settings", 22);
		title.alignment = CENTER;
		title.screenCenter(FlxAxes.X);
		add(title);

		volText = new FlxText(0, title.y + title.height + 10, 0, "Volume", 8);
		volText.alignment = CENTER;
		volText.screenCenter(FlxAxes.X);
		add(volText);

		volDownButton = new FlxButton(8, volText.y + volText.height + 2, "-", clickVolDown);
		volDownButton.loadGraphic(AssetPaths.button__png, true, 20, 20);
		volDownButton.onUp.sound = FlxG.sound.load(AssetPaths.click__wav);
		add(volDownButton);

		volUpButton = new FlxButton(FlxG.width - 28, volDownButton.y, "+", clickVolUp);
		volUpButton.loadGraphic(AssetPaths.button__png, true, 20, 20);
		volUpButton.onUp.sound = FlxG.sound.load(AssetPaths.click__wav);
		add(volUpButton);

		volumeBar = new FlxBar(volDownButton.x + volDownButton.width + 4, volDownButton.y, LEFT_TO_RIGHT, Std.int(FlxG.width - 64),
			Std.int(volUpButton.height));
		volumeBar.createFilledBar(0xff2b2b2b, 0xff2b2b2b /*FlxColor.BLACK*/, true, FlxColor.GRAY);
		add(volumeBar);

		volAmountText = new FlxText(0, 0, 200, (FlxG.sound.volume * 100) + "%", 8);
		volAmountText.alignment = CENTER;
		volAmountText.borderStyle = FlxTextBorderStyle.OUTLINE;
		volAmountText.borderColor = 0xff000000;
		volAmountText.y = volumeBar.y + (volumeBar.height / 2) - (volAmountText.height / 2);
		volAmountText.screenCenter(FlxAxes.X);
		add(volAmountText);

		backButton = new FlxButton(0, 0, "Back", clickBack);
		backButton.loadGraphic(AssetPaths.buttonmedium__png, true, 60, 20);
		backButton.onUp.sound = FlxG.sound.load(AssetPaths.click__wav);
		backButton.x = (FlxG.width / 2) - 10 - backButton.width;
		backButton.y = FlxG.height - backButton.height - 10;
		add(backButton);

		formatButton = new FlxButton(0, 0, "Format", clickFormat);
		formatButton.loadGraphic(AssetPaths.buttonmedium__png, true, 60, 20);
		formatButton.onUp.sound = FlxG.sound.load(AssetPaths.dataFormat__wav);
		formatButton.x = FlxG.width - 120 - formatButton.width;
		formatButton.y = FlxG.height - formatButton.height - 100;
		formatButton.screenCenter(FlxAxes.X);
		add(formatButton);

		save = new FlxSave();
		save.bind("NebulaRunData");

		FlxG.camera.fade(FlxColor.WHITE, 0.32, true);

		super.create();
	}

	function clickBack()
	{
		save.close();
		FlxG.camera.fade(FlxColor.WHITE, 0.05, false, function()
		{
			FlxG.switchState(new MenuState());
		});
	}

	function clickFormat()
	{
		save.erase();
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
