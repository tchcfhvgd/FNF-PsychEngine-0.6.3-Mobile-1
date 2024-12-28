function onCreate()
	makeLuaSprite('blackscreen', 'blackscreen', 0, 0)
	makeGraphic('blackscreen', 1920, 1280, '000000')
	setObjectCamera('blackscreen', 'other')
	addLuaSprite('blackscreen', false)
end

function onCreatePost()
	doTweenAlpha('GUItween', 'camHUD', 0, 0.0000000001, 'linear');

	addCharacterToList(MEME-BOI,'dad')
	addCharacterToList(MEME-BOI-old,'dad')
	addCharacterToList(MEME-BOI-sans,'dad')
end

function onStepHit()
	if curStep == 6 then
	doTweenY('tweentag', 'camFollow', 550 , 10.3, "linear")
	doTweenAlpha('blackscreencum', 'blackscreen', 0, 5, 'linear')
end
	if curStep == 124 then
	doTweenAlpha('GUItween', 'camHUD', 1, 0.25, 'linear');
end
	if curStep == 656 then
	doTweenAlpha('GUItween', 'camHUD', 0.25, 0.25, 'linear');
end
	if curStep == 672 then
	doTweenAlpha('GUItween', 'camHUD', 0, 1, 'linear');
end
	if curStep == 688 then
	doTweenAlpha('GUItween', 'camHUD', 1, 0.5, 'linear');
end
	if curStep == 816 then
	setProperty('MEME BG.alpha', 1)
	setProperty('meme new.alpha', 0)
	setProperty('watcher.alpha', 0)
	setProperty('chee.alpha', 0)
end
	if curStep == 944 then
	setProperty('watcher.alpha', 1)
	setProperty('meme new.alpha', 1)
	setProperty('chee.alpha', 1)
	setProperty('MEME BG.alpha', 0)
end
	if curStep == 1072 then
	doTweenAlpha('GUItween', 'camHUD', 0.25, 0.25, 'linear');
end
	if curStep == 1098 then
	doTweenAlpha('GUItween', 'camHUD', 1, 0.75, 'linear');
end
end