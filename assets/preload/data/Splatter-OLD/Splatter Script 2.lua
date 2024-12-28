local xx3 = 420;
local yy3 = 530;
local ofs = 30;
local followchars = true;
local del = 0;
local del2 = 0;
local stopit = 'true'

function onUpdate()
if stopit == 'true' then
    if followchars == true then
        if mustHitSection == false then
            if getProperty('gf.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx3-ofs,yy3)
            end
            if getProperty('gf.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx3+ofs,yy3)
            end
            if getProperty('gf.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx3,yy3-ofs)
            end
            if getProperty('gf.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx3,yy3+ofs)
            end
            if getProperty('girlfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx3,yy3)
            end
end
end
end
if stopit == 'false' or stopit == '' then
    if cameraPos == 'gf' then 
        triggerEvent('Camera Follow Pos',xx3,yy3)
    end
end

    if localSpeed == 100 then
    ofs = 0
    else
    ofs = 30
    end
end

function onEvent(stupid, v1, v2)
if stupid == 'Camera Speed' then
    setProperty('cameraSpeed', v1)
    localSpeed = v1
end

if stupid== 'Cam Set Target' then
    cameraPos = v1
    stopit = v2
end
end