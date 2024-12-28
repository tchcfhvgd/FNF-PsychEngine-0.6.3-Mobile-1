function onCreate()
-- Orginal Script by Mahaneee
-- https://www.youtube.com/@mahaneee
-- Fixed again by Maxplay Games
	makeAnimatedLuaSprite('dodge', 'warningdodge', 0, 0)
	addAnimationByPrefix('dodge','warningdodge','warningdodge',24,true)
	addLuaSprite('dodge')
	doTweenAlpha('dodgetween', 'dodge', 0, 0.000001, linear)
	setObjectCamera('dodge', 'other')
end

function onStepHit()
	if curStep == 1 then
	doTweenAlpha('dodgetween2', 'dodge', 1, 0.3, linear)
end
	if curStep == 48 then
	doTweenAlpha('dodgetween2', 'dodge', 0, 1, linear)
end
	if curStep == 1016 then
	doTweenAlpha('GUItween', 'camHUD', 0.5, 0.5, 'linear');
end
	if curStep == 1024 then
	doTweenAlpha('GUItween', 'camHUD', 1, 0.5, 'linear');
end
end