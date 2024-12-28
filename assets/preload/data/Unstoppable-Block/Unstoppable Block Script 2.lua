function onBeatHit()
	if curBeat == 254 then
	doTweenAlpha('GUItween2', 'camHUD', 0, 0.000000000001, 'linear');
	setProperty('glitch dog.alpha', 0)
	setProperty('glitch-mice.colorTransform.greenOffset', 255)
	setProperty('glitch-mice.colorTransform.redOffset', 255)
	setProperty('glitch-mice.colorTransform.blueOffset', 255)
end
	if curBeat == 256 then
	doTweenAlpha('GUItween2', 'camHUD', 1, 0.000000000001, 'linear');
	setProperty('glitch dog.alpha', 1)
	setProperty('glitch-mice.colorTransform.greenOffset', 0)
	setProperty('glitch-mice.colorTransform.redOffset', 0)
	setProperty('glitch-mice.colorTransform.blueOffset', 0)
end
	if curBeat == 380 then
	doTweenAlpha('GUItween2', 'camHUD', 0.5, 0.5, 'linear');
end
	if curBeat == 383 then
	doTweenAlpha('GUItween2', 'camHUD', 1, 0.2, 'linear');
end
end