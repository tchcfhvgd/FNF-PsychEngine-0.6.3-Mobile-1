local allowCountdown = false
function onEndSong()
    setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 0)
    if not allowCountdown and isStoryMode and not seenCutscene then 
        startVideo('W3 End');
        allowCountdown = true;
          return Function_Stop;
     end
return Function_Continue;
end
