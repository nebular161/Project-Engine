package funkin.system;

import flixel.FlxG;
import flixel.graphics.frames.FlxAtlasFrames;
import haxe.io.Path;
import openfl.utils.AssetType;
import openfl.utils.Assets as OpenFlAssets;

using StringTools;

class Paths
{
	inline public static var SOUND_EXT = #if web "mp3" #else "ogg" #end;
}
