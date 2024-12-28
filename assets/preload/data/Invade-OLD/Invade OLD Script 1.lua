function onSongStart( )
	doTweenAlpha('GUItween', 'camHUD', 0, 0.00000000001, 'linear');
end

function onStepHit()
	if curStep == 256 then
	doTweenAlpha('GUItween', 'camHUD', 1, 0.5, 'linear');
end
	if curStep == 992 then
	makeLuaSprite('AlienJS1', 'IF/alien2', 0, 0)
	setObjectCamera('AlienJS1', 'HUD')
	addLuaSprite('AlienJS1', false)
end
	if curStep == 1000 then
	makeLuaSprite('AlienJS2', 'IF/alien1', 0, 0)
	setObjectCamera('AlienJS2', 'HUD')
	addLuaSprite('AlienJS2', false)

	removeLuaSprite('AlienJS1', true)
end
	if curStep == 1008 then
	makeLuaSprite('AlienJS3', 'IF/alien3', 0, 0)
	setObjectCamera('AlienJS3', 'HUD')
	addLuaSprite('AlienJS3', false)

	removeLuaSprite('AlienJS2', true)
end
	if curStep == 1016 then
	doTweenAlpha('AlienJS3', 'AlienJS3', 0, 0.5, 'linear')
end
end