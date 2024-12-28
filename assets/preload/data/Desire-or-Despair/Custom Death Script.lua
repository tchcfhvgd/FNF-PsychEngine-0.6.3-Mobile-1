function onCreate()
    luaDebugMode = true
    setPropertyFromClass('GameOverSubstate', 'characterName', 'spike playable-death'); --Character json file for the death animation
    setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'spike'); --put in mods/sounds/
    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver'); --put in mods/music/
    setPropertyFromClass('GameOverSubstate', 'boyfriend.scrollFactor.x', 0)
    setPropertyFromClass('GameOverSubstate', 'boyfriend.scrollFactor.y', 0)
    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --put in mods/music/
end