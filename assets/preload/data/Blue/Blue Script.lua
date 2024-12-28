function onCreate()
	setProperty('boyfriendGroup.visible',false)
	setProperty('dadGroup.visible',false)
--screen
	makeLuaSprite('blackscreen', 'blackscreen', 0, -200)
	makeGraphic('blackscreen', 1920, 1280, '000000')
	setObjectCamera('blackscreen', 'other')
	addLuaSprite('blackscreen', false)
end

function onStepHit()
	if curStep == 1 then
	setProperty('boyfriendGroup.visible',true)
	setProperty('dadGroup.visible',true)
	doTweenAlpha('blackscreencum', 'blackscreen', 0, 10, 'linear')
end
end