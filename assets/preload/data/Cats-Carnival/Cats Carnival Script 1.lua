function onStepHit()
	if curStep == 32 then
--double mouse refer-
	makeAnimatedLuaSprite('glitch-mice','BG/Pibby/glitch-mice',400,200)
	scaleObject('glitch-mice', 0.7, 0.7);
	addAnimationByPrefix('glitch-mice','idle','idle',24,true)
	addLuaSprite('glitch-mice',false)
end
	if curStep == 1035 then
	doTweenAlpha('GUItween', 'camHUD', 0, 0.75, 'expoOut');
end
	if curStep == 1056 then
	setProperty('glitch-mice.colorTransform.greenOffset', 255)
	setProperty('glitch-mice.colorTransform.redOffset', 255)
	setProperty('glitch-mice.colorTransform.blueOffset', 255)
end
	if curStep == 1112 then
	doTweenAlpha('GUItween', 'camHUD', 1, 0.5, 'expoOut');
end
	if curStep == 1190 then
	doTweenAlpha('GUItween', 'camHUD', 0, 0.5, 'expoOut');
end
	if curStep == 1240 then
	doTweenAlpha('GUItween', 'camHUD', 1, 0.5, 'expoOut');
end
	if curStep == 1312 then
	setProperty('glitch-mice.colorTransform.greenOffset', 0)
	setProperty('glitch-mice.colorTransform.redOffset', 0)
	setProperty('glitch-mice.colorTransform.blueOffset', 0)
end
end