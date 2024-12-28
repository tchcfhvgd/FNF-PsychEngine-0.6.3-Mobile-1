function onCreate()
	addCharacterToList(alien-cat,'dad')
	addCharacterToList(alien-mouse,'dad')
	addCharacterToList(gf,'gf')
	addCharacterToList(bf,'bf')
end

function onCreatePost()
    -- icon stuff
    makeLuaSprite('iconP3', 'icons/alien-cat', 0,0) -- edit this one

    setProperty('iconP3.y', (downscroll and getProperty('iconP1.y') + 50 or getProperty('iconP1.y') - 50))
    setObjectCamera('iconP3', 'hud')
    addLuaSprite('iconP3')

    setProperty("iconP3._frame.frame.y", 0)
    setProperty("iconP3._frame.frame.width", 150)
    setProperty("iconP3._frame.frame.height", 150)
    setProperty('iconP3.alpha', 0)

    setObjectOrder('iconP3', getObjectOrder('iconP2') - 1)
end

function onUpdatePost()
    setProperty('iconP3.x', getProperty('iconP2.x') - 50)
    setProperty('iconP3.scale.x', getProperty('iconP2.scale.x'))
    setProperty('iconP3.scale.y', getProperty('iconP2.scale.y'))
    setProperty('iconP3.color', getProperty('iconP2.color'))
    setProperty('helthBar2.alpha', getProperty('healthBar.alpha'))
    setProperty('iconP3.origin.x',20)
    setProperty('iconP3.origin.y',80)

    if getProperty('healthBar.percent') >= 81 then -- if you're smart enough you can make it a winning icon
        setProperty("iconP3._frame.frame.x", 150)
    else
        setProperty("iconP3._frame.frame.x", 0)
    end
end

function onStepHit()
    if curStep == 864 then
    doTweenAlpha('tween1', 'healthBar', 0, 0.5, 'linear')
    doTweenAlpha('tween2', 'HB', 0, 0.5, 'linear')
    doTweenAlpha('tween3', 'iconP1', 0, 0.5, 'linear')
    doTweenAlpha('tween4', 'iconP2', 0, 0.5, 'linear')
    end
    if curStep == 1008 then
        if not downscroll then
        addHaxeLibrary('Std') -- gradient bar
        runHaxeCode([[
            game.healthBar.createGradientBar([
            0xFF4C4E7A, 0xFF4C4E7A, 0xFF4C4E7A, 0xFF9E5D1D, 0xFF9E5D1D
        ], [0xFF5180EA], 1, 90);
            
            game.healthBar.updateBar();
        ]])
        else
            addHaxeLibrary('Std') -- gradient bar
            runHaxeCode([[
                game.healthBar.createGradientBar([
                0xFF9E5D1D, 0xFF9E5D1D, 0xFF9E5D1D, 0xFF4C4E7A, 0xFF4C4E7A
            ], [0xFF5180EA], 1, 90);
                
                game.healthBar.updateBar();
            ]])
        end
    end
    if curStep == 1056 then
        doTweenAlpha('tween1', 'healthBar', 1, 0.5, 'linear')
        doTweenAlpha('tween2', 'HB', 1, 0.5, 'linear')
        doTweenAlpha('tween3', 'iconP1', 1, 0.5, 'linear')
        doTweenAlpha('tween4', 'iconP2', 1, 0.5, 'linear')
        doTweenAlpha('tween5', 'iconP3', 0.4, 0.5, 'linear')
    end
    if curStep == 1120 then
        doTweenAlpha('tween5', 'iconP3', 0, 0.5, 'linear')
        addHaxeLibrary('Std') -- gradient bar
        runHaxeCode([[
            game.healthBar.createGradientBar(
            [0xFF9E5D1D], [0xFF5180EA], 1, 90);
            
            game.healthBar.updateBar();
        ]])
    end
end