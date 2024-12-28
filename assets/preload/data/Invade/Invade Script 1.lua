function onCreate()
--screen
	makeLuaSprite('blackscreen', 'blackscreen', 0, 0)
	makeGraphic('blackscreen', 1920, 1280, '000000')
	setObjectCamera('blackscreen', 'hud')
	addLuaSprite('blackscreen', false)
end

function onCreatePost()
	setProperty('camGame.alpha', 0);
end

function onStepHit()
	if curStep == 128 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0, 0.0000000001, 'linear')
	setProperty('camGame.alpha', 1);
end
	if curStep == 928 then
	makeLuaSprite('AlienJS1', 'IF/alien2', 0, 0)
	setObjectCamera('AlienJS1', 'HUD')
	addLuaSprite('AlienJS1', false)
end
	if curStep == 934 then
	doTweenAlpha('AlienJS1', 'AlienJS1', 0, 0.5, 'linear')
end
	if curStep == 976 then
	makeLuaSprite('AlienJS2', 'IF/alien1', 0, 0)
	setObjectCamera('AlienJS2', 'HUD')
	addLuaSprite('AlienJS2', false)
end
	if curStep == 984 then
	makeLuaSprite('AlienJS3', 'IF/alien3', 0, 0)
	setObjectCamera('AlienJS3', 'HUD')
	addLuaSprite('AlienJS3', false)

	removeLuaSprite('AlienJS2', true)
end
	if curStep == 988 then
	doTweenAlpha('AlienJS3', 'AlienJS3', 0, 0.5, 'linear')
end
end