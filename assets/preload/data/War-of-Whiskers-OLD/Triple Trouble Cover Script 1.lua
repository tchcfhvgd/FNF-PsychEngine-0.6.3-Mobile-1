function onCreate()
	makeLuaSprite('blackscreen', 'blackscreen', 0, -200)
	makeGraphic('blackscreen', 1920, 1280, '000000')
	setObjectCamera('blackscreen', 'HUD')
	addLuaSprite('blackscreen', false)
end

function onStepHit()
	if curStep == 1 then
	triggerEvent('SonicStatic','','')
	doTweenAlpha('blackscreencum', 'blackscreen', 0, 0.5, 'linear')
end
	if curStep == 1040 then
--Bye BG1
	setProperty('Dside.alpha', 0)
--Hello BG2
	setProperty('fire.alpha', 1)
end
	if curStep == 1296 then
--Bye BG2
	setProperty('fire.alpha', 0)
--Hello BG3
	setProperty('doghouse.alpha', 1)
	setProperty('tree.alpha', 1)
end
	if curStep == 2320 then
--Bye BG3
	setProperty('doghouse.alpha', 0)
	setProperty('tree.alpha', 0)
--Hello BG4
	setProperty('MT BG.alpha', 1)
end
	if curStep == 2832 then
--Bye BG4
	setProperty('MT BG.alpha', 0)
--Hello BG5
	setProperty('WBBG2.alpha', 1)
	setProperty('WBFG2.alpha', 1)
	setProperty('R.alpha', 1)
end
	if curStep == 4112 then
--Bye BG5
	setProperty('WBBG2.alpha', 0)
	setProperty('WBFG2.alpha', 0)
	setProperty('R.alpha', 0)
--Hello BG6
	setProperty('basement.alpha', 1)
end
end