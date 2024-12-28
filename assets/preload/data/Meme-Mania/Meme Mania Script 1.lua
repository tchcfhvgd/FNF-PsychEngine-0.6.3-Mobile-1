local loling = 0
local partyColors = {
	'FF0000',
	'3F029C',
	'FFFFFF',
	'0008FF',
	'FFF700',
	'FF7700',
	'00F2FF'
}

function onCreate()
	mechsOn = getPropertyFromClass('ClientPrefs','mechanicsOn')
	addCharacterToList(MEME-BOI,'dad')
	addCharacterToList(MEME-BOI-old,'dad')
	addCharacterToList(MEME-BOI-sans,'dad')
end


function onCreatePost()
    makeLuaSprite("Shader3")
    setSpriteShader("Shader3", "rainbow")
    end
    
function onBeatHit()
	if curBeat > 467 and curBeat < 531 then
	loling = loling + 1
	setProperty('timeBar.color', getColorFromHex(partyColors[getRandomInt(0,6)]))
	setShaderFloat('Shader3','iTime', loling)
	runHaxeCode([[
	trace(ShaderFilter);
	game.camGame.setFilters([new ShaderFilter(game.getLuaObject("Shader3").shader)]);
	]])
	end
	if curBeat == 530 then
		removeLuaSprite("Shader3")
		setProperty('camGame.filtersEnabled', false)
		setProperty('timeBar.color', getColorFromHex('FFFFFF'))
	end
end