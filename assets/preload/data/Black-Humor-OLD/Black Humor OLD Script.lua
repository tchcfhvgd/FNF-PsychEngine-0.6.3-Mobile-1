function onCreate()
	makeLuaSprite('blackscreen', 'blackscreen', 0, 0)
	makeGraphic('blackscreen', 1920, 1280, '000000')
	setObjectCamera('blackscreen', 'other')
	addLuaSprite('blackscreen', false)
end

function onCreatePost()
	doTweenAlpha('GUItween', 'camHUD', 0, 0.0000000001, 'linear');
end

function onStepHit()
	if curStep == 4 then
	doTweenY('tweentag', 'camFollow', 450 , 12.5, "linear")
	doTweenAlpha('blackscreencum', 'blackscreen', 0, 11, 'linear')
end
	if curStep == 128 then
	doTweenAlpha('GUItween', 'camHUD', 1, 10, 'linear');
end
	if curStep == 1600 then
	doTweenY('tweentag', 'camFollow', 0 , 6.5, "linear")
end
end