local chromFreq = 4
local chromAmount = 0.2
chromatic = 0.001
local enabled = true
local activated = false
local thingOp = 0
local statit = false

local loop = 0
local particles = 0
local sprites = 0
local processedspeed = 0
local speed = 0
local endit = false;

function boundTo(value, min, max)
    return math.max(min, math.min(max, value))
end

function math.lerp(from,to,i) return from+(to-from)*i end

function callSpeed()
    if mode == 1 then
        processedspeed = 5 / 2
    elseif mode == 4 then
        processedspeed = 5 * 2
    end
end

function spawnParticle()
    particles = particles + 1
    sprites = sprites + 1
    makeLuaSprite(particles, 'particle', math.random(0, screenWidth), screenHeight + 25)
    setProperty(particles..'.velocity.y', -400)
    setProperty(particles..'.velocity.x', math.random(-100, 100))
    setProperty(particles..'.alpha', 1)
    setProperty(particles..'.angle', math.random(-40, 40))
    setProperty(particles..'.color', getColorFromHex('FF9763'))
    addLuaSprite(particles, true)
    setObjectCamera(particles, 'camHUD')
    doTweenAlpha(particles, particles, 0, 2, 'linear')
end

function onCreatePost()
    runTimer('kys', 2)
    --ChromaticZoom
    if getPropertyFromClass('ClientPrefs','shaders') then
        initLuaShader('ChromaticAbberation')

        makeLuaSprite('chromToggle')
        makeLuaSprite('chromGraphic')
        makeGraphic("chromGraphic", screenWidth, screenHeight)

        makeLuaSprite("Shader2")
        setSpriteShader("Shader2", "shit")
        setShaderFloat("Shader2", "blueOpac", 1.3)

        makeLuaSprite("Shader3")
        setSpriteShader("Shader3", "heatwave")
        setShaderFloat("Shader3", "speed", 2)
        setShaderFloat("Shader3", "strength", 0.48)
        
        setSpriteShader("chromGraphic", 'chromToggle')

        makeLuaSprite('chromX',nil,0.1,0.1)
        setProperty('chromX.y',0.1)
        chromToggle()
    end

        if not lowQuality then
        makeLuaSprite('fireLol', 'fireGrid', 0, 0)
        setObjectCamera('fireLol', 'hud')
        addLuaSprite('fireLol', true)
        setObjectOrder('fireLol', 2)

        makeAnimatedLuaSprite('fire', 'fire', 0, -530)
        addAnimationByPrefix('fire', 'fire', 'fire', 24, true)
        scaleObject('fire', 2.6, 4.3)
        objectPlayAnimation('fire', 'fire', true)
        setProperty('fire.alpha', 0)
        setObjectOrder('fire', 1)
        setObjectCamera('fire', 'hud')
        addLuaSprite('fire', true)
        end
end

function onUpdate(elapsed)
    if endit then
        speed = speed + 1
        callSpeed()
        loop = loop + 1
    end

    if not lowQuality then
    setProperty('fireLol.alpha', thingOp)
    end

    if not lowQuality then
    if thingOp ~= 0 then
    thingOp = math.lerp(thingOp, 0, boundTo(elapsed * 2.3, 0, 1));
    end
    end

    if getPropertyFromClass('ClientPrefs','shaders') then
    setShaderFloat("Shader2", "iTime", os.clock())
    setShaderFloat("Shader3", "time", os.clock())
    if enabled then
        local chromValue = getProperty('chromX.y')
        setShaderFloat('chromToggle', "amount", chromValue)
        if chromAmount == 0 and chromValue == 0 then
            enabled = false
        end
    end
end
end
function onBeatHit()
if getPropertyFromClass('ClientPrefs','shaders') then
    if activated and curBeat % chromFreq == 0 then
        chromBeat()
    end
end
end

function onEvent(name,v1,v2)
if getPropertyFromClass('ClientPrefs','shaders') then
    if name =='Add Camera Zoom' then
    chromBeat()
    if statit then
    thingOp = 1
    end
    end

    if name == 'Change Chrom Amouth' then
    chromAmount = v1
    end
end
end

function onTweenCompleted(tag)
--zoomBeat
if getPropertyFromClass('ClientPrefs','shaders') then
    if tag == 'chromLol' then
        setProperty('chromX.y',0.1)
    end
end
end

