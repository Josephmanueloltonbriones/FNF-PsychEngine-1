local angleshit = 1;
local anglevar = 1;
local intensity = 0
local intensity2 = 3
local enabled = false
function onBeatHit()
	if enabled then
		if curBeat % 2 == 0 then
			angleshit = anglevar;
		else
			angleshit = -anglevar;
		end
		setProperty('camHUD.angle', angleshit * intensity2 * 1.25)
		setProperty('camGame.angle', angleshit * intensity2)
		doTweenAngle('turn', 'camHUD', 0, crochet / 1000, 'backOut')
		doTweenAngle('tt', 'camGame', 0, crochet / 1000, 'backOut')
	end
end

function onEvent(n, v, b)
	if n == 'Kaboom' then
		enabled = true
		intensity = tonumber(v)
		intensity2 = tonumber(b)
		if tonumber(b) == 0 then
			enabled = false

			doTweenAngle('gg', 'camHUD', 0, crochet / (1000 / 4), 'sineInOut')
			doTweenAngle('gg2', 'camGame', 0, crochet / (1000 / 4), 'sineInOut')
		end
	end
end
