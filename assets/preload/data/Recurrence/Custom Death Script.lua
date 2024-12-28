function onCreate()
    setPropertyFromClass('GameOverSubstate', 'characterName', 'SP-death'); --Character json file for the death animation
    setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'spookyded'); --put in mods/sounds/
    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver'); --put in mods/music/
    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'spookyconfirm'); --put in mods/music/
end