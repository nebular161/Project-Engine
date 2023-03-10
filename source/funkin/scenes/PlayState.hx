package funkin.scenes;

import funkin.game.objects.Character;
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
import funkin.system.Song.SwagSong;

class PlayState extends MusicBeatState
{
	/* Public Variables */
	public static var curStage:String = '';
	public static var SONG:SwagSong;
	public static var isStoryMode:Bool = false;
	public static var storyWeek:Int = 0;
	public static var storyPlaylist:Array<String> = [];
	public static var storyDifficulty:Int = 1;
	public static var deathCounter:Int = 0;
	public static var practiceMode:Bool = false;
	public var iconP1:HealthIcon;
	public var iconP2:HealthIcon;
	public var boyfriend:Character;
	public var dad:Character;
	public var gf:Character;
	public var camHUD:FNFCamera;
	public var camGame:FNFCamera;
	public var notes:FlxTypedGroup<StrumNote>;
	public var songAccuracy:Int = 0.00;

	/* Private Variables */
	private var unspawnNotes:Array<StrumNote>;
	/* Variables */
	var halloweenBG:FlxSprite;
	var isHalloween:Bool = false;
	#if discord_rpc
	// Discord RPC variables
	var storyDifficultyText:String = "";
	var iconRPC:String = "";
	var songLength:Float = 0;
	var detailsText:String = "";
	var detailsPausedText:String = "";
	#end

	override public function create()
	{
		super.create();
		FlxG.mouse.visible = false;
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
