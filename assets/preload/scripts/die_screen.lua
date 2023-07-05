local i = 5
--by latter

I_never_played_DOORS = false
DVD = false
lucky_gay_color = false
cologay = 1


function onGameOverStart()
setPropertyFromClass('flixel.FlxG', 'mouse.visible', true);

    initLuaShader("CameraGlitch")

    makeLuaSprite("temporaryShader1")
    setSpriteShader("temporaryShader1", "CameraGlitch")
		runHaxeCode([[
			trace(ShaderFilter);
			game.camOther.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader1").shader)]);
		]])
		addHaxeLibrary("ShaderFilter1", "openfl.filters")

makeLuaSprite('mf_just_died_lmao_but_tv', 'menuDesat', -450 ,-410)
scaleObject('mf_just_died_lmao_but_tv', 2, 2)
setObjectCamera('mf_just_died_lmao_but_tv', 'other')
setProperty('mf_just_died_lmao_but_tv.alpha', 1)
setObjectOrder('mf_just_died_lmao_but_tv', 1)
addLuaSprite('mf_just_died_lmao_but_tv', true)


makeLuaSprite('mf_just_died_lmao', 'YOU_DIED', -950 ,-950)
scaleObject('mf_just_died_lmao', 2, 2)
setObjectOrder('mf_just_died_lmao', 2)
setObjectCamera('mf_just_died_lmao', 'other')
setProperty('mf_just_died_lmao.alpha', 0)
addLuaSprite('mf_just_died_lmao', true)


for i = 1,3 do
makeLuaSprite('mf'..i, 'YOU_DIED', getRandomFloat(-10, 700),getRandomFloat(-50, 500))
scaleObject('mf'..i, 0.2, 0.2)
setObjectCamera('mf'..i, 'other')
setProperty('mf'..i..'.alpha', 0)
setObjectOrder('mf'..i, 4)
addLuaSprite('mf'..i, true)
end

makeAnimatedLuaSprite('ef', 'animated/effect', -550, -300);
addAnimationByPrefix('ef','effectdanm','effect animation',24,true)
setObjectCamera('ef', 'other')
setProperty('ef.alpha', 0)
scaleObject('ef', 1.73, 1.73);
setObjectOrder('ef', 5)
addLuaSprite('ef', true)

 setProperty('boyfriend.visible', false)


makeLuaSprite('border', nil, 150 ,-50)
makeGraphic('border', 800, 5, 'ffffff')
setProperty('border.visible', false)
setObjectCamera('border', 'other')
addLuaSprite('border', true)

makeLuaSprite('border2', nil, 150 ,370)
makeGraphic('border2', 800, 5, 'ffffff')
setObjectCamera('border2', 'other')
setProperty('border2.visible', false)
addLuaSprite('border2', true)

makeLuaSprite('border3', nil, 155 ,50)
makeGraphic('border3', 5, 800, 'ffffff')
setObjectCamera('border3', 'other')
setProperty('border3.visible', false)
addLuaSprite('border3', true)

makeLuaSprite('border4', nil, 470 ,0)
makeGraphic('border4', 5, 800, 'ffffff')
setObjectCamera('border4', 'other')
setProperty('border4.visible', false)
addLuaSprite('border4', true)


runTimer('dothething', 1)
runTimer('dothething2', 3)
runTimer('dothethingdvd', 5)
runTimer('dothething3', getRandomFloat(1, 3), 9999999999)
end

function onUpdate()
setShaderFloat("temporaryShader1", "iTime", os.clock());

cologay = math.random(1,10)
if not lucky_gay_color then
lucky_gay_color = math.random(getRandomFloat(1,30))

end
end


MS = -5
S = 5
flashs = false
ret = false
trail = 1

timething = 0.5

above = false
tran = 0
function onUpdatePost()

trail = trail + 1
if trail >= 100 then
trail = 0
end
tagn = ('jojo_reference'..trail)


makeLuaSprite(tagn, 'YOU_DIED', getProperty('mf_just_died_lmao.x') - 1010, getProperty('mf_just_died_lmao.y') - 800)
doTweenAlpha('jojAOpp'..tagn, tagn, 0, timething, 'linear')
setObjectCamera(tagn, 'other')


if lucky_gay_color == 1 then

