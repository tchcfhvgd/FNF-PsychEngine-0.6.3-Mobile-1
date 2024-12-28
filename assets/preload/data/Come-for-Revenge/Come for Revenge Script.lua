function onCreate()
	makeLuaSprite('blackscreen', 'blackscreen', 0, 0)
	makeGraphic('blackscreen', 1920, 1280, '000000')
	setObjectCamera('blackscreen', 'other')
	addLuaSprite('blackscreen', false)

	doTweenAlpha('GUItween', 'camHUD', 0, 0.0000000001, 'linear');
end

function onStepHit()
	if curStep == 2 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0, 10, 'linear')
end
end