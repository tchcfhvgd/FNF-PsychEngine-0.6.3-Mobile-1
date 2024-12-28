-- Script by Maxplay Games
-- This is too much I'm dying

function onCreate()

--screen
	makeLuaSprite('blackscreen', 'blackscreen', 0, 0)
	makeGraphic('blackscreen', 1920, 1280, '000000')
	setObjectCamera('blackscreen', 'HUD')
	addLuaSprite('blackscreen', false)

	makeLuaSprite('warning', 'warningimage', 0, 0)
	setObjectCamera('warning', 'other')
	addLuaSprite('warning', true)

--when the base is ment or ment is base idk

--Dark
	makeLuaSprite('basementdark', 'BG/Base/basementdark', -800, -450);
	scaleObject('basementdark', 1.1, 1.1);
	addLuaSprite('basementdark', false)
--Burned
	makeLuaSprite('basementred', 'BG/Base/basementred', -800, -450);
	scaleObject('basementred', 1.1, 1.1);
	addLuaSprite('basementred', false)
--Light
	makeLuaSprite('basementlight', 'BG/Base/basementlight', -800, -450);
	scaleObject('basementlight', 1.1, 1.1);
	addLuaSprite('basementlight', false)
--No BG at the beginning!!!
	setProperty('basementdark.visible', false)
	setProperty('basementred.visible', false)
	setProperty('basementlight.visible', false)
--Pre-Reload Image Flash omg
--Jump
	makeLuaSprite('JS One', 'IF/JS 1', 5000, 0)
	addLuaSprite('JS One', true)
	makeLuaSprite('JS Two', 'IF/JS 2', 5000, 0)
	addLuaSprite('JS Two', true)
	makeLuaSprite('JS Three', 'IF/JS 3', 5000, 0)
	addLuaSprite('JS Three', true)
	makeLuaSprite('JS Four', 'IF/JS 4', 5000, 0)
	addLuaSprite('JS Four', true)
--Jerry Yapping shits
	makeLuaSprite('6', 'IF/6', 5000, 0)
	addLuaSprite('6', true)
	makeLuaSprite('7', 'IF/7', 5000, 0)
	addLuaSprite('7', true)
	makeLuaSprite('8', 'IF/8', 5000, 0)
	addLuaSprite('8', true)
	makeLuaSprite('9', 'IF/9', 5000, 0)
	addLuaSprite('9', true)
	makeLuaSprite('10', 'IF/10', 5000, 0)
	addLuaSprite('10', true)
	makeLuaSprite('11', 'IF/11', 5000, 0)
	addLuaSprite('11', true)
	makeLuaSprite('12', 'IF/12', 5000, 0)
	addLuaSprite('12', true)
--shade
	makeLuaSprite('shade', 'shade2', 0, 0)
	scaleObject('shade', 0.5, 0.5);
	setObjectCamera('shade', 'other')
	addLuaSprite('shade',true)

	if lowQuality then
	removeLuaSprite('shade',true)
end
	if not getPropertyFromClass('ClientPrefs','mechanicsOn') then
	removeLuaSprite('warning', true)
end
end

function onCreatePost()
	setProperty('enableJump', true)
end

function onStepHit()
	if curStep == 2 then
	doTweenAlpha('GUItween', 'camHUD', 0, 0.00000000001, 'linear');
	doTweenAlpha('blackscreencum', 'blackscreen', 0, 4, 'linear')
	doTweenAlpha('warning', 'warning', 0, 4, 'linear')
--bye Image Flash
	removeLuaSprite('JS One', true)
	removeLuaSprite('JS Two', true)
	removeLuaSprite('JS Three', true)
	removeLuaSprite('JS Four', true)
	removeLuaSprite('6', true)
	removeLuaSprite('7', true)
	removeLuaSprite('8', true)
	removeLuaSprite('9', true)
	removeLuaSprite('10', true)
	removeLuaSprite('11', true)
	removeLuaSprite('12', true)
