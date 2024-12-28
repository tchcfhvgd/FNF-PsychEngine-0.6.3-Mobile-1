function onCreate()
--screen
	makeLuaSprite('blackscreen', 'blackscreen', 0, -200)
	makeGraphic('blackscreen', 1920, 1280, '000000')
	setObjectCamera('blackscreen', 'other')
	addLuaSprite('blackscreen', false)
--event zoo
	triggerEvent('infryzoom','1.5','0.1')
	doTweenAlpha('GUItween', 'camHUD', 0, 0.0000000001, 'linear');
end

function onStepHit()
	if curStep == 1 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0, 8.5, 'linear')
end
	if curStep == 64 then
	doTweenAlpha('GUItween', 'camHUD', 1, 4, 'linear');
end
	if curStep == 641 then
	doTweenAlpha('GUItween', 'camHUD', 0, 0.0000000001, 'linear');
end
	if curStep == 736 then
	doTweenAlpha('GUItween', 'camHUD', 1, 2.25, 'linear');
end
end