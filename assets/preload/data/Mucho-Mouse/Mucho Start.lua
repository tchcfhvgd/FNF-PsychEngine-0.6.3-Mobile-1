function applyMarkups(tag, text, colors, seperators)

    if #colors ~= #seperators then
         return
    end

    markups = ""
    for i, color in ipairs(colors) do
        markups = markups .. "new FlxTextFormatMarkerPair(new FlxTextFormat(".. (stringStartsWith(color, "0xFF") and color or "0xFF"..color) .."), '".. seperators[i] .."')" .. (i == #colors and "" or ",")
    end

    obj = luaTextExists(tag) and "game.getLuaObject('".. tag .."')" or runHaxeCode('return game.variables.exists("'.. tag .. '");') and "getVar('".. tag .."')" or "game.".. tag

    runHaxeCode([[
        ]].. obj ..[[.applyMarkup("]].. text ..[[", 
            []].. markups ..[[]
        );
    ]])
end

function round(x, n)
    n = math.pow(10, n or 0)
    x = x * n
    if x >= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end
    return x / n
end

function onCreatePost() 
	makeLuaSprite('bgThing', 'SongBG/localBG/songBG6', 320, 1400)
	setObjectCamera('bgThing', 'other')
    scaleObject('bgThing', 0.4, 0.4)
    addLuaSprite('bgThing', true)
    setScrollFactor('bgThing', 0, 0)
    setObjectOrder('bgThing', 12)

    addHaxeLibrary("FlxTextFormat", "flixel.text")
    addHaxeLibrary("FlxTextFormatMarkerPair", 'flixel.text')

    makeLuaText('startTxt', 'Song: Mucho Mouse\nComposed: JerryWannaRat\nCharted: Maxplay Games', 530, 350, 1420)
    setObjectCamera("startTxt", 'other');
    setTextColor('startTxt', 'FFFFFF')
    setTextSize('startTxt', 40);
    addLuaText("startTxt");
    setTextFont('startTxt', "Determination.ttf")
    setTextAlignment('startTxt', 'left')

    applyMarkups('startTxt', 'Song: @Mucho Mouse@\nComposed: @JerryWannaRat@\nCharted: @Maxplay Games@\n\nRemember To Press @Space@ To Reduce Poison',
    {'FFF000'}, 
    {'@'})	
end

function onSongStart()
    doTweenY('hello', 'bgThing', 400, 1, 'sineInOut')
    doTweenY('helloagain', 'startTxt', 420, 1, 'sineInOut')

    runTimer('getthefuckout-', 4, 1)
    runTimer('murder', 5, 1)
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'getthefuckout-' then
        doTweenY('hello', 'bgThing', 1400, 1, 'sineInOut')
        doTweenY('helloagain', 'startTxt', 1420, 1, 'sineInOut')
    end
    if tag == 'murder' then
        removeLuaSprite('bgThing', true)
        removeLuaSprite('startTxt', true)
    end
end
