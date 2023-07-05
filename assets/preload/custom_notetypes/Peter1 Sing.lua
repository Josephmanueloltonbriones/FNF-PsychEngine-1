function onCreate()

    for i = 0, getProperty('unspawnNotes.length')-1 do
        if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Peter1 Sing' then --Check if the note on the chart is a Bullet Note
            setPropertyFromGroup('unspawnNotes', i, 'texture', 'PeterNotes'); --Change texture		
            setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true); 
            if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
                setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
            end
        end
    end
end