function onCreate()
	makeLuaSprite('bl');
	makeGraphic('bl',screenWidth,screenHeight,'000000')
	setObjectCamera('bl', 'other')
	setProperty('bl.scale.x',2)
	setProperty('bl.scale.y',2)
	addLuaSprite('bl', false);

	makeLuaSprite('note', 'warningnote', 0, 0)
	addLuaSprite('note')
	setObjectCamera('note', 'other')

	setProperty('skipCountdown', true);

	doTweenAlpha('GUItween', 'camHUD', 0, 0.00000000001, 'linear');
	doTweenAlpha('shade', 'shade', 0, 0.00000000001, 'linear');
	doTweenAlpha('note', 'note', 0, 0.00000000001, linear)

	if not getPropertyFromClass('ClientPrefs','mechanicsOn') then
	removeLuaSprite('note')
end
end

function onStepHit()
	if curStep == 4 then
	doTweenAlpha('blTw', 'bl', 0, 4, 'linear')
end
	if curStep == 400 then
	doTweenAlpha('GUItween2', 'camGame', 0.5, 0.00000000001, 'linear');
	doTweenAlpha('GUItween', 'camHUD', 0.5, 0.00000000001, 'linear');
end
	if curStep == 406 then
	doTweenAlpha('GUItween2', 'camGame', 0.75, 0.00000000001, 'linear');
	doTweenAlpha('GUItween', 'camHUD', 0.75, 0.00000000001, 'linear');
end
	if curStep == 412 then
	doTweenAlpha('GUItween2', 'camGame', 1, 0.00000000001, 'linear');
	doTweenAlpha('GUItween', 'camHUD', 1, 0.00000000001, 'linear');
end
	if curStep == 464 then
	doTweenColor('1', 'dad', '9999FF', 1.2, 'linear')
end
	if curStep == 464 then
	doTweenAlpha('shade', 'shade', 1, 1, 'linear');
end
	if curStep == 476 then
	doTweenAlpha('blTw', 'bl', 1, 0.15, 'linear')
end
	if curStep == 480 then
	doTweenAlpha('blTw', 'bl', 0, 0.000000001, 'linear')
	doTweenColor('1', 'dad', 'FFFFFF', 0.1, 'linear')
	doTweenAlpha('shade', 'shade', 0, 0.000000001, 'linear');
end
	if curStep == 800 then
	doTweenAlpha('Ntween2', 'note', 1, 0.3, linear)
end
	if curStep == 848 then
	doTweenAlpha('Ntween2', 'note', 0, 1, linear)
end
	if curStep == 1312 then
	makeLuaSprite('snowthingblockurscreen', 'BG/cold/snow3', 0, 0)
	scaleObject('snowthingblockurscreen', 1, 1.6)
	addLuaSprite('snowthingblockurscreen',true)
	setObjectCamera('snowthingblockurscreen', 'other');
	setProperty('snowthingblockurscreen.alpha', 0)

	makeLuaSprite('word', 'BG/cold/cold', 0, 0)
	addLuaSprite('word',true)
	setObjectCamera('word', 'other');
	setProperty('word.alpha',0)

	setProperty('snowing.alpha',0)
	doTweenAlpha('8', 'snowthingblockurscreen', 0.75, 11, 'linear')
end
	if curStep == 1440 then
	doTweenAlpha('so cold text', 'word', 1, 11)
end
	if curStep == 1568 then
	removeLuaSprite('word', true)
	removeLuaSprite('snowthingblockurscreen', true)
end
	if curStep == 1584 then
	removeLuaSprite('snowthingblockurscreen', true)
end
	if curStep == 1824 then
	setProperty('snowing.alpha',1)
end
end