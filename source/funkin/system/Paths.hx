package funkin.system;

@:build(flixel.system.FlxAssets.buildFileReferences("assets", true))
class Paths
{
	inline public static var SOUND_EXT = #if web "mp3" #else "ogg" #end;
}
