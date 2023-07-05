
--by latter
function onCreate()
--optimize the sound 

precacheSound('intro2')
precacheSound('intro3')
precacheSound('introGo')

precacheSound('joe123/intro2')
precacheSound('joe123/intro3')
precacheSound('joe123/introGo')

---skip the original Countdown
setProperty('skipCountdown', true);

--normal images
makeLuaSprite('T1', 'loading folder/ready', -850, -430)
setObjectCamera('T1', 'other')
setProperty('T1.alpha', 0)
scaleObject('T1', 0.65, 0.65)
addLuaSprite('T1', true)

makeLuaSprite('T2', 'loading folder/set', -850, -430)
setObjectCamera('T2', 'other')
setProperty('T2.alpha', 0)
scaleObject('T2', 0.65, 0.65)
addLuaSprite('T2', true)

makeLuaSprite('T3', 'loading folder/go', -850, -530)
setObjectCamera('T3', 'other')
setProperty('T3.alpha', 0)
scaleObject('T3', 0.65, 0.65)
addLuaSprite('T3', true)

--gost images
makeLuaSprite('T12', 'loading folder/ready', -850, -430)
setObjectCamera('T12', 'other')
setProperty('T12.alpha', 0)
scaleObject('T12', 0.65, 0.65)
addLuaSprite('T12', true)

makeLuaSprite('T22', 'loading folder/set', -850, -430)
setObjectCamera('T22', 'other')
setProperty('T22.alpha', 0)
scaleObject('T22', 0.65, 0.65)
addLuaSprite('T22', true)

makeLuaSprite('T32', 'loading folder/go', -850, -530)
setObjectCamera('T32', 'other')
setProperty('T32.alpha', 0)
scaleObject('T32', 0.65, 0.65)
addLuaSprite('T32', true)

--fake loading screen
if songName == 'A-Family-Guy' then
makeLuaSprite('loading', 'loading folder/AFGscreen', 0, 0)

elseif songName == 'Death-Lives' then
makeLuaSprite('loading', 'loading folder/DL_loading_screen', 0, 0)
scaleObject('loading', 0.7, 0.7)

end

setObjectCamera('loading', 'other')
addLuaSprite('loading', true)
end
announcer = false
function onCreatePost()
--here where everything starts
runTimer('loadend', getRandomFloat(2,4))

end
pauseable = false
function onPause()
if not pauseable then
	return Function_Stop
elseif pauseable then
return Function_Continue;
end
end

--no song start
Countdown = false
function onStartCountdown()
if not Countdown then
return Function_Stop
elseif Countdown then
return Function_Continue;
end
end


CD = 1
function onTimerCompleted(t)
if t == 'ok_go_now' then
Countdown = true
removeLuaSprite('T3', true)
removeLuaSprite('T32', true)
startCountdown();--start song


elseif t == 'loadend' then

runTimer('Ton', 1, 4)
doTweenAlpha('endtheload', 'loading', 0, 1, 'quadInOut')


elseif t == 'Ton' then
if CD == 1 then
playSound('intro2', 1)
setProperty('T1.alpha', 1)
setProperty('T1.scale.x', 0.8)
setProperty('T1.scale.y', 0.8)
doTweenX('norsizeX', 'T1.scale', 0.65, 0.5 ,'circOut')
doTweenY('norsizeY', 'T1.scale', 0.65, 0.5 ,'circOut')

setProperty('T12.alpha', 0.5)
setProperty('T12.scale.x', 0.8)
setProperty('T12.scale.y', 0.8)
doTweenX('norsizeX2', 'T12.scale', 1.3, 0.5 ,'linear')
doTweenY('norsizeY2', 'T12.scale', 1.3, 0.5 ,'linear')
doTweenAlpha('norsize3', 'T12', 0, 0.5 ,'linear')
CD = 2

elseif CD == 2 then
playSound('intro3', 1)
removeLuaSprite('T1', true)
removeLuaSprite('T12', true)
setProperty('T2.alpha', 1)
setProperty('T2.scale.x', 0.8)
setProperty('T2.scale.y', 0.8)
doTweenX('norsizeX', 'T2.scale', 0.65, 0.5 ,'circOut')
doTweenY('norsizeY', 'T2.scale', 0.65, 0.5 ,'circOut')

setProperty('T22.alpha', 0.5)
setProperty('T22.scale.x', 0.8)
setProperty('T22.scale.y', 0.8)
doTweenX('norsizeX2', 'T22.scale', 1.3, 0.5 ,'linear')
doTweenY('norsizeY2', 'T22.scale', 1.3, 0.5 ,'linear')
doTweenAlpha('norsize3', 'T22', 0, 0.5 ,'linear')
CD = 3
elseif CD == 3 then
playSound('introGo', 1, 'removthesound')
runTimer('Pauseactiv', 1.5)
soundFadeOut('removthesound', 1, 0)
removeLuaSprite('T2', true)
removeLuaSprite('T22', true)
setProperty('T3.alpha', 1)
setProperty('T3.scale.x', 0.8)
setProperty('T3.scale.y', 0.8)
doTweenX('norsizeX', 'T3.scale', 0.65, 0.5 ,'circOut')
doTweenY('norsizeY', 'T3.scale', 0.65, 0.5 ,'circOut')

setProperty('T32.alpha', 0.5)
setProperty('T32.scale.x', 0.8)
setProperty('T32.scale.y', 0.8)
doTweenX('norsizeX2', 'T32.scale', 1.3, 0.5 ,'linear')
doTweenY('norsizeY2', 'T32.scale', 1.3, 0.5 ,'linear')
doTweenAlpha('norsize3', 'T32', 0, 0.5 ,'linear')
CD = 0
runTimer('ok_go_now', 1)
end
elseif t == 'Pauseactiv' then
pauseable = true
end
end

--to shake the images
function onUpdate()

setProperty('T3.offset.x', getRandomInt(-5, 5))
setProperty('T3.offset.y', getRandomInt(-5, 5))
setProperty('T2.offset.x', getRandomInt(-5, 5))
setProperty('T2.offset.y', getRandomInt(-5, 5))
setProperty('T1.offset.x', getRandomInt(-5, 5))
setProperty('T1.offset.y', getRandomInt(-5, 5))

setProperty('T32.offset.x', getRandomInt(-10, 10))
setProperty('T32.offset.y', getRandomInt(-10, 10))
setProperty('T22.offset.x', getRandomInt(-10, 10))
setProperty('T22.offset.y', getRandomInt(-10, 10))
setProperty('T12.offset.x', getRandomInt(-10, 10))
setProperty('T12.offset.y', getRandomInt(-10, 10))


if not announcer then
announcer = math.random(getRandomFloat(1,10))
end
end
