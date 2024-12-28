local CAMxx = 0.75;
local CAMyy = 0.75;
local xx = 375;
local yy = 600;
local xx2 = 650;
local yy2 = 600;
local ofs = 30;
local followchars = true;
local del = 0;
local del2 = 0;

function onUpdate()
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
	    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end

function onCreatePost()
	makeLuaSprite('bgThing', 'SongBG/localBG/songBG4', 150, 150)
	setObjectCamera('bgThing', 'other')
    scaleObject('bgThing', 0.6, 0.6)
    addLuaSprite('bgThing', true)
    setProperty('bgThing.alpha', 0)
    setScrollFactor('bgThing', 0, 0)
    setObjectOrder('bgThing', getObjectOrder('musicIcon') - 1)

    makeLuaSprite('banner', 'SongBG/localBG/Kaboom', 250, 200)
    scaleObject('banner', 0.8, 0.8)
	setObjectCamera('banner', 'other')
    setProperty('banner.alpha', 0)
    addLuaSprite('banner', true)
    setScrollFactor('banner', 0, 0)
end

function onSongStart()
    doTweenAlpha('hello', 'banner', 1, 2, 'expoOut')
    doTweenAlpha('befast', 'bgThing', 0.4, 2, 'expoOut')

    runTimer('getthefuckout-', 5, 1)
    runTimer('murder', 7, 1)
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'getthefuckout-' then
        doTweenAlpha('hello', 'banner', 0, 2, 'quadInOut')
        doTweenAlpha('befast', 'bgThing', 0, 2, 'quadInOut')
    end
    if tag == 'murder' then
        removeLuaSprite('banner', true)
        removeLuaSprite('bgThing', true)
    end
end