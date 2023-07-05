-- by latter
YX = false
keep = false
function onCreatePost()
setProperty('healthBarBG.color', getColorFromHex ('000000'))
end
the_angle_shake = 0
--icon and healthBar movement
function onUpdatePost()
the_angle_shake = math.random(1,2)

setProperty('healthBar.offset.x', getProperty('healthBarBG.offset.x'))

setProperty('healthBar.offset.y', getProperty('healthBarBG.offset.y'))
if keep then
setProperty('iconP1.offset.x', getProperty('healthBarBG.offset.x'))
setProperty('iconP1.offset.y', getProperty('healthBarBG.offset.y'))
end

if songName == 'Final-Fight' then

setProperty('iconP2.offset.x', getProperty('healthBarBG.offset.x'))
setProperty('iconP2.offset.y', getProperty('healthBarBG.offset.y') + 20)--iconP2 is fucked lol

elseif songName == 'Rooten-Family' then
setProperty('iconP2.offset.x', getProperty('healthBarBG.offset.x') + 10)
setProperty('iconP2.offset.y', getProperty('healthBarBG.offset.y'))

elseif songName == 'fashioned-values' then
setProperty('iconP1.offset.x', 40)

if dadName == 'Retep' then

setProperty('iconP2.offset.x', getProperty('healthBarBG.offset.x') + 40)
setProperty('iconP2.offset.y', getProperty('healthBarBG.offset.y') + 15)

elseif dadName == 'Retep and Cleveland' then
setProperty('iconP2.offset.x', getProperty('healthBarBG.offset.x') + 80)
setProperty('iconP2.offset.y', getProperty('healthBarBG.offset.y') + 30)

end

elseif songName == 'Twinkle' then
setProperty('iconP2.offset.x', getProperty('healthBar.offset.x') + 10)
setProperty('iconP2.offset.y', getProperty('healthBar.offset.y'))
setProperty('iconP1.offset.x', getProperty('healthBar.offset.x') - 5)
setProperty('iconP1.offset.y', getProperty('healthBar.offset.y') + 5)

elseif songName == 'A-Family-Guy' then
setProperty('iconP2.offset.x', getProperty('healthBar.offset.x') + 25)

setProperty('iconP1.offset.x', getProperty('healthBar.offset.x') - 15)

elseif songName == 'Airborne' then
setProperty('iconP2.offset.y', getProperty('healthBar.offset.y') + 30)
setProperty('iconP2.offset.x', getProperty('healthBar.offset.x') + 30)

else
setProperty('iconP2.offset.x', getProperty('healthBar.offset.x'))
setProperty('iconP2.offset.y', getProperty('healthBar.offset.y'))


end

		doTweenAngle('bf', 'iconP1', 0, 0.3, 'linear')
doTweenX('dodo', 'iconP1.scale', 1, 0.2, 'linear')
if getProperty('health') <= 0.4 then
		doTweenAngle('boyfren', 'iconP1', getRandomFloat(-10, 10), 0.01, 'linear')
elseif getProperty('health') >= 1.63 then
		doTweenAngle('dad', 'iconP2', getRandomFloat(-10, 10), 0.01, 'linear')
else

		doTweenAngle('dad', 'iconP2', 0, 0.01, 'linear')

end



if YX then
doTweenY('dhdY', 'healthBarBG.offset', getRandomFloat(-30, 30), 0.01, 'linear')
doTweenX('dhdX', 'healthBarBG.offset', getRandomFloat(-30, 30), 0.01, 'linear')


end
end

--iconP1 bounce on beat iconP2 shake on beat

function onBeatHit()
if curBeat %2 == 0 then
YX = true
runTimer('YXC', 0.1)
	setProperty('iconP1.scale.x', 1.5);
	setProperty ('iconP1.angle', 20)

else
	setProperty('iconP1.scale.x', 0.5);
	setProperty ('iconP1.angle', -20)
YX = true
runTimer('YXC', 0.1)
end
end
shakeico = false
function noteMiss(id, direction, noteType, isSustainNote)
if shakeico then
triggerEvent('icons')
end
if songName == 'A-Family-Guy' then
if curStep < 1085 or curStep > 1217 then
triggerEvent('icons')

end
end
end

function onStepHit()
if songName == 'Rooten-Family' then
if curStep == 130 then
shakeico = true
elseif curStep == 252 then
shakeico = false
elseif curStep == 508 then
shakeico = true
elseif curStep == 764 then
shakeico = false
end
end
if songName == 'fashioned-values' then
if curStep == 68 then
shakeico = true
elseif curStep == 512 then
shakeico = false
elseif curStep == 646 then
shakeico = true
elseif curStep == 1172 then
shakeico = false
elseif curStep == 1414 then
shakeico = true
elseif curStep == 1532 then
shakeico = false
end
end
if songName == 'Twinkle' then
if curStep == 256 then
shakeico = true
elseif curStep == 1019 then
shakeico = false
elseif curStep == 1166 then
shakeico = true
elseif curStep == 1918 then
shakeico = false
elseif curStep == 2460 then
shakeico = true
elseif curStep == 2683 then
shakeico = false
end
end
end

function onEvent(name,value1,value2)
if name == 'icons' then
if getProperty('iconP1.alpha') == 1 or getProperty('iconP1.visible') == true then

setProperty('iconP1.color', getColorFromHex('FF0007'))
doTweenColor('back1', 'iconP1', 'ffffff', 0.2, 'linear')


keep = true
YX = true
runTimer('keeptr', 0.1)
end
end
end

-- return iconP2 to normal
function onTimerCompleted(tag)
if tag == 'YXC' then

doTweenY('dhY2', 'healthBarBG.offset',0, 0.01, 'linear')
doTweenX('dhX2', 'healthBarBG.offset',0, 0.01, 'linear')

YX = false

end
if tag == 'keeptr' then
doTweenY('dhY2', 'healthBarBG.offset',0, 0.01, 'linear')
doTweenX('dhX2', 'healthBarBG.offset',0, 0.01, 'linear')
YX = false
keep = false
end
end



-- double note shake effect
function opponentNoteHit(id, direction, noteType, isSustainNote)
	if Du == getPropertyFromGroup('notes', id, 'strumTime') and not isSustainNote then

cameraShake('camHUD', 0.05, 0.05)
cameraShake('camGame', 0.05, 0.05)
if the_angle_shake == 1 then
setProperty('camGame.angle', 10)
setProperty('camHUD.angle', 10)
else
setProperty('camGame.angle', -10)
setProperty('camHUD.angle', -10)
end
doTweenAngle('bduew to ok wuwhw5ejs', 'camHUD', 0, 0.1, 'circOut')
doTweenAngle('bduew to ok wuwhw5efjs', 'camGame', 0, 0.1, 'circOut')
elseif Du == getPropertyFromGroup('notes', id, 'strumTime') and isSustainNote then
cameraShake('camHUD', 0.02, 0.02)
cameraShake('camGame', 0.02, 0.02)

	end
		Du = getPropertyFromGroup('notes', id, 'strumTime')
	end