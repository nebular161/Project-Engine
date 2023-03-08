package funkin.scenes.menus;

import flixel.FlxG;
import funkin.game.objects.HealthIcon;
import funkin.scenes.PlayState;
#if discord_rpc
import funkin.system.Discord.DiscordClient;
#end

class FreeplayMenu
{
	#if discord_rpc
	DiscordClient.changePresence('Freeplay Menu', null);
	#end
}
