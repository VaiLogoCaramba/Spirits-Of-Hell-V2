function onCreatePost()
	setProperty('healthBar.alpha', 0.0001); --hiding some hud stuff, healthBarBG copies healthBar's alpha so i dont need to set it

	makeLuaSprite('coolBfBar', 'healthBarBf', 600, (downscroll and 49 or 600)); --making the healthbar, which is two images that overlap each other
	setObjectCamera('coolBfBar', 'hud');
	setProperty('coolBfBar.x', 400);
	scaleObject("coolBfBar", 1.0, 1.0)
	addLuaSprite('coolBfBar');

	makeLuaSprite('coolDadBar', 'healthBarDad', 600, (downscroll and 49 or 600));
	setObjectCamera('coolDadBar', 'hud');
	setProperty('coolDadBar.x', 400);
	scaleObject("coolDadBar", 1.0, 1.0)
	addLuaSprite('coolDadBar');

	makeLuaSprite('healthBarOV', 'healthBarOV', 600, (downscroll and 49 or 600));
	setObjectCamera('healthBarOV', 'hud');
	setProperty('healthBarOV.x', 400);
	scaleObject("healthBarOV", 1.0, 1.0)
	addLuaSprite('healthBarOV');
	
	setProperty('coolDadBar.color', getIconColor('dad'));
		setProperty('coolBfBar.color', getIconColor('bf'));

	if getPropertyFromClass('ClientPrefs', 'downScroll') then
		setProperty('iconP1.y', 0);
		setProperty('iconP2.y', 0);
		setProperty('iconP1.x', 975);
	else
		setProperty('iconP1.x', 975);
		setProperty('iconP1.y', 585);
		setProperty('iconP2.x', 385);
		setProperty('iconP2.y', 580);

   	end
end

curFrame = 0;
curHealth = 0;
iconAnim = 'default';
function onUpdatePost(e)
	

	curFrame = curFrame + e*24;
	if curFrame > 9 then
		curFrame = 0;
	end

	curHealth = getProperty('health');
	setProperty('coolDadBar._frame.frame.width', -215 + (math.lerp(1100, 0, curHealth/2))); --masking parts of the opponent healthbar based on some offset + health
	
	end


function math.lerp(a, b, t)
	return a + t * (b - a);
end
function onEvent(name, value1, value2)
	if string.lower(name) == "change character" then
		setProperty('coolDadBar.color', getIconColor('dad'))
		setProperty('coolBfBar.color', getIconColor('bf'))
	end
end

function getIconColor(chr)
	local chr = chr or "dad"  or "bf"
	return getProperty(chr.."Color")
end