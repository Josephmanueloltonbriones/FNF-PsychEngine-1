
function onCreatePost()
makeAnimatedLuaSprite('HBA', 'healthBarAnim', 0, 0)
addAnimationByPrefix('HBA', 'moven', 'healthmove', 24, true)
setObjectCamera('HBA', 'hud')
addLuaSprite('HBA', false)

setObjectOrder('healthBarBG', 1)
setObjectOrder('healthBar', 2)
setObjectOrder('HBA', 3)
setObjectOrder('iconP1', 4)
setObjectOrder('iconP2', 5)

			for i = 0, getProperty('unspawnNotes.length')-1 do
				if getPropertyFromGroup('unspawnNotes', i, 'mustPress') == false then
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'CorruptedNotes');

				end
			end
		end

local defaultNotePos = {};
local Y1 = -5;
local Y2 = 5;
local X1 = -5;
local X2 = 5;
local move = true;

dododo = true
function onSongStart()
			for i = 0, getProperty('opponentStrums.length')-1 do

				setPropertyFromGroup('opponentStrums', i, 'texture', 'CorruptedNotes');
			end
    for i = 0,3 do
        x = getPropertyFromGroup('strumLineNotes', i, 'x')

        y = getPropertyFromGroup('strumLineNotes', i, 'y')

        table.insert(defaultNotePos, {x,y})

    end
end

function onUpdate(elapsed)
    songPos = getPropertyFromClass('Conductor',  'songPosition');

setProperty('HBA.x', getProperty('healthBarBG.x'))
setProperty('HBA.y', getProperty('healthBarBG.y'))
setProperty('HBA.alpha', getProperty('healthBarBG.alpha'))
setProperty('HBA.visible', getProperty('healthBarBG.visible'))
setProperty('HBA.angle', getProperty('healthBarBG.angle'))

setProperty('HBA.offset.x', getProperty('healthBarBG.offset.x'))
setProperty('HBA.offset.y', getProperty('healthBarBG.offset.y'))

    currentBeat = (songPos / 900) * (bpm / 150)

    if  move == true then
        for i = 0,3 do
            setPropertyFromGroup('strumLineNotes', i, 'x', defaultNotePos[i + 1][1] + getRandomInt(X1, X2) * math.sin((currentBeat + i*1.35) * math.pi))

            setPropertyFromGroup('strumLineNotes', i, 'y', defaultNotePos[i + 1][2] + getRandomInt(Y1, Y2) * math.cos((currentBeat + i*1.65) * math.pi))
        end
    end
if songName == 'Airborne' and dododo == true then
move = false
dododo = false
end
end