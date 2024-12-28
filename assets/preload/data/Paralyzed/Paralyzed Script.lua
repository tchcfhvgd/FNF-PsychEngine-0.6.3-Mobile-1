function onCreate()
	makeLuaSprite('blackscreen', 'blackscreen', 0, -200)
	makeGraphic('blackscreen', 1920, 1280, '000000')
	setObjectCamera('blackscreen', 'HUD')
	addLuaSprite('blackscreen', false)
end

function onStepHit()
	if curStep == 2 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0, 15, 'linear')
end
end