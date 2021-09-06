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

	var backButton:FlxButton;
	var formatButton:FlxButton;
	var volUpButton:FlxButton;
	var volDownButton:FlxButton;

	var save:FlxSave;

	// var fullscreenButton:FlxButton;
	var volumeBar:FlxBar;

	override public function create():Void
	{
		final background = new Background(0, 0);
		add(background);

		title = new FlxText(0, 20, 0, "Settings", 22);
		title.setFormat("Arial", 32, FlxColor.WHITE);
		title.alignment = CENTER;
		title.screenCenter(FlxAxes.X);
		add(title);

		volText = new FlxText(0, title.y + title.height + 10, 0, "Volume", 8);
		volText.alignment = CENTER;
		volText.screenCenter(FlxAxes.X);
		add(volText);

		volDownButton = new FlxButton(8, volText.y + volText.height + 2, "-", clickVolDown);
		volDownButton.loadGraphic(Assets.button__png, true, 20, 20);
		volDownButton.onUp.sound = FlxG.sound.load(Assets.click__wav);
		add(volDownButton);

		volUpButton = new FlxButton(FlxG.width - 28, volDownButton.y, "+", clickVolUp);
		volUpButton.loadGraphic(Assets.button__png, true, 20, 20);
		volUpButton.onUp.sound = FlxG.sound.load(Assets.click__wav);
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
		backButton.loadGraphic(Assets.buttonmedium__png, true, 60, 20);
		backButton.onUp.sound = FlxG.sound.load(Assets.click__wav);
		backButton.x = (FlxG.width / 2) - 10 - backButton.width;
		backButton.y = FlxG.height - backButton.height - 10;
		add(backButton);

		// #if desktop
		// fullscreenButton = new FlxButton(0, volumeBar.y + volumeBar.height + 8, FlxG.fullscreen ? "Fullscreen" : "Windowed", clickFullscreen);
		// fullscreenButton.screenCenter(FlxAxes.X);
		// add(fullscreenButton);
		// #end

		formatButton = new FlxButton(0, 0, "Format", clickFormat);
		formatButton.loadGraphic(Assets.buttonmedium__png, true, 60, 20);
		formatButton.onUp.sound = FlxG.sound.load(Assets.dataFormat__wav);
		formatButton.x = FlxG.width - 120 - formatButton.width;
		formatButton.y = FlxG.height - formatButton.height - 100;
		formatButton.screenCenter(FlxAxes.X);
		add(formatButton);

		FlxG.camera.fade(FlxColor.WHITE, 0.32, true);

		save = new FlxSave();
		save.bind('nebula', 'tetrasoft');

		super.create();
	}

	// #if desktop
	// function clickFullscreen()
	// {
	//	FlxG.fullscreen = !FlxG.fullscreen;
	//	fullscreenButton.text = FlxG.fullscreen ? "Fullscreen" : "Windowed";
	//	save.data.fullscreen = FlxG.fullscreen;
	// }
	// #end

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
		Cache.save.data.volume = FlxG.sound.volume;
		updateVolume();
	}

	function clickVolUp()
	{
		FlxG.sound.volume += 0.1;
		Cache.save.data.volume = FlxG.sound.volume;
		updateVolume();
	}
}
