function onCreate()
    setPropertyFromClass('GameOverSubstate', 'characterName', 'bf cursor-death'); --Character json file for the death animation
    setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'punch'); --put in mods/sounds/
    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver'); --put in mods/music/
    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --put in mods/music/
end

function onUpdatePost(elapsed)
    setProperty('camGame.zoom', 0.75)
end