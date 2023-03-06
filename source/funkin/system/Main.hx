package funkin.system;

import flixel.FlxGame;
import funkin.scenes.PlayState;
import openfl.display.Sprite;

class Main extends Sprite
{
	public function new()
	{
		super();
		addChild(new FlxGame(0, 0, Gameplay)); // will change this
	}
}
