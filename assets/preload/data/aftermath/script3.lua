function onCreatePost() setObjectOrder('Peter1', getObjectOrder('j')+1); setObjectOrder('joe_mt', getObjectOrder('dadGroup')+1); setProperty('joe_mt.alpha', 0); setProperty('Peter1.alpha', 0); setProperty('Q_mt.alpha', 0); setProperty('stewie.alpha', 0) end
function onStepHit()
	if curStep == 378 then setProperty('joe_mt.alpha', 1) 
end
	if curStep == 503 then setProperty('stewie.alpha', 1) 
end
	if curStep == 753 then setProperty('joe_mt.alpha', 0); setProperty('Q_mt.alpha', 1) end
	if curStep == 1191 then setProperty('joe_mt.alpha', 1) 
end
	if curStep == 1785 then setProperty('joe_mt.alpha', 0); setProperty('Q_mt.alpha', 0) 
end
	if curStep == 2035 then setProperty('joe_mt.alpha', 1); setProperty('Q_mt.alpha', 1) setProperty('Peter1.alpha', 1);
end
end
