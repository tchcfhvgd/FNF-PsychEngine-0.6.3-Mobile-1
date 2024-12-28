function onCreatePost()
    if getPropertyFromClass('ClientPrefs','shaders') then
    makeLuaSprite("Shader1")
    setSpriteShader("Shader1", "blur")
    
    makeLuaSprite("Shader2")
    setSpriteShader("Shader2", "shit")
    setShaderFloat("Shader2", "blueOpac", 1.3)
    end
end

function onUpdate(elapsed)
    setShaderFloat("Shader2", "iTime", os.clock())
end

function onStepHit()
    if curStep == 768 then
        xx2 = xx2 + 100
        if getPropertyFromClass('ClientPrefs','shaders') then
        runHaxeCode([[
            trace(ShaderFilter);
            game.camGame.setFilters([new ShaderFilter(game.getLuaObject("Shader1").shader),new ShaderFilter(game.getLuaObject("Shader2").shader)]);
        ]])
    end
    end
    if curStep == 960 then
        xx2 = xx2 - 100
        if getPropertyFromClass('ClientPrefs','shaders') then
        removeLuaSprite("Shader1")
        runHaxeCode([[
            trace(ShaderFilter);
            game.camGame.setFilters([new ShaderFilter(game.getLuaObject("Shader2").shader)]);
        ]])
    end
    end
end