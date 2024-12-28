function onCreate()
	makeLuaSprite('blackscreen', 'blackscreen', 0, 0)
	makeGraphic('blackscreen', 1920, 1280, '000000')
	setObjectCamera('blackscreen', 'other')
	addLuaSprite('blackscreen', false)
end

function onStepHit()
	if curStep == 2 then
	setProperty('1.alpha', 0)
	setProperty('2.alpha', 0)
	setProperty('3.alpha', 0)
	setProperty('4.alpha', 0)
	setProperty('5.alpha', 0)
	setProperty('6.alpha', 0)
	setProperty('7.alpha', 0)
	setProperty('TT 1.alpha', 0)
	setProperty('TT 2.alpha', 0)
	setProperty('TT 3.alpha', 0)
end
	if curStep == 4 then
	setProperty('1.alpha', 1)
	setProperty('2.alpha', 1)
	setProperty('3.alpha', 1)
	setProperty('4.alpha', 1)
	setProperty('5.alpha', 1)
	setProperty('6.alpha', 1)
	setProperty('7.alpha', 1)
	setProperty('TT 1.alpha', 1)
	setProperty('TT 2.alpha', 1)
	setProperty('TT 3.alpha', 1)
end
	if curStep == 6 then
	setProperty('1.alpha', 0)
	setProperty('2.alpha', 0)
	setProperty('3.alpha', 0)
	setProperty('4.alpha', 0)
	setProperty('5.alpha', 0)
	setProperty('6.alpha', 0)
	setProperty('7.alpha', 0)
	setProperty('TT 1.alpha', 0)
	setProperty('TT 2.alpha', 0)
	setProperty('TT 3.alpha', 0)
end
	if curStep == 16 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0, 0.0000000001, 'linear')
	setProperty('1.alpha', 0)
	setProperty('2.alpha', 0)
	setProperty('3.alpha', 0)
	setProperty('4.alpha', 0)
	setProperty('5.alpha', 0)
	setProperty('6.alpha', 0)
	setProperty('7.alpha', 0)
	setProperty('TT 1.alpha', 0)
	setProperty('TT 2.alpha', 0)
	setProperty('TT 3.alpha', 0)
end
	if curStep == 144 then
	setProperty('1.alpha', 1)
	playSound('TuffyScreamLOL', 1);
end
	if curStep == 1040 then
	setProperty('1.alpha', 0)
	setProperty('4.alpha', 1)
	setProperty('5.alpha', 1)
end
	if curStep == 1296 then
	setProperty('4.alpha', 0)
	setProperty('5.alpha', 0)
	setProperty('2.alpha', 1)
	playSound('SpikeScreamLOL', 1);
end
	if curStep == 1302 then
end
	if curStep == 2704 then
	setProperty('2.alpha', 0)
	setProperty('6.alpha', 1)
	setProperty('7.alpha', 1)
end
	if curStep == 3216 then
	setProperty('6.alpha', 0)
	setProperty('7.alpha', 0)
	setProperty('3.alpha', 1)
	playSound('TomScreamLOL', 1);
end
	if curStep == 4496 then
	setProperty('3.alpha', 0)
	setProperty('4.alpha', 1)
	setProperty('5.alpha', 1)
end
end