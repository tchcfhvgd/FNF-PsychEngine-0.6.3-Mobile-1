local stopTweeing = true

function onCreatePost()
    if not middleScroll then
	noteTweenX('oppo0', 0, -1000, 0.01, 'quartOut')
	noteTweenX('oppo1', 1, -1000, 0.01, 'quartOut')
	noteTweenX('oppo2', 2, -1000, 0.01, 'quartOut')
	noteTweenX('oppo3', 3, -1000, 0.01, 'quartOut')
	noteTweenX('play0', 4, 355, 0.01, 'quartOut')
	noteTweenX('play1', 5, 465, 0.01, 'quartOut')
	noteTweenX('play2', 6, 695, 0.01, 'quartOut')
	noteTweenX('play3', 7, 805, 0.01, 'quartOut')
	end

    setProperty('healthBar.angle',90)
	setProperty('HB.angle', 90)
    setProperty('healthBar.x', -50)
    setProperty('healthBar.y', 380)

	setProperty('timeBar.y', getProperty('scoreTxt.y') - 30)
	setProperty('timeTxt.y', getProperty('scoreTxt.y') - 45)
end

function onUpdatePost()
    local ratingPercent = getProperty('ratingPercent')
    local accuracy = ratingPercent * 100
    local accuracyPercentage
	local showAcc = hits ~= 0
	local percent, rating = tonumber(getProperty("ratingPercent")) * 100, Unrated

	if accuracy % 1 == 0 then
		accuracyPercentage = string.format('%d%%', accuracy)
	else
		accuracyPercentage = string.format('%.2f%%', accuracy)
	end

    setTextString('scoreTxt', 'Fails: '..misses..' / Survive Rate: '..accuracyPercentage)

    setProperty('iconP1.y',getProperty('healthBar.percent') * -4.808 + 580.8)

    setProperty('iconP2.y',getProperty('healthBar.percent') * -4.808 + 480.8)

	if mustHitSection and getProperty('boyfriend.alpha') ~= 1 then
	doTweenAlpha('stupidni-', 'boyfriend', 1, 0.2, 'linear')
	end

	if not mustHitSection and getProperty('boyfriend.alpha') ~= 0.5 then
		doTweenAlpha('stupidni-', 'boyfriend', 0.3, 0.2, 'linear')
	end

    setProperty('iconP1.x',180)
    setProperty('iconP2.x',180)

	if (stopTweeing) then
	setProperty('HB.x', getProperty('HB.x') + 40)
	setProperty('HB.y', getProperty('HB.y') + 40)
	end
end