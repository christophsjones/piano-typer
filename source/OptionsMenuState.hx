package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.addons.ui.FlxUIAssets;
import flixel.addons.ui.FlxUIButton;
import flixel.addons.ui.FlxUICheckBox;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;
import flixel.util.FlxSave;

var TITLE = 'Options';
var HELPER_TEXT = 'Practice Options';
var PRACTICE_MODE_TEXT = 'No-fail mode';
var SLOW_MODE_TEXT = 'Slow mode';
var LAYOUT_TEXT = 'Keyboard Layout';

var LAYOUTS = [
	"QWERTY",
	"QWERTZ",
	"AZERTY",
	"DVORAK",
	"COLEMAK",
	"COLEMAK DH"
];

class OptionsMenuState extends FlxState
{
	var layoutButtons:Map<String, FlxUICheckBox> = [];
    var leftColumnLeft = 100;
    var columnTop = 180;
    var rightColumnLeft = 400;

    var optionsTextSize = 16;
    var optionsMarginVertical = 10;
    var optionsTextShift = -8;

	public static var _saveState = new FlxSave();

	override public function create()
	{
        super.create();
		add(new FlxSprite().loadGraphic(AssetPaths.mainMenuBGClean__png));

		var title = new FlxText(0, 0, 0, TITLE, 50);
		title.color = FlxColor.fromString("#111111");
        title.x = leftColumnLeft;
        title.y = 100;
		add(title);

		var layoutText = new FlxText(0, 0, 0, LAYOUT_TEXT, 24);
		layoutText.color = FlxColor.fromString("#111111");
		layoutText.x = leftColumnLeft;
		layoutText.y = columnTop;
		add(layoutText);

		var lcby = layoutText.y + layoutText.height + optionsMarginVertical;
		var lcbi = 0;
		for (l in LAYOUTS)
		{
			var layoutCheckBox = new FlxUICheckBox(leftColumnLeft, lcby + lcbi*20, FlxUIAssets.IMG_CHECK_BOX, FlxUIAssets.IMG_CHECK_MARK, l, 150);
			if (l == PlayState.layout)
			{
				layoutCheckBox.checked = true;
			}
			layoutCheckBox.getLabel().setFormat(AssetPaths.Boogaloo_Regular__ttf, optionsTextSize, FlxColor.fromString("#111111"));
            setLabelButtonColors(layoutCheckBox.button);
			layoutCheckBox.textY = optionsTextShift; // Hack to vertically center the text
			layoutCheckBox.callback = () -> setLayout(l);
			layoutButtons.set(l, layoutCheckBox);
			add(layoutCheckBox);
			lcbi++;
		}

		var helperText:FlxText = new FlxText(0, 0, 0, HELPER_TEXT, 24);
		helperText.color = FlxColor.fromString("#333333");
		helperText.x = rightColumnLeft;
		helperText.y = columnTop;
		add(helperText);

		var practiceCheckBox = new FlxUICheckBox(rightColumnLeft, helperText.y + helperText.height + optionsMarginVertical, FlxUIAssets.IMG_CHECK_BOX, FlxUIAssets.IMG_CHECK_MARK, PRACTICE_MODE_TEXT);
		practiceCheckBox.checked = PlayState.isPractice;
		practiceCheckBox.getLabel().setFormat(AssetPaths.Boogaloo_Regular__ttf, optionsTextSize, FlxColor.fromString("#111111"));
        setLabelButtonColors(practiceCheckBox.button);
		practiceCheckBox.textY = optionsTextShift; // Hack to vertically center the text
		practiceCheckBox.callback = () -> togglePracticeMode();
		add(practiceCheckBox);

		var slowModeCheckBox = new FlxUICheckBox(rightColumnLeft, practiceCheckBox.y + 30, FlxUIAssets.IMG_CHECK_BOX, FlxUIAssets.IMG_CHECK_MARK, SLOW_MODE_TEXT);
		slowModeCheckBox.checked = PlayState.isSlowMode;
		slowModeCheckBox.getLabel().setFormat(AssetPaths.Boogaloo_Regular__ttf, optionsTextSize, FlxColor.fromString("#111111"));
        setLabelButtonColors(slowModeCheckBox.button);
		slowModeCheckBox.textY = optionsTextShift; // Hack to vertically center the text
		slowModeCheckBox.callback = () -> toggleSlowMode();
		add(slowModeCheckBox);

		var calibrate = new FlxUIButton(rightColumnLeft, columnTop - 60, "Calibrate", () -> FlxG.switchState(new CalibrationState()));
		calibrate.loadGraphic(AssetPaths.menuButton__png, true, 333, 102);
		calibrate.scale.set(0.35, 0.5);
		calibrate.updateHitbox();
		calibrate.label.fieldWidth = calibrate.width;
		calibrate.label.setFormat(AssetPaths.Boogaloo_Regular__ttf, optionsTextSize, FlxColor.fromString("#333333"));
		calibrate.autoCenterLabel();
		add(calibrate);

		var back = new FlxSprite(419.7, 495.82).loadGraphic(AssetPaths.escKey__png);
		add(back);
		var backText = new FlxText(432, 588, 0, "Return to menu", 20);
		backText.setFormat(AssetPaths.Boogaloo_Regular__ttf, 20, FlxColor.fromString("#1E489B"));
		add(backText);

	}

	override public function update(elapsed:Float)
	{
        super.update(elapsed);

		if (FlxG.keys.justPressed.ESCAPE)
			FlxG.switchState(new MenuState());
    }

    function setLabelButtonColors(button: FlxUIButton)
    {
        button.up_color = 0x111111;
		button.down_color = 0x111111;
		button.over_color = 0x555555;
		button.up_toggle_color = 0x111111;
		button.down_toggle_color = 0x111111;
		button.over_toggle_color = 0x555555;
    }

	function togglePracticeMode()
	{
		PlayState.isPractice = !PlayState.isPractice;
		_saveState.data.isPractice = PlayState.isPractice;
		_saveState.flush();
	}

	function toggleSlowMode()
	{
		PlayState.isSlowMode = !PlayState.isSlowMode;
		_saveState.data.isSlowMode = PlayState.isSlowMode;
		_saveState.flush();
	}

	function setLayout(layout:String)
	{
		PlayState.layout = layout;
		_saveState.data.layout = PlayState.layout;
		_saveState.flush();
		// unset other checkboxes
		for (l in LAYOUTS)
		{
			if (l != layout)
			{
				layoutButtons[l].checked = false;
			}
		}
		layoutButtons[layout].checked = true;
	}

}