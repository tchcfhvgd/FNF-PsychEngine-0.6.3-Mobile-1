function onCreate()
	makeLuaSprite('blackscreen', 'blackscreen', 0, -200)
	makeGraphic('blackscreen', 1920, 1280, '000000')
	setObjectCamera('blackscreen', 'other')
	addLuaSprite('blackscreen', false)

	makeLuaSprite('shadeee', 'shade2', 0, 0)
	scaleObject('shadeee', 0.5, 0.5);
	setObjectCamera('shadeee', 'other')
	addLuaSprite('shadeee',true)

	doTweenAlpha('GUItween', 'camHUD', 0, 0.0000000001, 'linear');
end

function onStepHit()	
	if curStep == 1 then
	removeLuaSprite('memory',true)
	setProperty('boyfriendGroup.visible',true)
	setProperty('dadGroup.visible',true)
	doTweenAlpha('blackscreencum', 'blackscreen', 0, 0.5, 'linear')

	setProperty('health', getProperty('health') + 2)
end
	if curStep == 64 then
	doTweenAlpha('GUItween', 'camHUD', 1, 5.5, 'linear');
end
	if curStep == 512 then
	removeLuaSprite('blue2',true)
--hide you I
	doTweenAlpha('AlphaTween1', 'healthBarBG', 0, 0.0000000001)
	doTweenAlpha('AlphaTween2', 'healthBar', 0, 0.0000000001)
	doTweenAlpha('AlphaTween4', 'iconP1', 0, 0.0000000001)
	doTweenAlpha('AlphaTween5', 'iconP2', 0, 0.0000000001)
	setProperty('HB.visible', false)
	setProperty('Health.visible', false)
--bf dies
	setProperty('boyfriendGroup.visible',false)
--bg cum

	makeAnimatedLuaSprite('memory','BG/Sad/memorybg', -300, 255)
	scaleObject('memory', 0.6, 0.6);
	addAnimationByPrefix('memory','memory','bg',24,true)
	addLuaSprite('memory',false)
		if curStep % 2 == 0 then
			objectPlayAnimation('bg', 'bg');
	    end
	end
	if curStep == 768 then
	removeLuaSprite('memory',true)
	removeLuaSprite('bg',true)
--hide you I 2
	doTweenAlpha('AlphaTween1', 'healthBarBG', 1, 0.0000000001)
	doTweenAlpha('AlphaTween2', 'healthBar', 1, 0.0000000001)
	doTweenAlpha('AlphaTween4', 'iconP1', 1, 0.0000000001)
	doTweenAlpha('AlphaTween5', 'iconP2', 1, 0.0000000001)
	setProperty('HB.visible', true)
	setProperty('Health.visible', true)
	setShaderFloat('Shader1', 'iIntensity', 0.06)
--bf cum
	setProperty('boyfriendGroup.visible',true)
--bg cum
	makeLuaSprite('blue2', 'BG/Sad/blue2', -500, -10);
	scaleObject('blue2', 1, 1);
	addLuaSprite('blue2',false)
end
	if curStep == 808 then
	doTweenAlpha('GUItween', 'camHUD', 0.5, 0.00001, 'linear');
end
	if curStep == 810 then
	doTweenAlpha('GUItween', 'camHUD', 0.75, 0.00001, 'linear');
end
	if curStep == 812 then
	doTweenAlpha('GUItween', 'camHUD', 1, 0.00001, 'linear');
end
	if curStep == 872 then
	doTweenAlpha('GUItween', 'camHUD', 0.5, 0.00001, 'linear');
end
	if curStep == 874 then
	doTweenAlpha('GUItween', 'camHUD', 0.75, 0.00001, 'linear');
end
	if curStep == 876 then
	doTweenAlpha('GUItween', 'camHUD', 1, 0.00001, 'linear');
end
end