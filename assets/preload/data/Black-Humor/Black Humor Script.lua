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
	if curStep == 16 then
	doTweenY('tweentag', 'camFollow', 450 , 11.05, "linear")
	doTweenAlpha('blackscreencum', 'blackscreen', 0, 11, 'linear')
end
	if curStep == 208 then
	doTweenAlpha('GUItween', 'camHUD', 1, 5, 'linear');
end
	if curStep == 2064 then
	setProperty('gfGroup.visible',false)
	setProperty('boyfriendGroup.visible',false)
	setProperty('dadGroup.visible',false)
	removeLuaSprite('lab',false)
end
end