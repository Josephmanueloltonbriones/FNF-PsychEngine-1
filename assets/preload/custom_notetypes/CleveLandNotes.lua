function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'CleveLandNotes' then --Check if the note on the chart is a Bullet Note
            setPropertyFromGroup('unspawnNotes', i, 'texture', 'CleveLandNotes'); --Change textures
            if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
                setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
            end
        end
    end
end