if cologay == 1 then
setProperty(tagn..'.color', getColorFromHex('80FF00'))
doTweenColor('eheu7euewy2', 'mf_just_died_lmao_but_tv', '80FF00', 0.1, 'linear')
elseif cologay == 2 then
setProperty(tagn..'.color', getColorFromHex('FF8000'))
doTweenColor('eheu7euewy2', 'mf_just_died_lmao_but_tv', 'FF8000', 0.1, 'linear')
elseif cologay == 3 then
setProperty(tagn..'.color', getColorFromHex('FF0600'))
doTweenColor('eheu7euewy2', 'mf_just_died_lmao_but_tv', 'FF0600', 0.1, 'linear')
elseif cologay == 4 then
setProperty(tagn..'.color', getColorFromHex('007FFF'))
doTweenColor('eheu7euewy2', 'mf_just_died_lmao_but_tv', '007FFF', 0.1, 'linear')
elseif cologay == 5 then
setProperty(tagn..'.color', getColorFromHex('9200FF'))
doTweenColor('eheu7euewy2', 'mf_just_died_lmao_but_tv', '9200FF', 0.1, 'linear')
elseif cologay == 6 then
setProperty(tagn..'.color', getColorFromHex('FD00FF'))
doTweenColor('eheu7euewy2', 'mf_just_died_lmao_but_tv', 'FD00FF', 0.1, 'linear')
elseif cologay == 7 then
setProperty(tagn..'.color', getColorFromHex('FFE600'))
doTweenColor('eheu7euewy2', 'mf_just_died_lmao_but_tv', 'FFE600', 0.1, 'linear')
elseif cologay == 8 then
setProperty(tagn..'.color', getColorFromHex('00F3FF'))
doTweenColor('eheu7euewy2', 'mf_just_died_lmao_but_tv', '00F3FF', 0.1, 'linear')
elseif cologay == 9 then
setProperty(tagn..'.color', getColorFromHex('FF0061'))
doTweenColor('eheu7euewy2', 'mf_just_died_lmao_but_tv', 'FF0061', 0.1, 'linear')
elseif cologay == 10 then
setProperty(tagn..'.color', getColorFromHex('00FF5E'))
doTweenColor('eheu7euewy2', 'mf_just_died_lmao_but_tv', '00FF5E', 0.1, 'linear')
end
else
setProperty(tagn..'.color', getProperty('mf_just_died_lmao.color'))


end

setBlendMode(tagn, 'add')


setProperty(tagn..'.alpha', tran)
setProperty(tagn..'.offset.x', getRandomInt(MS, S))
setProperty(tagn..'.offset.y', getRandomInt(MS, S))
setProperty(tagn..'.scale.x', 0.2)
setProperty(tagn..'.scale.y', 0.2)
setObjectOrder(tagn, 3)

addLuaSprite(tagn, true)

    for i = 1, 3 do
if I_never_played_DOORS then
setProperty('mf_just_died_lmao.offset.x', getRandomInt(MS, S))
setProperty('mf_just_died_lmao.offset.y', getRandomInt(MS, S))
setProperty('mf_just_died_lmao.angle', getRandomInt(MS, S))

if S >= 0.1 then
MS = MS + 0.03
S = S - 0.03
end
end

updateHitbox('mf_just_died_lmao')

if DVD then
if getProperty('border.y') >= getProperty('mf_just_died_lmao.y') then
setProperty('mf_just_died_lmao.velocity.y', 100)
setProperty('mf_just_died_lmao.velocity.x', getRandomFloat(-100, 100))
elseif getProperty('border2.y') <= getProperty('mf_just_died_lmao.y') then
setProperty('mf_just_died_lmao.velocity.y', -100)
setProperty('mf_just_died_lmao.velocity.x', getRandomFloat(-100, 100))
elseif getProperty('border3.x') >= getProperty('mf_just_died_lmao.x') then
setProperty('mf_just_died_lmao.velocity.x', 100)
setProperty('mf_just_died_lmao.velocity.y', getRandomFloat(-100, 100))
elseif getProperty('border4.x') <= getProperty('mf_just_died_lmao.x') then
setProperty('mf_just_died_lmao.velocity.x', -100)
setProperty('mf_just_died_lmao.velocity.y', getRandomFloat(-100, 100))

end
end