function chromBeat()
    setProperty('chromX.y',chromAmount + 0.2)
    doTweenY('chromLol','chromX',0.1,(stepCrochet /1000) * 8, 'quadOut')
    enabled = true
end

function chromToggle()
    if getPropertyFromClass('ClientPrefs','shaders') then
    runHaxeCode([[
            var chromToggle = game.createRuntimeShader('ChromaticAbberation');
            var shaderVcr= game.createRuntimeShader('glitchChromatic');
            
            game.camGame.setFilters([new ShaderFilter(chromToggle),new ShaderFilter(game.getLuaObject("Shader2").shader)]);
            game.camHUD.setFilters([new ShaderFilter(chromToggle),new ShaderFilter(game.getLuaObject("Shader2").shader)]);
            game.getLuaObject('chromToggle').shader = chromToggle;
            game.getLuaObject("temporaryShader1").shader = shaderVcr;
                
        ]]
    )
    activated = true
end
end

function onStepHit()
    if curStep % 1 == 0 and endit then
    spawnParticle()
    end
    if curStep == 800 then
    if not lowQuality then
    setProperty('fire.alpha', 0.45)
    statit = true
    end
    if getPropertyFromClass('ClientPrefs','shaders') then
    endit = true;
    setShaderFloat("Shader2", "blueOpac", 0)
    setShaderFloat("Shader2", "redOpac", 1.6)
    runHaxeCode([[
            var chromToggle = game.createRuntimeShader('ChromaticAbberation');
            var shaderVcr= game.createRuntimeShader('glitchChromatic');
            
            game.camGame.setFilters([new ShaderFilter(chromToggle),new ShaderFilter(game.getLuaObject("Shader2").shader),new ShaderFilter(game.getLuaObject("Shader3").shader)]);
            game.camHUD.setFilters([new ShaderFilter(chromToggle),new ShaderFilter(game.getLuaObject("Shader2").shader),new ShaderFilter(game.getLuaObject("Shader3").shader)]);
            game.getLuaObject('chromToggle').shader = chromToggle;
            game.getLuaObject("temporaryShader1").shader = shaderVcr;
                
        ]]
    )
end
    end
    if curStep == 1312 then
    if not lowQuality then
    setProperty('fire.alpha', 0)
    statit = false
    end
    if getPropertyFromClass('ClientPrefs','shaders') then
    endit = false;
    setShaderFloat("Shader2", "blueOpac", 1.3)
    setShaderFloat("Shader2", "redOpac", 0)
    runHaxeCode([[
            var chromToggle = game.createRuntimeShader('ChromaticAbberation');
            var shaderVcr= game.createRuntimeShader('glitchChromatic');
            
            game.camGame.setFilters([new ShaderFilter(chromToggle),new ShaderFilter(game.getLuaObject("Shader2").shader)]);
            game.camHUD.setFilters([new ShaderFilter(chromToggle),new ShaderFilter(game.getLuaObject("Shader2").shader)]);
            game.getLuaObject('chromToggle').shader = chromToggle;
            game.getLuaObject("temporaryShader1").shader = shaderVcr;
                
        ]]
    )
end
    end
    if curStep == 2352 then
        if not lowQuality then
        statit = true
        setProperty('fire.alpha', 0.45)
        end
        if getPropertyFromClass('ClientPrefs','shaders') then
        endit = true;
        setShaderFloat("Shader2", "blueOpac", 0)
        setShaderFloat("Shader2", "redOpac", 1.6)
        runHaxeCode([[
                var chromToggle = game.createRuntimeShader('ChromaticAbberation');
                var shaderVcr= game.createRuntimeShader('glitchChromatic');
                
                game.camGame.setFilters([new ShaderFilter(chromToggle),new ShaderFilter(game.getLuaObject("Shader2").shader),new ShaderFilter(game.getLuaObject("Shader3").shader)]);
                game.camHUD.setFilters([new ShaderFilter(chromToggle),new ShaderFilter(game.getLuaObject("Shader2").shader),new ShaderFilter(game.getLuaObject("Shader3").shader)]);
                game.getLuaObject('chromToggle').shader = chromToggle;
                game.getLuaObject("temporaryShader1").shader = shaderVcr;
                    
            ]]
        )
    end
end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'kys' then
        for i = 1, particles do
            if getProperty(i .. '.alpha') == 0 then
                removeLuaSprite(i)
                sprites = sprites - 1
            end
        end
        runTimer('kys', 2)
    end
end