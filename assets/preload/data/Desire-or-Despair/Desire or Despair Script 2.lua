-- The Despair bar shits

local currentBarPorcent = 1
local heightBar = 0

local saturation = 0
local brightness = 0
function onCreatePost()
	makeLuaSprite('redScreen', 'redScreen', 0, 0)
	makeGraphic('redScreen', 1920, 1280, 'FF0000')
    setBlendMode('redScreen', 'add')
    setProperty('redScreen.alpha', 0)
	setObjectCamera('redScreen', 'hud')
	addLuaSprite('redScreen', false)

    makeLuaSprite('FearBarImage','despairbar',10,250)
    scaleObject('FearBarImage',1.2,1.1)
    setObjectCamera('FearBarImage','hud')
    addLuaSprite('FearBarImage',true)

    makeLuaSprite('FearBarBg','despairbarBG',getProperty('FearBarImage.x') + 15,getProperty('FearBarImage.y'))
    setObjectCamera('FearBarBg','hud')
    scaleObject('FearBarBg',0.82,1.1)
    addLuaSprite('FearBarBg',false)
    
    makeLuaSprite('FearBarBar','',getProperty('FearBarImage.x') + 15,getProperty('FearBarImage.y'))
    setObjectCamera('FearBarBar','hud')
    makeGraphic('FearBarBar',getProperty('FearBarBg.width')/2,getProperty('FearBarBg.height'),'161824')

    addLuaSprite('FearBarBar',false)

    makeLuaSprite("Shader1")
    setSpriteShader("Shader1", "saturation")

    makeLuaSprite("Shader2")
    setSpriteShader("Shader2", "shit")
    
    runHaxeCode([[
    trace(ShaderFilter);
    game.camGame.setFilters([new ShaderFilter(game.getLuaObject("Shader1").shader),new ShaderFilter(game.getLuaObject("Shader2").shader)]);
    
    game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("Shader1").shader),new ShaderFilter(game.getLuaObject("Shader2").shader)]);
    ]])
end
function onUpdate()
    setShaderFloat("Shader1", "sat", saturation)
    setShaderFloat("Shader2", "iTime", os.clock())
   
    saturation = currentBarPorcent;

    if currentBarPorcent == 0 then
        setGraphicSize('FearBarBar',getProperty('FearBarBg.width')/1.8 * getProperty('FearBarBg.scale.x'),0)
    else
        setGraphicSize('FearBarBar',getProperty('FearBarBg.width')/1.8 * getProperty('FearBarBg.scale.x'),math.max(getProperty('FearBarBg.height')/1.132* currentBarPorcent),1)
    end
    setProperty('FearBarBar.x',getProperty('FearBarBg.x') + 21)
    setProperty('FearBarBar.x',getProperty('FearBarBg.x') + 21)
    setProperty('FearBarBar.y',getProperty('FearBarImage.y') + 302 - getProperty('FearBarBar.height'))

    if currentBarPorcent > 1 then
        currentBarPorcent  = 1
    end
    if currentBarPorcent == 0 then
        setProperty('health',getProperty('health') - 1)
    end
    if currentBarPorcent <= 0 then
        currentBarPorcent  = 0
        setGraphicSize('FearBarBar',getProperty('FearBarBg.width')/1.8 * getProperty('FearBarBg.scale.x'),0)
        setProperty('FearBarBar.visible',false)
    else
        setProperty('FearBarBar.visible',true)
    end
end
function opponentNoteHit()

    if currentBarPorcent > 0 then
        currentBarPorcent = currentBarPorcent - 0.0050
    end
end
function goodNoteHit()
    if currentBarPorcent > 0 and currentBarPorcent < 1 then
        currentBarPorcent = currentBarPorcent + 0.0050
    end
end
function noteMiss(id,dir,type,sustain)
    if type == '' then
        if currentBarPorcent > 0 then
            currentBarPorcent = currentBarPorcent - 0.0075
        end
    end
end

function onStepHit()
    if curStep == 1439 then
        setProperty('redScreen.alpha', 0.3)
    end
    if curStep == 1987 then
        doTweenAlpha('redcreencum', 'redScreen', 0, 0.5, 'linear')
    end
end