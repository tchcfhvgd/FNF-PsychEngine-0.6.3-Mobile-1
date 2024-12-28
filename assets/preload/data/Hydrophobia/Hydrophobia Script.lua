local hardcore = false
local chromaticShit = 0

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

function boundTo(value, min, max)
    return math.max(min, math.min(max, value))
end

function math.lerp(from,to,i) return from+(to-from)*i end

function setChrome(chromeOffset)
    setShaderFloat("Shader1", "rOffset", chromeOffset);
    setShaderFloat("Shader1", "gOffset", 0.0);
    setShaderFloat("Shader1", "bOffset", chromeOffset * -1);
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
    chromaticShit = chromaticShit + 0.007;
end

function onUpdatePost(elapsed)
	if getProperty('health') > 1.6 then
		setHealthBarColors('494141','5180EA')
	else
		setHealthBarColors('6B5E5E','5180EA')
	end
end

function onUpdate(elapsed)
	if (shadersEnabled) and hardcore then
		chromaticShit = math.lerp(chromaticShit, 0, boundTo(elapsed * 20, 0, 1));
		setChrome(chromaticShit);
	end
end


function onCreate()
	makeLuaSprite('blackscreen', 'blackscreen', 0, -200)
	makeGraphic('blackscreen', 1920, 1280, '000000')
	setObjectCamera('blackscreen', 'HUD')
	addLuaSprite('blackscreen', false)

	setProperty('doghouse2.alpha', 0)

	setPropertyFromClass('ClientPrefs', 'ghostTapping', true);
end

function onCreatePost()
    addHaxeLibrary("FlxTextFormat", "flixel.text")
    addHaxeLibrary("FlxTextFormatMarkerPair", 'flixel.text')

    makeLuaText('warningTxt', '[Warning!] Ghost Tapping is forced off!', 0, 20, 350)
    setObjectCamera("warningTxt", 'hud');
    setTextColor('warningTxt', 'FFFFFF')
    setTextSize('warningTxt', 25);
    addLuaText("warningTxt");
	setProperty('warningTxt.alpha', 0)
    setTextFont('warningTxt', "vcr.ttf")
    setTextAlignment('warningTxt', 'left')
    applyMarkups('warningTxt', '@[Warning!]@ Ghost Tapping is forced off!',
    {'FF0000'}, 
    {'@'})

    makeLuaSprite("Shader1")
    setSpriteShader("Shader1", "chromaticGlitch")

	makeLuaSprite("Shader2")
	setSpriteShader("Shader2", "shit")
	setShaderFloat("Shader2", "blueOpac", 1.3)

	setProperty('camGame.alpha', 0)

    runHaxeCode([[
    trace(ShaderFilter);
    game.camGame.setFilters([new ShaderFilter(game.getLuaObject("Shader1").shader),new ShaderFilter(game.getLuaObject("Shader2").shader)]);
    
    game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("Shader1").shader),new ShaderFilter(game.getLuaObject("Shader2").shader)]);
    ]])
end

function onStepHit()
	if curStep == 1 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0, 5, 'linear')
	doTweenAlpha('camThing', 'camGame', 1, 5, 'linear')
end
	if curStep == 512 then
	hardcore = true
	setProperty('doghouse.alpha', 0)
	setProperty('doghouse2.alpha', 1)
end
    if curStep == 1024 then
	hardcore = false
	end
	if curStep == 1084 then
	setProperty('doghouse.alpha', 1)
	setProperty('doghouse2.alpha', 0)
end
	if curStep == 1284 and getPropertyFromClass('ClientPrefs','mechanicsOn') then
	setPropertyFromClass('ClientPrefs', 'ghostTapping', false);
	doTweenAlpha('sigma', 'warningTxt', 1,1, 'circOut')
end
    if curStep == 1350 and getPropertyFromClass('ClientPrefs','mechanicsOn') then
	doTweenAlpha('sigma', 'warningTxt', 0,1, 'circOut')
	end
	if curStep == 1664 then
	hardcore = true
	setProperty('doghouse.alpha', 0)
	setProperty('doghouse2.alpha', 1)
end
	if curStep == 1920 then
	hardcore = false
	setPropertyFromClass('ClientPrefs', 'ghostTapping', true);
end
end

function onGameOver()
	setPropertyFromClass('ClientPrefs', 'ghostTapping', true);
end

function onDestroy()
	setPropertyFromClass('ClientPrefs', 'ghostTapping', true);
end
