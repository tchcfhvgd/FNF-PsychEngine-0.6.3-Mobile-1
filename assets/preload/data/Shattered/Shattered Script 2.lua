function onCreate()
	addCharacterToList(blue-tom-rtx,'dad')
	addCharacterToList(blue-back,'dad')
	addCharacterToList(bf-week2-RTX,'bf')
	addCharacterToList(gf,'gf')
	precacheImage(BG/Sad/memorybg)

	for i=0, getProperty('unspawnNotes.length') do
	   if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
			setPropertyFromGroup('unspawnNotes', i, 'multSpeed', getRandomFloat(0.2, 1.6))
		end
	end
end