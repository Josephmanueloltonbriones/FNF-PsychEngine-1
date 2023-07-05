RN = '?'
startshit = false

function goodNoteHit(id, direction, noteType, isSustainNote)
startshit = true
end

function noteMissPress(direction)
startshit = true
end

function noteMiss(id, direction, noteType, isSustainNote)
startshit = true
end
dont_loop_the_timer_you_bitch = true
function onUpdatePost()

if startshit then
if rating <= 0.1 then
RN = 'shut up meg'
elseif rating > 0.1 and rating < 0.2 then
RN = 'what the deuce'
elseif rating > 0.2 and rating < 0.3 then
RN = 'Bird'
elseif rating > 0.3 and rating < 0.4 then
RN = 'Mommy’s going to kill'
elseif rating > 0.4 and rating < 0.5 then
RN = 'Damn the broccoli!'
elseif rating > 0.5 and rating < 0.6 then
RN = 'shut up suds'
elseif rating > 0.6 and rating < 0.69 then
RN = 'you’re better than Jesus'
elseif rating >= 0.69 and rating < 0.7 then
RN = 'holy fuck im cumming'
elseif rating > 0.7 and rating < 0.8 then
RN = 'It says ‘oooooo'
elseif rating > 0.8 and rating < 0.9 then
RN = 'I’m a bigger scumbag'
elseif rating > 0.9 and rating < 1 then
RN = 'Lets go drink'
elseif rating <1 then
dont_loop_the_timer_you_bitch = true
cancelTimer('things about to get Messy')

elseif rating >= 1 then

if dont_loop_the_timer_you_bitch then
runTimer('things about to get Messy', 30)
dont_loop_the_timer_you_bitch = false
else
RN = 'giggity'
end
end
end
if botPlay then
        setProperty('scoreTxt.text', 'fuck you you fucking pussy ass bitch, get a life you dumb ass you fat fuck, your like Peter Griffin but 10 times retarded, did you know that the sky is blue, oh shit, i forgot you are retarded, sorry')
else
        setProperty('scoreTxt.text', '(score:'..score..') (skill issues:'..misses..') (ratings:'..RN..'  %'..math.floor(rating * 100, 2)..') (other than FC you suck:'..ratingFC..')')
end
end


function onTimerCompleted(t)
if t == 'things about to get Messy' then
RN = 'Set in Albuquerque, New Mexico, between 2008 and 2010, Breaking Bad follows Walter White, a modest high school chemistry teacher who transforms into a ruthless kingpin in the local methamphetamine drug trade, driven to financially provide for his family after being diagnosed with inoperable lung cancer'--a little trolling doesn't hurt
end
end