if flashs == falsebutfuckedthen then
setProperty('mf'..i..'.alpha', 1)
setProperty('mf'..i..'.x', math.floor(getRandomFloat(-50, 800)))
setProperty('mf'..i..'.y', math.floor(getRandomFloat(-80, 550)))
setProperty('mf'..i..'.angle', math.floor(getRandomInt(-30, 30)))
setProperty('mf'..i..'.color', getColorFromHex('FF003C'))
setProperty('mf_just_died_lmao_but_tv.color', getColorFromHex('FF0024'))

end
end
end


function onTimerCompleted(tag)
    for i = 1, 3 do
if tag == 'dothething' then
doTweenX('6o6', 'mf_just_died_lmao.scale', 0.7, 0.2, 'circOut')
doTweenY('6o', 'mf_just_died_lmao.scale', 0.7, 0.2, 'circOut')

doTweenX('611', 'mf_just_died_lmao', -250, 0.2, 'circOut')
doTweenY('922', 'mf_just_died_lmao', -250, 0.2, 'circOut')

doTweenAlpha('6060', 'mf_just_died_lmao', 1, 0.2, 'circOut')
I_never_played_DOORS = true
elseif tag == 'dothething2' then
doTweenX('6o6', 'mf_just_died_lmao.scale', 0.2, 1, 'quadInOut')
doTweenY('6o', 'mf_just_died_lmao.scale', 0.2, 1, 'quadInOut')

doTweenX('6o68', 'mf_just_died_lmao_but_tv.scale', 1, 1, 'quadInOut')
doTweenY('6o9', 'mf_just_died_lmao_but_tv.scale', 1, 1, 'quadInOut')

doTweenX('6o6u8', 'mf_just_died_lmao_but_tv', -630, 0.8, 'quadInOut')
doTweenY('6o99', 'mf_just_died_lmao_but_tv', -380, 0.8, 'quadInOut')

doTweenX('611', 'mf_just_died_lmao', 300, 1, 'quadInOut')
doTweenY('922', 'mf_just_died_lmao', 200, 1, 'quadInOut')
flashs = true
elseif tag == 'dothethingdvd' then
DVD = true
tran = 0.5
setProperty('mf_just_died_lmao.velocity.x', -100)
elseif tag == 'dothething3'then

if flashs then
runTimer('dothething3', getRandomFloat(0.3, 3), 0)
runTimer('dothething4', 0.2)

setProperty('ef.alpha', 1)

setProperty('mf'..i..'.alpha', 1)
setProperty('mf'..i..'.x', math.floor(getRandomFloat(-50, 800)))
setProperty('mf'..i..'.y', math.floor(getRandomFloat(-80, 550)))
setProperty('mf'..i..'.angle', math.floor(getRandomInt(-30, 30)))
end

if lucky_gay_color == 1 then
if cologay == 1 then
setProperty('mf'..i..'.color', getColorFromHex('80FF00'))

elseif cologay == 2 then
setProperty('mf'..i..'.color', getColorFromHex('FF8000'))

elseif cologay == 3 then
setProperty('mf'..i..'.color', getColorFromHex('FF0600'))

elseif cologay == 4 then
setProperty('mf'..i..'.color', getColorFromHex('007FFF'))

elseif cologay == 5 then
setProperty('mf'..i..'.color', getColorFromHex('9200FF'))

elseif cologay == 6 then
setProperty('mf'..i..'.color', getColorFromHex('FD00FF'))

elseif cologay == 7 then
setProperty('mf'..i..'.color', getColorFromHex('FFE600'))

elseif cologay == 8 then
setProperty('mf'..i..'.color', getColorFromHex('00F3FF'))

elseif cologay == 9 then
setProperty('mf'..i..'.color', getColorFromHex('FF0061'))

elseif cologay == 10 then
setProperty('mf'..i..'.color', getColorFromHex('00FF5E'))
end
end

elseif tag == 'dothething4'then
setProperty('mf'..i..'.alpha', 0)
setProperty('ef.alpha', 0)
end
end
end

function onGameOverConfirm(retry)
setPropertyFromClass('flixel.FlxG', 'mouse.visible', false);
setProperty('ef.alpha', 1)
setProperty('mf_just_died_lmao_but_tv.color', getColorFromHex('FF0024'))
setProperty('mf_just_died_lmao.color', getColorFromHex('FF003C'))
S = 5
MS = 5
flashs = falsebutfucked
lucky_gay_color = 90273
end


function onTweenCompleted(tag)
for trail = 1,100 do
tagn = ('jojo_reference'..trail)
if tag == 'jojAOpp'..tagn then
removeLuaSprite(tagn, false)

end
end
end