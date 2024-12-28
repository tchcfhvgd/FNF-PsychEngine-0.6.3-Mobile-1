local defaultNotePos = {};
local spin = false;
local arrowMoveX = 15;
local arrowMoveY = 30;
 
function onSongStart()
if getPropertyFromClass('ClientPrefs','enablemodchart') then
    for i = 0,7 do 
        x = getPropertyFromGroup('strumLineNotes', i, 'x')
        y = getPropertyFromGroup('strumLineNotes', i, 'y')
        table.insert(defaultNotePos, {x,y})
    end
end
end

function onUpdatePost(elapsed)
if getPropertyFromClass('ClientPrefs','enablemodchart') then
    songPos = getPropertyFromClass('Conductor', 'songPosition');
    currentBeat = (songPos / 1000) * (bpm / 170)
    if spin == true then 
        for i = 0,7 do 
            setPropertyFromGroup('strumLineNotes', i, 'x', defaultNotePos[i + 1][1] + arrowMoveX * math.sin((currentBeat + i*0.25) * math.pi))
            setPropertyFromGroup('strumLineNotes', i, 'y', defaultNotePos[i + 1][2] + arrowMoveY * math.cos((currentBeat + i*0.25) * math.pi))
        end
    end
	if curStep == 2640 then
		spin = true
	end
end
end