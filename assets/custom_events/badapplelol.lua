function onCreatePost()
	makeLuaSprite('whitebg', '', 0, 0)
	setScrollFactor('whitebg', 0, 0)
        scaleObject('whitebg', 1.5, 1.5);
	makeGraphic('whitebg', 3840, 2160, 'ffffff')
	addLuaSprite('whitebg', true)
	setObjectOrder('whitebg', getObjectOrder('boyfriendGroup'))
	setObjectOrder('whitebg', getObjectOrder('dadGroup'))
	setProperty('whitebg.alpha', 0)
	screenCenter('whitebg', 'xy')
end
function onEvent(n, v1, v2)
	if n == 'badapplelol' and string.lower(v1) == 'a' then
		doTweenAlpha('applebadxd69', 'whitebg', 1, v2, 'linear')
		doTweenColor('badapplexd', 'boyfriend', '000000', v2, 'linear')
		doTweenColor('badapplexd1', 'dad', '000000', v2, 'linear')
		doTweenColor('badapplexd2', 'gf', '000000', v2, 'linear')
		doTweenColor('badapplexd6', 'healthBarOV', '000000', v2, 'linear')
		doTweenColor('badapplexd9', 'coolDadBar', '000000', v2, 'linear')
		doTweenColor('badapplexd651', 'coolBfBar', '000000', v2, 'linear')
		doTweenColor('badapplexd100', 'iconP1', '000000', v2, 'linear')
		doTweenColor('badapplexd10', 'iconP2', '000000', v2, 'linear')
	end
	if n == 'badapplelol' and string.lower(v1) == 'b' then
		doTweenAlpha('applebadxd', 'whitebg', 0, v2, 'linear')
		doTweenColor('badapplexd3', 'boyfriend', 'FFFFFF', v2, 'linear')
		doTweenColor('badapplexd4', 'dad', 'FFFFFF', v2, 'linear')
		doTweenColor('badapplexd5', 'gf', 'FFFFFF', v2, 'linear')	
		doTweenColor('badapplexd55468', 'healthBarOV', 'FFFFFF', v2, 'linear')
		doTweenColor('badapplexd6646', 'coolDadBar', getIconColor('dad'), v2, 'linear')
		doTweenColor('badapplexd101', 'iconP1', 'FFFFFF', v2, 'linear')
		doTweenColor('badapplexd11', 'iconP2', 'FFFFFF', v2, 'linear')
	end
end

function getIconColor(chr)
	local chr = chr or "dad"  or "bf"
	return getProperty(chr.."Color")
end

function rgbToHex(array)
	return string.format('%.2x%.2x%.2x', array[1], array[2], array[3])
end