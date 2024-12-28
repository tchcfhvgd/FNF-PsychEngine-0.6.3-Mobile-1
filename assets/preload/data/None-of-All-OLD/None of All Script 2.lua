function onStepHit()
	if curBeat > 460 then
		if curStep % 4 == 0 then
			doTweenY('ttt', 'camHUD', -12, stepCrochet*0.002, 'circOut')
			doTweenY('trt', 'camGame.scroll', 12, stepCrochet*0.002, 'sineIn')
		end
		if curStep % 4 == 2 then
			doTweenY('aea', 'camHUD', 0, stepCrochet*0.002, 'sineIn')
			doTweenY('ara', 'camGame.scroll', 0, stepCrochet*0.002, 'sineIn')
		end
	if curBeat > 524 then
			doTweenY('ttt', 'camHUD', 0, stepCrochet*0.002, 'circOut')
			doTweenY('trt', 'camGame.scroll', 0, stepCrochet*0.002, 'sineIn')
			doTweenY('aea', 'camHUD', 0, stepCrochet*0.002, 'sineIn')
			doTweenY('ara', 'camGame.scroll', 0, stepCrochet*0.002, 'sineIn')
		end
end
end