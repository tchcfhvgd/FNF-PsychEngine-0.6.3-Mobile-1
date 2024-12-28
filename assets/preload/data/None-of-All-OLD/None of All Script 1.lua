function onCreate()
	makeLuaSprite('blackscreen', 'blackscreen', 0, -200)
	makeGraphic('blackscreen', 1920, 1280, '000000')
	setObjectCamera('blackscreen', 'other')
	addLuaSprite('blackscreen', true)
	doTweenAlpha('GUItween', 'camHUD', 0, 0.0000000001, 'linear');
end

function onStepHit()
	if curStep == 1 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0, 15, 'linear')
end
--fire bg
	if curStep == 920 then
	doTweenAlpha('GUItween', 'camHUD', 0, 0.0000000001, 'linear');

	setProperty('wall.alpha', 0)
	setProperty('ground.alpha', 0)
	setProperty('cheese.alpha', 0)
	setProperty('fire.alpha', 1)
end
end