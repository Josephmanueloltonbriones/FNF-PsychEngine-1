--by latter
function onCreatePost()

if songName == 'A-Family-Guy' then
makeLuaSprite('the_thing', 'songtags/afamilyguy', -500, 250)
makeLuaSprite('the_thingicon', 'credits/hayseed', getProperty('the_thing.x') + 283, getProperty('the_thing.y') + 10)
scaleObject('the_thingicon', 0.65, 0.65)

elseif songName == 'Rooten-Family' then
makeLuaSprite('the_thing', 'songtags/rootenfamily', -500, 250)
makeLuaSprite('the_thingicon', 'credits/hayseed', getProperty('the_thing.x') + 283, getProperty('the_thing.y') + 10)
scaleObject('the_thingicon', 0.65, 0.65)

elseif songName == 'Final-Fight' then
makeLuaSprite('the_thing', 'songtags/finalfight', -500, 250)
makeLuaSprite('the_thingicon', 'credits/messy', getProperty('the_thing.x') + 283, getProperty('the_thing.y'))
scaleObject('the_thingicon', 0.6, 0.6)

elseif songName == 'Death-Lives' then
makeLuaSprite('the_thing', 'songtags/deathlives', -500, 250)
makeLuaSprite('the_thingicon', 'credits/hayseed', getProperty('the_thing.x') + 283, getProperty('the_thing.y') + 10)
scaleObject('the_thingicon', 0.65, 0.65)

elseif songName == 'fashioned-values' then
makeLuaSprite('the_thing', 'songtags/fashionedvalues', -730, 250)
makeLuaSprite('the_thingicon', 'credits/hayseed', getProperty('the_thing.x') + 283, getProperty('the_thing.y') + 10)
scaleObject('the_thingicon', 0.65, 0.65)

elseif songName == 'Twinkle' then
makeLuaSprite('the_thing', 'songtags/twinkle', -730, 250)
makeLuaSprite('the_thingicon', 'credits/hayseed', getProperty('the_thing.x') + 283, getProperty('the_thing.y') + 10)
scaleObject('the_thingicon', 0.65, 0.65)

elseif songName == 'Airborne' then
makeLuaSprite('the_thing', 'songtags/airborne', -500, 250)
makeLuaSprite('the_thingicon', 'credits/hayseed', getProperty('the_thing.x') + 283, getProperty('the_thing.y') + 10)
scaleObject('the_thingicon', 0.65, 0.65)
end

setObjectCamera('the_thing', 'other')
setObjectCamera('the_thingicon', 'other')
scaleObject('the_thing', 1.5, 1.5)
addLuaSprite('the_thing', true)
addLuaSprite('the_thingicon', true)
end

function onSongStart()
doTweenX('move the THING', 'the_thing', 300, 0.7, 'quadInOut')
doTweenX('move the THINGicon', 'the_thingicon', 583, 0.7, 'quadInOut')-- i should've used function onUpdate() setProperty('the_thingicon.x', getProperty('the_thing')) but whatever
end


function onTweenCompleted(tag)
if tag == 'move the THING' then
doTweenX('move the THING2', 'the_thing', 400, 2, 'linear')
doTweenX('move the THINGicon2', 'the_thingicon', 683, 2, 'linear')
elseif tag == 'move the THING2' then
doTweenX('move the THING3', 'the_thing', 1300, 0.4, 'quadInOut')
doTweenX('move the THINGicon3', 'the_thingicon', 1583, 0.4, 'quadInOut')
elseif tag == 'move the THING3' then
removeLuaSprite('the_thing', true)
removeLuaSprite('the_thingicon', true)
end
end