end
	if curStep == 120 then
	doTweenAlpha('GUItween', 'camHUD', 1, 0.5, 'linear');
end
	if curStep == 496 then
	doTweenAlpha('GUItween', 'camHUD', 0, 0.00000000001, 'linear');
	setProperty('gfGroup.visible',false)
	setProperty('boyfriendGroup.visible',false)
	setProperty('dadGroup.visible',false)
	setProperty('basement.visible', false)
end
	if curStep == 512 then
	doTweenAlpha('GUItween', 'camHUD', 1, 0.5, 'linear');
	setProperty('boyfriendGroup.visible',true)
	setProperty('dadGroup.visible',true)
	setProperty('gfGroup.visible',true)
	setProperty('basementdark.visible', true)
end
	if curStep == 800 then
	setProperty('basementdark.visible', false)
	setProperty('basementred.visible', true)
end
	if curStep == 1312 then
	setProperty('basementdark.visible', true)
	setProperty('basementred.visible', false)
end
	if curStep == 1432 then
	doTweenAlpha('GUItween', 'camHUD', 1, 0.5, 'linear');
end
	if curStep == 1760 then
	setProperty('gfGroup.visible',false)
	setProperty('dadGroup.visible',false)
	setProperty('basementdark.visible', false)
end
	if curStep == 1824 then
	setProperty('dadGroup.visible',true)
end
	if curStep == 1840 then
	setProperty('gfGroup.visible',true)
	setProperty('basementlight.visible', true)
-- Middle Scroll
if getPropertyFromClass('ClientPrefs','enablemodchart') then
	noteTweenX('oppo0', 0, -1000, 1.5, 'quartInOut')
	noteTweenX('oppo1', 1, -1000, 1.5, 'quartInOut')
	noteTweenX('oppo2', 2, -1000, 1.5, 'quartInOut')
	noteTweenX('oppo3', 3, -1000, 1.5, 'quartInOut')
	noteTweenAngle('opporotate0', 0, 360, 1, 'quartInOut')
	noteTweenAngle('opporotate1', 1, 360, 1, 'quartInOut')
	noteTweenAngle('opporotate2', 2, 360, 1, 'quartInOut')
	noteTweenAngle('opporotate3', 3, 360, 1, 'quartInOut')
	noteTweenX('play0', 4, 415, 1, 'quartInOut')
	noteTweenX('play1', 5, 525, 1, 'quartInOut')
	noteTweenX('play2', 6, 635, 1, 'quartInOut')
	noteTweenX('play3', 7, 745, 1, 'quartInOut')
	noteTweenAngle('playrotate0', 4, 360, 1, 'quartInOut')
	noteTweenAngle('playrotate1', 5, 360, 1, 'quartInOut')
	noteTweenAngle('playrotate2', 6, 360, 1, 'quartInOut')
	noteTweenAngle('playrotate3', 7, 360, 1, 'quartInOut')
end
end
	if curStep == 2080 then
	doTweenAlpha('GUItween', 'camHUD', 0, 0.00000000001, 'linear');
	setProperty('gfGroup.visible',false)
	setProperty('boyfriendGroup.visible',false)
	setProperty('dadGroup.visible',false)
	setProperty('basementlight.visible', false)
end
	if curStep == 2096 then
	doTweenAlpha('GUItween', 'camHUD', 1, 0.5, 'linear');
	setProperty('gfGroup.visible',true)
	setProperty('boyfriendGroup.visible',true)
	setProperty('dadGroup.visible',true)
	setProperty('basementdark.visible', true)
end
	if curStep == 2352 then
	setProperty('basementdark.visible', false)
	setProperty('basementred.visible', true)
end
	if curStep == 2864 then
	setProperty('gfGroup.visible',false)
	setProperty('boyfriendGroup.visible',false)
	setProperty('dadGroup.visible',false)
	doTweenAlpha('GUItween', 'camHUD', 0, 5, 'linear');
end
end

--Bring back 210 BPM pls