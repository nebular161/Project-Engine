package funkin.system;

import flixel.FlxGame;
import funkin.scenes.menus.TitleState;
import openfl.display.Sprite;
#if sys
import sys.FileSystem;
import sys.io.File;
#end

class Main extends Sprite
{
	public function new()
	{
		super();
		addChild(new FlxGame(0, 0, TitleState));
	}
}
