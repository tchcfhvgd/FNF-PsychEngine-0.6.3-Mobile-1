function onCreatePost()
    if shadersEnabled then -- so it won't give you a black screen (same for snow thing)
    makeLuaSprite("Shader1")
    setSpriteShader("Shader1", "rain")
	setShaderFloat('Shader1', 'iTimescale', 0.7)

    makeLuaSprite("Shader2")
    setSpriteShader("Shader2", "shit")
	setShaderFloat('Shader2', 'blueOpac', 1.3)
    
    runHaxeCode([[
    trace(ShaderFilter);
    game.camGame.setFilters([new ShaderFilter(game.getLuaObject("Shader1").shader),new ShaderFilter(game.getLuaObject("Shader2").shader)]);

    game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("Shader2").shader)]);
    ]])
    end
end

local myRain = 0
function onUpdate(elapsed)
    if shadersEnabled then
		setShaderFloat('Shader1', 'iTime', os.clock() - 2)
		setShaderFloat('Shader2', 'iTime', os.clock())
		setShaderFloat('Shader1', 'iIntensity', myRain)
		if curStep ~= 383 then
		myRain = myRain + 0.000006
		else
		myRain = 0.06
		end
    end
 end

function onStepHit()
	if curStep == 896 then
--hide you I
	doTweenAlpha('AlphaTween1', 'healthBarBG', 0, 0.0000000001)
	doTweenAlpha('AlphaTween2', 'healthBar', 0, 0.0000000001)
	doTweenAlpha('AlphaTween4', 'iconP1', 0, 0.0000000001)
	doTweenAlpha('AlphaTween5', 'iconP2', 0, 0.0000000001)
	setProperty('HB.visible', false)
	setProperty('Health.visible', false)
end
	if curStep == 912 then
	removeLuaSprite('blue',true)

	makeLuaSprite('blue2', 'BG/Sad/blue2', -500, -10);
	scaleObject('blue2', 1, 1);
	addLuaSprite('blue2',false)
end
end