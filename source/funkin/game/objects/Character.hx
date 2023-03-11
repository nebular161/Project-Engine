package funkin.game.objects;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.util.FlxTimer;
import funkin.system.Paths;
import funkin.game.CoolUtil;
import flixel.animation.FlxBaseAnimation;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.math.FlxPoint;
import flixel.util.FlxColor;
import haxe.Exception;
import haxe.Json;
import haxe.format.JsonParser;
import haxe.xml.Access;
import lime.utils.Assets;
import openfl.utils.Assets as OpenFlAssets;
#if sys
import sys.FileSystem;
import sys.io.File;
#end
using StringTools;

class Character 
{    
}

class Boyfriend extends Character
{
    public var stunned:Bool = false;
    public function new(x:Float, y:Float, ?char:String = 'bf')
    {
        super(x, y, char, true);
    }
    
    override function update(elapsed:Float)
    {
        if (!debugMode && animation.curAnim != null)
        {
            if (animation.curAnim.name.startsWith('sing'))
            {
                holdTimer += elapsed;
            }
            else
                holdTimer = 0;
    
            if (animation.curAnim.name.endsWith('miss') && animation.curAnim.finished && !debugMode)
            {
                dance();
            }
    
        }
    
        super.update(elapsed);
    }
}