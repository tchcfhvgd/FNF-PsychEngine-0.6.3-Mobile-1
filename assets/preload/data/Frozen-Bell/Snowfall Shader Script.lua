function onCreatePost()
    if shadersEnabled then
    makeLuaSprite("snowShaderfromHypno")
    setSpriteShader("snowShaderfromHypno", "snowfall")

    makeLuaSprite("Shader2")
    setSpriteShader("Shader2", "shit")
    setShaderFloat("Shader2", "blueOpac", 1.3)

    runHaxeCode([[
        game.camGame.setFilters([new ShaderFilter(game.getLuaObject("snowShaderfromHypno").shader),new ShaderFilter(game.getLuaObject("Shader2").shader)]);

        game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("Shader2").shader)]);
        ]])
    end
end

function mathlerp(from,to,i)return from+(to-from)*i end

snowamount = 50  -- how much snow will fall default 100
intensity = 0.2 -- scale the snow particles default 0.2
function onUpdatePost()
    if shadersEnabled then
    setShaderFloat('snowShaderfromHypno','time',os.clock())
    setShaderFloat('snowShaderfromHypno','intensity',intensity)
    setShaderInt('snowShaderfromHypno','amount',snowamount)
    setShaderFloat("Shader2", "iTime", os.clock())
    end
end
