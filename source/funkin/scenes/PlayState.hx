package funkin.scenes;

import funkin.game.objects.HealthIcon;
import flixel.FlxG;
import flixel.FlxGame;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.system.FlxSound;
import flixel.text.FlxText;
import funkin.game.objects.StrumNote;
import funkin.system.MusicBeatState;
import funkin.system.FNFCamera;
import haxe.Json;
import lime.utils.Assets;
#if discord_rpc
import funkin.system.Discord.DiscordClient;
#end

class PlayState extends MusicBeatState
{
	/* Public Variables */
	public var iconP1:HealthIcon;
	public var iconP2:HealthIcon;

	FlxG.mouse.visible = false;

	override public function create()
	{
		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
