package; 

import flixel.FlxState;
import flixel.FlxG;
import flixel.input.keyboard.FlxKey;
import flixel.addons.transition.FlxTransitionableState;
import openfl.utils.Assets as OpenFlAssets;
#if sys
import sys.FileSystem;
#end
#if hxvlc
import hxvlc.flixel.*;
import hxvlc.util.*;
#end

class Init extends FlxState
{
	override public function create():Void
	{
	        Paths.clearStoredMemory();
		Paths.clearUnusedMemory();

		#if LUA_ALLOWED
		Paths.pushGlobalMods();
		#end
		// Just to load a mod on start up if ya got one. For mods that change the menu music and bg
		WeekData.loadTheFirstEnabledMod();
		
		FlxG.game.focusLostFramerate = 60;
		
		FlxG.keys.preventDefaultKeys = [TAB];

		PlayerSettings.init();
		
		Highscore.load();
		
		if(FlxG.save.data != null && FlxG.save.data.fullscreen)
			{
				FlxG.fullscreen = FlxG.save.data.fullscreen;
				//trace('LOADED FULLSCREEN SETTING!!');
			}
			persistentUpdate = true;
			persistentDraw = true;
			mobile.MobileData.init();

		if (FlxG.save.data.weekCompleted != null)
		{
			StoryMenuState.weekCompleted = FlxG.save.data.weekCompleted;
		}
		
		FlxG.mouse.visible = false;
		ClientPrefs.loadPrefs();
	    
	    #if VIDEOS_ALLOWED

		var filepath:String = Paths.video("BasementIntro");
		#if sys
		if(!FileSystem.exists(filepath))
		#else
		if(!OpenFlAssets.exists(filepath))
		#end
		{
			FlxG.log.warn('Couldnt find video file: ' + 'BasementIntro');
			FlxTransitionableState.skipNextTransIn = true;
			FlxTransitionableState.skipNextTransOut = true;
			MusicBeatState.switchState(new TitleState());
		}

		var video:FlxVideo = new FlxVideo();
		video.load(filepath);
		video.play();
		video.onEndReached.add(function()
		{
			video.dispose();
			FlxTransitionableState.skipNextTransIn = true;
			FlxTransitionableState.skipNextTransOut = true;
			MusicBeatState.switchState(new TitleState());
		}, true);

		#else
		FlxG.log.warn('Platform not supported!');
		FlxTransitionableState.skipNextTransIn = true;
		FlxTransitionableState.skipNextTransOut = true;
		MusicBeatState.switchState(new TitleState());
		#end
	
	        super.create();
	}
}


