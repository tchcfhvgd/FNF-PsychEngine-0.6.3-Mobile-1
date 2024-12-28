function onCreatePost()
    makeLuaSprite("Shader1")
    setSpriteShader("Shader1", "ntsc")
    
    makeLuaSprite("Shader2")
    setSpriteShader("Shader2", "effect weird")
    
    runHaxeCode([[
    trace(ShaderFilter);
    game.camGame.setFilters([new ShaderFilter(game.getLuaObject("Shader1").shader),new ShaderFilter(game.getLuaObject("Shader2").shader)]);
    
    game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("Shader1").shader),new ShaderFilter(game.getLuaObject("Shader2").shader)]);
    ]])
end

function onUpdate(elapsed)
    setShaderFloat("Shader2", "iTime", os.clock())

    if curStep == 1 then
        setShaderFloat("Shader2", "intenseNess", 1)
        setShaderFloat("Shader2", "colorOffsets", 1)
    end

    if curStep == 116 then
        setShaderFloat("Shader2", "intenseNess", 4)
        setShaderFloat("Shader2", "colorOffsets", 14)
    end

    if curStep == 120 then
        setShaderFloat("Shader2", "intenseNess", 28)
    end

	if curStep == 126 then
        setShaderFloat("Shader2", "intenseNess", 1)
        setShaderFloat("Shader2", "colorOffsets", 1)
	end
 end

function onDestroy()
    runHaxeCode([[
		Conductor.changeBPM(100);
    ]])
end