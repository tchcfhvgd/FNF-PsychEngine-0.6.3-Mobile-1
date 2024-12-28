function onCreatePost()
    addHaxeLibrary('Std') -- gradient bar
    runHaxeCode([[
        game.healthBar.createGradientBar([
		0xFF363536, 0xFF363536, 0xFF363536, 0xFF7B6C66, 0xFF7B6C66
    ], [0xFF5180EA], 1, 90);
        
        game.healthBar.updateBar();
    ]])

    -- icon stuff
    makeLuaSprite('iconP3', 'icons/45-tom', 0,0) -- edit this one

    setProperty('iconP3.y', getProperty('iconP1.y') - 30)
    setObjectCamera('iconP3', 'hud')
    addLuaSprite('iconP3')

    setProperty('iconP2.y', getProperty('iconP2.y') + 40)

    setProperty("iconP3._frame.frame.y", 0)
    setProperty("iconP3._frame.frame.width", 150)
    setProperty("iconP3._frame.frame.height", 150)

    setObjectOrder('iconP3', getObjectOrder('iconP2') - 1)
end

function onUpdatePost()
    setProperty('iconP3.x', getProperty('iconP2.x'))
    setProperty('iconP3.scale.x', getProperty('iconP2.scale.x'))
    setProperty('iconP3.scale.y', getProperty('iconP2.scale.y'))
    setProperty('iconP3.color', getProperty('iconP2.color'))
    setProperty('iconP3.alpha', getProperty('iconP2.alpha'))
    setProperty('iconP3.visible', getProperty('iconP2.visible'))
    setProperty('iconP3.origin.x',20)
    setProperty('iconP3.origin.y',80)

    if getProperty('healthBar.percent') >= 81 then -- if you're smart enough you can make it a winning icon
        setProperty("iconP3._frame.frame.x", 150)
    else
        setProperty("iconP3._frame.frame.x", 0)
    end
end


function onCreate()
	luaDebugMode = false
	makeLuaSprite('blackscreen', 'blackscreen', 0, 0)
	makeGraphic('blackscreen', 1920, 1280, '000000')
	setObjectCamera('blackscreen', 'hud')
	addLuaSprite('blackscreen', false)
end

function onSongStart( )
	doTweenAlpha('blackscreencum', 'blackscreen', 0, 2, 'linear')
	triggerEvent('Show Strums', 'True', 'middle')
end

function onBeatHit( )
	if curBeat == 260 then
	setProperty('gf.x', getProperty('gf.x') + 320)
	setProperty('gf.y', getProperty('gf.y') + 70)
	setProperty('boyfriend.x', getProperty('boyfriend.x') + 200)
	setProperty('dad.x', getProperty('dad.x') - 100)
	setProperty('WBBG2.alpha', 0)
	setProperty('WBFG2.alpha', 0)
	setProperty('gf-alt.alpha', 0)
	setProperty('gf.alpha', 0)
	setProperty('boyfriend.alpha', 0)
end
	if curBeat == 324 then
	setProperty('gf.x', getProperty('gf.x') - 320)
	setProperty('gf.y', getProperty('gf.y') - 70)
	setProperty('dad.x', getProperty('dad.x') + 100)
	setProperty('boyfriend.x', getProperty('boyfriend.x') - 200)
	setProperty('WBBG2.alpha', 1)
	setProperty('WBFG2.alpha', 1)
	setProperty('gf-alt.alpha', 1)
	setProperty('dad.alpha', 1)
	setProperty('boyfriend.alpha', 1)
	setProperty('gf.alpha', 1)
end
end

function onStepHit()
	-- badapple events
	if curStep == 1056 then
	doTweenAlpha('susser', 'dad', 1, 0.5, 'circOut')
	doTweenAlpha('sussy', 'gf', 1, 0.5, 'circOut')
	end
	if curStep == 1072 then
	doTweenAlpha('sussy', 'gf', 0, 0.5, 'circOut')
	doTweenAlpha('susser', 'dad', 1, 0.5, 'circOut')
	end
	if curStep == 1088 then
	doTweenAlpha('sussy', 'gf', 1, 0.5, 'circOut')
	doTweenAlpha('susser', 'dad', 0, 0.5, 'circOut')
	end
	if curStep == 1104 then
	doTweenAlpha('sussy', 'gf', 0, 0.5, 'circOut')
	doTweenAlpha('sussed', 'boyfriend', 1, 0.5, 'circOut')
	end
	if curStep == 1168 then
		doTweenAlpha('susser', 'dad', 1, 0.5, 'circOut')
		doTweenAlpha('sussed', 'boyfriend', 0, 0.5, 'circOut')
	end
	if curStep == 1200 then
		doTweenAlpha('sussy', 'gf', 1, 0.5, 'circOut')
		doTweenAlpha('susser', 'dad', 0, 0.5, 'circOut')
	end
	if curStep == 1232 then
		doTweenAlpha('sussy', 'gf', 0, 0.5, 'circOut')
		doTweenAlpha('sussed', 'boyfriend', 1, 0.5, 'circOut')
	end
	if curStep == 1248 then
		doTweenAlpha('sussy', 'gf', 1, 0.5, 'circOut')
		doTweenAlpha('sussed', 'boyfriend', 1, 0.5, 'circOut')
		doTweenAlpha('susser', 'dad', 1, 0.5, 'circOut')
	end
	if curStep == 1275 then
		doTweenAlpha('sussy', 'gf', 0, 0.5, 'circOut')
	end
	-- camera events
	if curBeat > 323 then
		if curStep % 4 == 0 then
			doTweenY('rrr', 'camHUD', -12, stepCrochet*0.002, 'circOut')
			doTweenY('rtr', 'camGame.scroll', 12, stepCrochet*0.002, 'sineIn')
		end
		if curStep % 4 == 2 then
			doTweenY('rir', 'camHUD', 0, stepCrochet*0.002, 'sineIn')
			doTweenY('ryr', 'camGame.scroll', 0, stepCrochet*0.002, 'sineIn')
		end
	if curBeat > 510 then
			doTweenY('rrr', 'camHUD', 0, stepCrochet*0.002, 'circOut')
			doTweenY('rtr', 'camGame.scroll', 0, stepCrochet*0.002, 'sineIn')
			doTweenY('rir', 'camHUD', 0, stepCrochet*0.002, 'sineIn')
			doTweenY('ryr', 'camGame.scroll', 0, stepCrochet*0.002, 'sineIn')
		end
end
end