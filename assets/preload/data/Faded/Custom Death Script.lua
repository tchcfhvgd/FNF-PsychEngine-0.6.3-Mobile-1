function onCreate()
    setPropertyFromClass('GameOverSubstate', 'characterName', 'crew bf-death'); --Character json file for the death animation
    setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'ded'); --put in mods/sounds/
    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver'); --put in mods/music/
    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --put in mods/music/
end