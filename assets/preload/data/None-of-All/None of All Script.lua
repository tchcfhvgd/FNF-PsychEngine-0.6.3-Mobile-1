function onCreatePost()
	setProperty('camGame.alpha',0)
	makeLuaSprite('bgLOL', 'SongBG/localBG/none-of-all/BannerBG', 100, 0)
	setObjectCamera('bgLOL', 'hud')
	scaleObject('bgLOL', 0.95, 0.95)
	screenCenter('bgLOL','xy')
	addLuaSprite('bgLOL', true)
	setScrollFactor('bgLOL', 0, 0)

	makeLuaSprite('bTanner', 'SongBG/localBG/none-of-all/Banner', 100, 0)
	setObjectCamera('bTanner', 'hud')
	setProperty('bTanner.alpha', 0)
	scaleObject('bTanner', 0.9, 0.9)
	screenCenter('bTanner','xy')
    addLuaSprite('bTanner', true)
    setScrollFactor('bTanner', 0, 0)

	makeLuaSprite('songTxtThng', 'SongBG/localBG/none-of-all/Banner_Txt', -980, 0)
	scaleObject('songTxtThng', 0.95, 0.95)
	setObjectCamera('songTxtThng', 'hud')
    addLuaSprite('songTxtThng', true)
    setScrollFactor('songTxtThng', 0, 0)

	makeLuaSprite('credTxtThing', 'SongBG/localBG/none-of-all/credit_Txt', 1000, 1000)
	scaleObject('credTxtThing', 0.95, 0.95)
	setObjectCamera('credTxtThing', 'hud')
	addLuaSprite('credTxtThing', true)
	setScrollFactor('credTxtThing', 0, 0)
end

function onStepHit()
	if curStep == 1 then
	doTweenAlpha('hellothere1', 'bgLOL', 1, 0.5, 'Linear')
	end
	if curStep == 7 then
	doTweenX('whatsong', 'songTxtThng', 30, 1.3, 'Linear')
	end
	if curStep == 32 then
		doTweenAlpha('hellothere', 'bTanner', 1, 0.75, 'Linear')
		doTweenX('whatman', 'credTxtThing', 850, 0.75, 'Linear')
		doTweenY('whatman2', 'credTxtThing', 650, 0.75, 'Linear')
	end
	if curStep == 96 then
		doTweenAlpha('whatsong', 'songTxtThng', 0, 0.35, 'Linear')
	end
	if curStep == 105 then
		doTweenAlpha('whatman', 'credTxtThing', 0, 0.45, 'Linear')
	end
	if curStep == 114 then
		doTweenAlpha('hellothere', 'bTanner', 0, 0.45, 'Linear')
	end
	if curStep == 126 then
		setProperty('camHUD.alpha',0)
		removeLuaSprite('bgLOL',true)
		removeLuaSprite('bTanner',true)
		removeLuaSprite('credTxtThing',true)
		removeLuaSprite('songTxtThng',true)
	end
	if curStep == 148 then
		setProperty('camHUD.alpha',1)
		setProperty('camGame.alpha',1)
	end
end