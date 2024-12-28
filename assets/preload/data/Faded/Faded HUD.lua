local maxScore = 0
local percentDecimals = 2

local Unrated = 'N/A'
local ratingStrings = {
	{100, "Greatest Crewmate"},
	{99, "RIP SFC"},
	{90, "Welldone!"},
	{80, "Good Job"},
	{70, "Good"},
	{69, "Funni Number"},
	{60, "OK"},
	{50, "Mid"},
	{40, "Noob."},
	{20, "Suck."},
	{0, "Skill Issue."}
}

function onCreatePost() 
	setHealthBarColors('4E6265','263435') 
	setProperty('HB.alpha', 0)

	setTextFont('sickTxt', 'Roboto-Medium.ttf')
	setTextFont('goodTxt', 'Roboto-Medium.ttf')
	setTextFont('badTxt', 'Roboto-Medium.ttf')
	setTextFont('shitTxt', 'Roboto-Medium.ttf')
	setTextFont('hitsTxt', 'Roboto-Medium.ttf')
	setTextFont('comboTxt', 'Roboto-Medium.ttf')
	setTextFont('nps', 'Roboto-Medium.ttf')

	setTextFont('timeTxt', 'Roboto-Medium.ttf')
	setProperty('timeTxt.x', 40)
	setProperty('timeTxt.size', 24)
	setProperty('timeTxt.y', 27)
    setTextAlignment('timeTxt', 'left')

	setProperty('timeBar.x', 102)
	setProperty('timeBar.y', 38)
	setProperty('timeBar.angle', 180)
	setProperty('timeBar.scale.x', 1.365)
	setProperty('timeBar.scale.y', 2.4)
    setTimeBarColors('426342', '4DD049')

    setProperty('iconP2.y', (downscroll and 70 or 430))
    setProperty('iconP1.y', (downscroll and 75 or 435))
	setProperty('timeBarBG.alpha', 0)

	setTextFont('scoreTxt', 'Roboto-Medium.ttf')
	setProperty('scoreTxt.x', 0)
	setProperty('scoreTxt.size', 24)
	setProperty('scoreTxt.y', 200)
    setTextAlignment('scoreTxt', 'left')

	setProperty('healthBar.scale.x', 0.35)
	setProperty('healthBar.scale.y', 1.5)
	setProperty('healthBar.x', -80)
	setProperty('healthBar.y', (downscroll and 139 or 493))

	makeLuaSprite('newTimeBG', 'hud/sussy_bar', 20, 20)
	setObjectCamera('newTimeBG', 'hud')
    scaleObject('newTimeBG', 0.65, 0.65)
    addLuaSprite('newTimeBG', true)
    setScrollFactor('newTimeBG', 0, 0)
    setObjectOrder('newTimeBG', 12)

    makeLuaSprite('useButton', 'hud/button', 1100, (downscroll and 5 or 550))
    setObjectCamera('useButton', 'hud')
    addLuaSprite('useButton', true)
    setScrollFactor('useButton', 0, 0)
    setObjectOrder('useButton', 12)

    makeLuaSprite('newScore', 'hud/sussy_health', 100, (downscroll and 120 or 480))
    setObjectCamera('newScore', 'hud')
    scaleObject('newScore', 0.55, 0.55)
    addLuaSprite('newScore', true)
    setScrollFactor('newScore', 0, 0)

    makeLuaSprite('taskBorder','taskBorder',0,200)
    makeGraphic('taskBorder',440,240, 'FFFFFF')
    addLuaSprite('taskBorder',false)
    setProperty('taskBorder.alpha', 0.4)
    setObjectCamera('taskBorder','hud')

    makeLuaSprite('infoBorder','infoBorder',440,200)
    makeGraphic('infoBorder',30,200, 'FFFFFF')
    addLuaSprite('infoBorder',false)
    setProperty('infoBorder.alpha', 0.4)
    setObjectCamera('infoBorder','hud')

    makeLuaText('songInfos', 'Song: Faded - By: HeroComicS\nCharted: Noah Gani1', 450, 0, 380)
    setObjectCamera("songInfos", 'hud');
    setTextColor('songInfos', 'FFFFFF')
    setTextSize('songInfos', 22);
    addLuaText("songInfos");
    setProperty('songInfos.borderSize', 1.3)
    setTextFont('songInfos', "Roboto-Medium.ttf")
    setTextAlignment('songInfos', 'left')

    makeLuaText('infoTxt', 'Informations', 450, 230, 410)
    setObjectCamera("infoTxt", 'hud');
    setTextColor('infoTxt', 'FFFFFF')
    setTextSize('infoTxt', 26);
    addLuaText("infoTxt");
    setProperty('infoTxt.borderSize', 1.3)
    setProperty('infoTxt.angle', 90)
    setTextFont('infoTxt', "Roboto-Medium.ttf")
    setTextAlignment('infoTxt', 'left')
