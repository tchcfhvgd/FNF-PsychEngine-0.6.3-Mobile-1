package; 

import flixel.FlxState;
import flixel.FlxG;
import flixel.input.keyboard.FlxKey;
import flixel.addons.transition.FlxTransitionableState;
import lime.app.Application;
#if hxvlc
import hxvlc.flixel.*;
import hxvlc.util.*;
#end

class Init extends FlxState
{
	override public function create():Void
	{
	    #if VIDEOS_ALLOWED

		var filepath:String = Paths.video(name);
		#if sys
		if(!FileSystem.exists(filepath))
		#else
		if(!OpenFlAssets.exists(filepath))
		#end
		{
			FlxG.log.warn('Couldnt find video file: ' + name);
			startAndEnd();
			return;
		}

		var video:FlxVideo = new FlxVideo();
		video.load(filepath);
		video.play();
		video.onEndReached.add(function()
		{
			video.dispose();
			startAndEnd();
			return;
		}, true);

		#else
		FlxG.log.warn('Platform not supported!');
		startAndEnd();
		return;
		#end
	}
	    
	    super.create();
}

    function startAndEnd()
	{
		 MusicBeatState.switchState(new TitleState());
	}


