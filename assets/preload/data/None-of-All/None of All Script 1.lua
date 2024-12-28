function onCreate()
	setTextFont('scoreTxt', 'DOJ.ttf')
	setTextSize('scoreTxt', 20)
	setTextFont('healthCounter', 'DOJ.ttf')
	setTextFont('timeTxt', 'DOJ.ttf')
	setTextFont('botplayTxt', 'DOJ.ttf')
	setTextFont('judjTxt', 'DOJ.ttf')
	setTextFont('Lyrics', 'DOJ.ttf')

	makeLuaSprite('blackscreen', 'blackscreen', 0, -200)
	makeGraphic('blackscreen', 1920, 1280, '000000')
	setObjectCamera('blackscreen', 'other')
	addLuaSprite('blackscreen', true)
end

function onCreatePost()
	setProperty('blackscreen.alpha', 0)
end

function onStepHit()
	if curStep == 532 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0.75, 1.5, 'linear')
end
	if curStep == 540 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0, 1.5, 'linear')
end
	if curStep == 548 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0.75, 1.5, 'linear')
end
	if curStep == 556 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0, 1.5, 'linear')
end
	if curStep == 564 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0.75, 1.5, 'linear')
end
	if curStep == 572 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0, 1.5, 'linear')
end
	if curStep == 580 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0.75, 1.5, 'linear')
end
	if curStep == 588 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0, 1.5, 'linear')
end

	if curStep == 596 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0.75, 1.5, 'linear')
end
	if curStep == 604 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0, 1.5, 'linear')
end
	if curStep == 612 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0.75, 1.5, 'linear')
end
	if curStep == 620 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0, 1.5, 'linear')
end
	if curStep == 628 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0.75, 1.5, 'linear')
end
	if curStep == 636 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0, 1.5, 'linear')
end
	if curStep == 644 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0.75, 1.5, 'linear')
end
	if curStep == 652 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0, 1.5, 'linear')
end

	if curStep == 660 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0.75, 1.5, 'linear')
end
	if curStep == 668 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0, 1.5, 'linear')
end
	if curStep == 676 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0.75, 1.5, 'linear')
end
	if curStep == 684 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0, 1.5, 'linear')
end
	if curStep == 692 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0.75, 1.5, 'linear')
end
	if curStep == 700 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0, 1.5, 'linear')
end
	if curStep == 708 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0.75, 1.5, 'linear')
end
	if curStep == 716 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0, 1.5, 'linear')
end

	if curStep == 724 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0.75, 1.5, 'linear')
end
	if curStep == 732 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0, 1.5, 'linear')
end
	if curStep == 740 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0.75, 1.5, 'linear')
end
	if curStep == 748 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0, 1.5, 'linear')
end
	if curStep == 756 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0.75, 1.5, 'linear')
end
	if curStep == 764 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0, 1.5, 'linear')
end
	if curStep == 772 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0.75, 1.5, 'linear')
end
	if curStep == 780 then
	doTweenAlpha('blackscreencum', 'blackscreen', 0, 1.5, 'linear')
end
--fire bg
	if curStep == 1428 then
	doTweenAlpha('GUItween', 'camHUD', 0, 0.0000000001, 'linear');

	setProperty('wall.alpha', 0)
	setProperty('ground.alpha', 0)
	setProperty('cheese.alpha', 0)
	setProperty('fire.alpha', 1)
end
	if curStep == 1844 then
--hide you I
	doTweenAlpha('AlphaTween1', 'healthBarBG', 0, 0.0000000001)
	doTweenAlpha('AlphaTween2', 'healthBar', 0, 0.0000000001)
	doTweenAlpha('AlphaTween4', 'iconP1', 0, 0.0000000001)
	doTweenAlpha('AlphaTween5', 'iconP2', 0, 0.0000000001)
	setProperty('HB.visible', false)
	setProperty('Health.visible', false)
end
	if curStep == 2100 then
--hide you I 2
	doTweenAlpha('AlphaTween1', 'healthBarBG', 1, 0.0000000001)
	doTweenAlpha('AlphaTween2', 'healthBar', 1, 0.0000000001)
	doTweenAlpha('AlphaTween4', 'iconP1', 1, 0.0000000001)
	doTweenAlpha('AlphaTween5', 'iconP2', 1, 0.0000000001)
	setProperty('HB.visible', true)
	setProperty('Health.visible', true)
end
	if curStep == 2548 then
	doTweenAlpha('dadfade','dad', 0 , 2 , 'linear')
end
	if curStep == 2596 then
	doTweenAlpha('bffade','boyfriend', 0 , 1 , 'linear')
end
	if curStep == 2612 then
	setProperty('DOJdead.alpha', 1)
	setProperty('empty.alpha', 1)
	setProperty('boyfriendGroup.visible',false)
	setProperty('dadGroup.visible',false)
end
end