end

function onUpdatePost(elapsed)
    local ratingPercent = getProperty('ratingPercent')
    local accuracy = ratingPercent * 100
    local accuracyPercentage
	local showAcc = hits ~= 0
	local percent, rating = tonumber(getProperty("ratingPercent")) * 100, Unrated
	local health = math.max(0, math.min(getHealth() * 50, 100))

    setProperty('iconP2.x', -30)
    setProperty('iconP1.x', 320)
    scaleObject('iconP2', 0.7, 0.7)
    scaleObject('scoreTxt', 1, 1)
    scaleObject('iconP1', 0.7, 0.7)

    if keyJustPressed('space') and getProperty('infoTxt.x') > 229 then
        setProperty('useButton.color',getColorFromHex('313131'))
        doTweenX('aa', 'infoTxt', -210, 0.5, 'circOut')
        doTweenX('saa', 'scoreTxt', -400, 0.5, 'circOut')
        doTweenX('mm', 'songInfos', -450, 0.5, 'circOut')
        doTweenX('oo', 'infoBorder', 0, 0.5, 'circOut')
        doTweenX('nn', 'taskBorder', -440, 0.5, 'circOut')
    end
    if keyJustPressed('space') and getProperty('infoTxt.x') < 229 then
        setProperty('useButton.color',getColorFromHex('FFFFFF'))
        doTweenX('aa', 'infoTxt', 230, 0.5, 'circOut')
        doTweenX('saa', 'scoreTxt', 0, 0.5, 'circOut')
        doTweenX('mm', 'songInfos', 0, 0.5, 'circOut')
        doTweenX('oo', 'infoBorder', 440, 0.5, 'circOut')
        doTweenX('nn', 'taskBorder', 0, 0.5, 'circOut')
    end
    
        if showAcc then
            local v
            for i = #ratingStrings, 1, -1 do
                v = ratingStrings[i]
                if (percent >= v[1]) then
                    rating = v[2]
                else
                    break
                end
            end
        end
    
        if accuracy % 1 == 0 then
            accuracyPercentage = string.format('%d%%', accuracy)
        else
            accuracyPercentage = string.format('%.2f%%', accuracy)
        end

    if misses > 0 then
    setTextString('scoreTxt', 'Score: '..score..'\nCombo Breaks: '..misses..'\nAccuracy: '..accuracyPercentage..'\nRating: '..ratingName)
    else
    setTextString('scoreTxt', 'Score: '..score..'\nCombo Breaks: '..misses..'\nAccuracy: '..accuracyPercentage..'\nRating: '..ratingName..' - '..ratingFC)
    end
end

function onEvent(name,value1,value2)
	if name == 'Reactor Beep' then
        setHealthBarColors('D3677E','263435')
    end
end

function onStepHit() 
    if curStep == 112 then
        setHealthBarColors('4e6265','263435')
end
    if curStep == 1641 then
        setTimeBarColors('426342', 'FF0000')
    end
end