function onCreate()
    --variables
	Dodged = false;
    canDodge = false;
    DodgeTime = 0;
	
    precacheImage('spacebar');
    precacheSound('DODGE');
	precacheSound('Dodged');
end

function onEvent(name, value1, value2)
    if name == "lmao" then
    --Get Dodge time
    DodgeTime = (value1);
	
    --Make Dodge Sprite
	makeAnimatedLuaSprite('spacebar', 'spacebar', 500, 480);
    luaSpriteAddAnimationByPrefix('spacebar', 'spacebar', 'spacebar', 25, true);
	luaSpritePlayAnimation('spacebar', 'spacebar');
	setObjectCamera('spacebar', 'other');
	scaleLuaSprite('spacebar', 1.0, 1.0); 
    addLuaSprite('spacebar', true); 
	
	--Set values so you can dodge
    playSound('LMAO');
	canDodge = true;
	runTimer('Died', DodgeTime);
	
	end
end

function onUpdate()
   if canDodge == true and keyJustPressed('space') then
   
   Dodged = true;
   playSound('Dodged', 0.7);
   characterPlayAnim('boyfriend', 'dodge', true);
   setProperty('boyfriend.specialAnim', true);
   removeLuaSprite('spacebar');
   canDodge = false
   
   end
end

function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'Died' and Dodged == false then
   setProperty('health', 0);
   
   elseif tag == 'Died' and Dodged == true then
   Dodged = false
   
   end
end