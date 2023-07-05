

--i name it like that just to troll some mfs lmao
function onCreate()
precacheSound('punch')
  setProperty('debugKeysChart', false);-- no 7
makeAnimatedLuaSprite('boo7', 'Minipopup', 400, 50)
addAnimationByPrefix('boo7', 'BOO', 'Minipopup', 14, false)
setObjectCamera('boo7', 'other')
scaleObject('boo7', 1, 1)
setProperty('boo7.visible', false)
addLuaSprite('boo7', true)
end

local die_cheater = true

function onSongStart()
if botPlay and die_cheater == true then

runTimer('die_cheaterdelay', 2)
end
end


function onUpdatePost()
if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SEVEN') and die_cheater == true then
objectPlayAnimation('boo7', 'BOO')
setProperty('boo7.visible', true)
runTimer('die_cheater', 0.7)
die_cheater = false
playSound('punch')

end
end

function onTimerCompleted(tag)
if tag == 'die_cheater' then
setProperty('health', 0)
elseif tag == 'die_cheaterdelay' then
objectPlayAnimation('boo7', 'BOO')
setProperty('boo7.visible', true)
runTimer('die_cheater', 0.7)
die_cheater = false
playSound('punch')
end
end