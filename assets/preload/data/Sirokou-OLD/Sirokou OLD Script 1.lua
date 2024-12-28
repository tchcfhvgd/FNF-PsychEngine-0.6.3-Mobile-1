function onCreate()
--screen
	makeLuaSprite('warning', 'warningimage', 0, 0)
	setObjectCamera('warning', 'other')
	addLuaSprite('warning', true)

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

function onStepHit()
	if curBeat > 383 then
		if curStep % 4 == 0 then
			doTweenY('ttt', 'camHUD', -12, stepCrochet*0.002, 'circOut')
			doTweenY('trt', 'camGame.scroll', 12, stepCrochet*0.002, 'sineIn')
		end
		if curStep % 4 == 2 then
			doTweenY('aea', 'camHUD', 0, stepCrochet*0.002, 'sineIn')
			doTweenY('ara', 'camGame.scroll', 0, stepCrochet*0.002, 'sineIn')
		end
	if curBeat > 575 then
			doTweenY('ttt', 'camHUD', 0, stepCrochet*0.002, 'circOut')
			doTweenY('trt', 'camGame.scroll', 0, stepCrochet*0.002, 'sineIn')
			doTweenY('aea', 'camHUD', 0, stepCrochet*0.002, 'sineIn')
			doTweenY('ara', 'camGame.scroll', 0, stepCrochet*0.002, 'sineIn')
		end
end
end